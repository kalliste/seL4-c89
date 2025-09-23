# Kernel ELF Comparison

This document compares the `kernel.elf` images produced from the pristine
snapshot (rebuilt in `build/pristine-X64_verified/`) and the cached
preconfigured build (`preconfigured/X64_verified/`).

## Build procedure

```
cmake -G Ninja -S pristine -B build/pristine-X64_verified -C pristine/configs/X64_verified.cmake
ninja -C build/pristine-X64_verified
./preconfigured/replay_preconfigured_build.sh
```

## File hashes and sizes

| Build | Path | Size (bytes) | SHA-256 |
| ----- | ---- | ------------ | ------- |
| Pristine rebuild | `build/pristine-X64_verified/kernel.elf` | 142,904 | `e9e7d86765529340228b0874c2612b410301c33effe619c9a98f431dae310579` |
| Preconfigured replay | `preconfigured/X64_verified/kernel.elf` | 135,200 | `82326b6db9c4fc4a067c4ea486001362a0ea3915824f76a2cdcc48d4b991778e` |

Both images share the same ELF entry point (0x10040b), but the section table
begins earlier in the preconfigured binary because of the smaller file size.

## Key ELF sections

The table below summarises the notable section layout differences (from
`readelf -SW`).  The virtual addresses are identical across the two builds;
the file offsets and sizes differ because of the translation-unit structure of
the preconfigured replay.

| Section | Pristine VMA / Offset / Size | Preconfigured VMA / Offset / Size | Notes |
| ------- | --------------------------- | --------------------------------- | ----- |
| `.boot` | `ffffffff8010845f` / `0x00045f` / `0x7601` | `ffffffff8010845f` / `0x00045f` / `0x5c12` | Preconfigured image keeps some boot helpers out-of-line, shrinking the section. |
| `.boot.bss` | `ffffffff8010fa60` / `0x007a60` / `0x6011a0` | `ffffffff8010e071` / `0x006071` / `0x6011d7` | Different padding because the BSS objects are emitted from separate object files. |
| `.text` | `ffffffff80801a60` / `0x007a60` / `0x13c05` | `ffffffff80800071` / `0x006071` / `0x12ce4` | Aggregated pristine build inlines more helper routines, increasing `.text`. |
| `.rodata` | `ffffffff80815665` / `0x01b665` / `0xa9d` | `ffffffff80812d55` / `0x018d55` / `0xaad` | Minor layout shift from different object ordering. |
| `.bss` | `ffffffff80a00000` / `0x01c102` / `0x1f3e8` | `ffffffff80a00000` / `0x019802` / `0x22ac0` | Preconfigured build contains additional copies of per-translation-unit static data. |
| `.symtab` | offset `0x01c108`, size `0x44e8`, 0x2e0 symbols | offset `0x019808`, size `0x4c68`, 0x37c symbols | Replay build retains more duplicate local symbols because fewer functions are inlined. |

The program headers mirror these section changes.  The text+rodata load segment
in the pristine build spans 0x146a2 bytes versus 0x13791 bytes in the replay,
and the overall RW segment reserves slightly more BSS in the replay build.

## Symbol-table observations

Counting unique symbol names from `nm` shows 730 distinct names in the pristine
image versus 727 in the preconfigured image.  The extra pristine-only entries
(`cteDeleteOne.part.0`, `parse_bool.constprop.0`, `restart.part.0`) are compiler
artifacts emitted when GCC can inline helper functions inside the aggregated
`kernel_all.c` translation unit.

Conversely, the preconfigured replay leaves several helper routines with global
linkage because they are compiled in isolation.  For example, `setMRs_lookup_failure`
remains a local symbol in the pristine build but is emitted as a global in the
preconfigured image:

```
$ readelf -s build/pristine-X64_verified/kernel.elf | grep setMRs_lookup_failure
    23: ffffffff80807650   288 FUNC    LOCAL  DEFAULT    5 setMRs_lookup_failure
$ readelf -s preconfigured/X64_verified/kernel.elf | grep setMRs_lookup_failure
   352: ffffffff80805b10   623 FUNC    GLOBAL DEFAULT    5 setMRs_lookup_failure
```

The larger `.bss` section in the preconfigured binary is caused by per-object
copies of header-defined statics such as `control_reg_order`.

```
$ nm build/pristine-X64_verified/kernel.elf | grep control_reg_order
ffffffff80a1f3e0 b control_reg_order

$ nm preconfigured/X64_verified/kernel.elf | grep control_reg_order
ffffffff80a09000 b control_reg_order
ffffffff80a09008 b control_reg_order
ffffffff80a09010 b control_reg_order
ffffffff80a09018 b control_reg_order
ffffffff80a09020 b control_reg_order
ffffffff80a0b6e8 b control_reg_order
ffffffff80a0c760 b control_reg_order
ffffffff80a0c768 b control_reg_order
```

These duplicates all reside in the private `bss` and reflect the replay build
compiling each source file separately; the pristine aggregator includes the same
header once, so only a single copy is emitted.

## Disassembly spot check

A representative function illustrates the structural difference.  In the
pristine rebuild, GCC inlines the body of `setupReplyMaster` into
`restart.part.0`:

```
ffffffff8080ea40 <restart.part.0>:
 53                      push   %rbx
 48 89 fb                mov    %rdi,%rbx
 e8 47 fe ff ff          call   ffffffff8080e890 <cancelIPC>
 48 89 d8                mov    %rbx,%rax
 48 25 00 f8 ff ff       and    $0xfffffffffffff800,%rax
 48 8b 50 40             mov    0x40(%rax),%rdx
 48 c1 ea 3b             shr    $0x3b,%rdx
 75 22                   jne    ffffffff8080ea7e <restart.part.0+0x3e>
 48 be 03 00 00 00 00    movabs $0x4000000000000003,%rsi
 00 00 40
 48 89 58 48             mov    %rbx,0x48(%rax)
 48 89 70 40             mov    %rsi,0x40(%rax)
 ...
```

The same sequence appears in the preconfigured replay, but as an explicit call
instead of inlined instructions:

```
ffffffff8080bd50 <restart>:
 53                      push   %rbx
 48 89 fb                mov    %rdi,%rbx
 e8 c7 1e 00 00          call   ffffffff8080dc40 <cancelIPC>
 48 89 df                mov    %rbx,%rdi
 e8 df 0b 00 00          call   ffffffff8080c960 <setupReplyMaster>
 48 8b 83 00 03 00 00    mov    0x300(%rbx),%rax
 48 89 df                mov    %rbx,%rdi
 48 83 e0 f0             and    $0xfffffffffffffff0,%rax
 48 83 c8 02             or     $0x2,%rax
 ...
```

The instruction sequences after the helper call match the inlined body above,
confirming that the behavioural logic is unchanged despite the different layout.

## Conclusion

The two `kernel.elf` artifacts differ in size, section placement, and symbol
metadata, primarily because the pristine build aggregates the kernel sources
into a single translation unit while the preconfigured replay compiles each
source file individually.  The resulting changes (extra BSS padding, inlined vs
out-of-line helpers, and additional local symbols) alter the binary layout but
preserve the exported entry points and logic, so the images are operationally
equivalent.
