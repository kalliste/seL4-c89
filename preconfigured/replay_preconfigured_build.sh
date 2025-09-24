#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "$0")/.." && pwd)"
BUILD_DIR="$ROOT_DIR/preconfigured/X64_verified"
export CC=/usr/bin/gcc
COMMON_GCC_ARGS=(
  "-I$ROOT_DIR/preconfigured/include"
  "-I$ROOT_DIR/preconfigured/include/64"
  "-I$ROOT_DIR/preconfigured/include/arch/x86"
  "-I$ROOT_DIR/preconfigured/include/arch/x86/arch/64"
  "-I$ROOT_DIR/preconfigured/include/plat/pc99"
  "-I$ROOT_DIR/preconfigured/include/plat/pc99/plat/64"
  "-I$ROOT_DIR/preconfigured/libsel4/include"
  "-I$ROOT_DIR/preconfigured/libsel4/arch_include/x86"
  "-I$ROOT_DIR/preconfigured/libsel4/sel4_arch_include/x86_64"
  "-I$ROOT_DIR/preconfigured/libsel4/sel4_plat_include/pc99"
  "-I$ROOT_DIR/preconfigured/libsel4/mode_include/64"
  "-I$ROOT_DIR/preconfigured/X64_verified/gen_config"
  "-I$ROOT_DIR/preconfigured/X64_verified/autoconf"
  "-I$ROOT_DIR/preconfigured/X64_verified/gen_headers"
)
export COMMON_GCC_ARGS
KERNEL_SOURCES=(
  "src/api/faults.c"
  "src/api/syscall.c"
  "src/arch/x86/64/c_traps.c"
  "src/arch/x86/64/kernel/elf.c"
  "src/arch/x86/64/kernel/thread.c"
  "src/arch/x86/64/kernel/vspace.c"
  "src/arch/x86/64/machine/registerset.c"
  "src/arch/x86/64/model/smp.c"
  "src/arch/x86/64/model/statedata.c"
  "src/arch/x86/64/object/objecttype.c"
  "src/arch/x86/64/smp/ipi.c"
  "src/arch/x86/api/faults.c"
  "src/arch/x86/c_traps.c"
  "src/arch/x86/idle.c"
  "src/arch/x86/kernel/apic.c"
  "src/arch/x86/kernel/boot.c"
  "src/arch/x86/kernel/boot_sys.c"
  "src/arch/x86/kernel/cmdline.c"
  "src/arch/x86/kernel/smp_sys.c"
  "src/arch/x86/kernel/thread.c"
  "src/arch/x86/kernel/vspace.c"
  "src/arch/x86/kernel/x2apic.c"
  "src/arch/x86/kernel/xapic.c"
  "src/arch/x86/machine/breakpoint.c"
  "src/arch/x86/machine/cpu_identification.c"
  "src/arch/x86/machine/fpu.c"
  "src/arch/x86/machine/hardware.c"
  "src/arch/x86/machine/registerset.c"
  "src/arch/x86/model/statedata.c"
  "src/arch/x86/object/interrupt.c"
  "src/arch/x86/object/ioport.c"
  "src/arch/x86/object/iospace.c"
  "src/arch/x86/object/objecttype.c"
  "src/arch/x86/object/tcb.c"
  "src/arch/x86/object/vcpu.c"
  "src/arch/x86/smp/ipi.c"
  "src/assert.c"
  "src/benchmark/benchmark.c"
  "src/benchmark/benchmark_track.c"
  "src/benchmark/benchmark_utilisation.c"
  "src/fastpath/fastpath.c"
  "src/inlines.c"
  "src/kernel/boot.c"
  "src/kernel/cspace.c"
  "src/kernel/faulthandler.c"
  "src/kernel/stack.c"
  "src/kernel/thread.c"
  "src/machine/fpu.c"
  "src/machine/io.c"
  "src/machine/registerset.c"
  "src/model/preemption.c"
  "src/model/smp.c"
  "src/model/statedata.c"
  "src/object/cnode.c"
  "src/object/endpoint.c"
  "src/object/interrupt.c"
  "src/object/notification.c"
  "src/object/objecttype.c"
  "src/object/tcb.c"
  "src/object/untyped.c"
  "src/plat/pc99/machine/acpi.c"
  "src/plat/pc99/machine/hardware.c"
  "src/plat/pc99/machine/io.c"
  "src/plat/pc99/machine/ioapic.c"
  "src/plat/pc99/machine/pic.c"
  "src/plat/pc99/machine/pit.c"
  "src/smp/ipi.c"
  "src/smp/lock.c"
  "src/string.c"
  "src/util.c"
  "src/config/default_domain.c"
)
# Add common compiler flags
# CFLAGS="-D__KERNEL_64__ -march=nehalem -O3 -DNDEBUG -std=c99 -Wall -Werror -Wstrict-prototypes -Wmissing-prototypes -Wnested-externs -Wmissing-declarations -Wundef -Wpointer-arith -Wno-nonnull -nostdinc -ffreestanding -fno-stack-protector -fno-asynchronous-unwind-tables -fno-common -O2 -nostdlib -fno-pic -fno-pie -mcmodel=kernel -mno-mmx -mno-sse -mno-sse2 -mno-3dnow"
CFLAGS="-D__KERNEL_64__ -march=nehalem -O3 -DNDEBUG -std=c90 -pedantic -Wall -Wextra -Werror -Wstrict-prototypes -Wmissing-prototypes -Wnested-externs -Wmissing-declarations -Wundef -Wpointer-arith -Wno-nonnull -nostdinc -ffreestanding -fno-stack-protector -fno-asynchronous-unwind-tables -fno-common -O2 -nostdlib -fno-pic -fno-pie -mcmodel=kernel -mno-mmx -mno-sse -mno-sse2 -mno-3dnow"
export CFLAGS
# Pre-create directories referenced by commands
DIRS=(
  CMakeFiles/kernel.elf.dir
  CMakeFiles/kernel.elf.dir/src/arch/x86
  CMakeFiles/kernel.elf.dir/src/arch/x86/64
  CMakeFiles/kernel_all_pp_prune_wrapper_temp_lib.dir
  CMakeFiles/kernel_bf_gen_target_111_pbf_temp_lib.dir
  CMakeFiles/kernel_bf_gen_target_11_pbf_temp_lib.dir
  CMakeFiles/kernel_bf_gen_target_1_pbf_temp_lib.dir
  CMakeFiles/kernel_i_wrapper_temp_lib.dir
  CMakeFiles/linker_ld_wrapper_temp_lib.dir
  arch_include/x86/sel4/arch
  gen_config/kernel
  gen_headers/api
  gen_headers/arch/api
  generated
  generated/arch/object
  generated/plat_mode/machine
  generated/sel4
  generated_prune/arch/object
  generated_prune/plat_mode/machine
  generated_prune/sel4
  include/interfaces
  include/sel4
  libsel4
  libsel4/CMakeFiles/libsel4_sel4_arch_types_gen_pbf_temp_lib.dir
  libsel4/CMakeFiles/libsel4_shared_types_gen_pbf_temp_lib.dir
  libsel4/include/sel4
  libsel4/sel4_arch_include/x86_64/sel4/sel4_arch
  sel4_arch_include/x86_64/sel4/sel4_arch
)

mkdir -p "$BUILD_DIR"
for d in "${DIRS[@]}"; do
    mkdir -p "$BUILD_DIR/$d"
done


cd "$BUILD_DIR"
touch \
    generated_prune/plat_mode/machine/hardware_gen.h \
    generated_prune/arch/object/structures_gen.h \
    generated_prune/sel4/shared_types_gen.h
$CC --sysroot="$ROOT_DIR"/preconfigured/X64_verified  "${COMMON_GCC_ARGS[@]}" -I"$ROOT_DIR"/preconfigured/X64_verified/libsel4/autoconf -I"$ROOT_DIR"/preconfigured/X64_verified/libsel4/gen_config -m64 $CFLAGS -E -P -MD -MT libsel4/CMakeFiles/libsel4_shared_types_gen_pbf_temp_lib.dir/libsel4_shared_types_gen_pbf_temp.c.obj -MF libsel4/CMakeFiles/libsel4_shared_types_gen_pbf_temp_lib.dir/libsel4_shared_types_gen_pbf_temp.c.obj.d -o libsel4/CMakeFiles/libsel4_shared_types_gen_pbf_temp_lib.dir/libsel4_shared_types_gen_pbf_temp.c.obj -c "$ROOT_DIR"/preconfigured/X64_verified/libsel4/libsel4_shared_types_gen_pbf_temp.c
# The wrapper sources and kernel_all_copy.c are committed, so just echo the recorded
# output from the original Python helper for transparency.
cat "$ROOT_DIR"/preconfigured/tools/generate_kernel_wrappers_output.txt

WRAPPER_OBJECTS=()
for source in "${KERNEL_SOURCES[@]}"; do
    echo "COMPILE ${source}"
    wrapper="${source%.c}_wrapper.c"
    obj="CMakeFiles/kernel.elf.dir/${wrapper}.obj"
    dep="${obj}.d"
    mkdir -p "$(dirname "$obj")"
    $CC --sysroot="$ROOT_DIR"/preconfigured/X64_verified  "${COMMON_GCC_ARGS[@]}" -I"$ROOT_DIR"/preconfigured/X64_verified/generated -m64 $CFLAGS -MD -MT "$obj" -MF "$dep" -o "$obj" -c "$ROOT_DIR"/preconfigured/X64_verified/"$wrapper"
    WRAPPER_OBJECTS+=("$obj")
done

# printf '%s\n' "${WRAPPER_OBJECTS[@]}" > kernel_wrapper_objects.list
$CC --sysroot="$ROOT_DIR"/preconfigured/X64_verified  "${COMMON_GCC_ARGS[@]}" -I"$ROOT_DIR"/preconfigured/X64_verified/libsel4/autoconf -I"$ROOT_DIR"/preconfigured/X64_verified/libsel4/gen_config -m64 $CFLAGS -E -P -MD -MT libsel4/CMakeFiles/libsel4_sel4_arch_types_gen_pbf_temp_lib.dir/libsel4_sel4_arch_types_gen_pbf_temp.c.obj -MF libsel4/CMakeFiles/libsel4_sel4_arch_types_gen_pbf_temp_lib.dir/libsel4_sel4_arch_types_gen_pbf_temp.c.obj.d -o libsel4/CMakeFiles/libsel4_sel4_arch_types_gen_pbf_temp_lib.dir/libsel4_sel4_arch_types_gen_pbf_temp.c.obj -c "$ROOT_DIR"/preconfigured/X64_verified/libsel4/libsel4_sel4_arch_types_gen_pbf_temp.c
# Kernel syscall header is checked in; header generation skipped
$CC --sysroot="$ROOT_DIR"/preconfigured/X64_verified  "${COMMON_GCC_ARGS[@]}" -m64 $CFLAGS -E -CC -I"$ROOT_DIR"/preconfigured/X64_verified/generated_prune -MD -MT CMakeFiles/kernel_all_pp_prune_wrapper_temp_lib.dir/kernel_all_pp_prune_wrapper_temp.c.obj -MF CMakeFiles/kernel_all_pp_prune_wrapper_temp_lib.dir/kernel_all_pp_prune_wrapper_temp.c.obj.d -o CMakeFiles/kernel_all_pp_prune_wrapper_temp_lib.dir/kernel_all_pp_prune_wrapper_temp.c.obj -c "$ROOT_DIR"/preconfigured/X64_verified/kernel_all_pp_prune_wrapper_temp.c
$CC --sysroot="$ROOT_DIR"/preconfigured/X64_verified  "${COMMON_GCC_ARGS[@]}" -m64 $CFLAGS -E -P -MD -MT CMakeFiles/kernel_bf_gen_target_1_pbf_temp_lib.dir/kernel_bf_gen_target_1_pbf_temp.c.obj -MF CMakeFiles/kernel_bf_gen_target_1_pbf_temp_lib.dir/kernel_bf_gen_target_1_pbf_temp.c.obj.d -o CMakeFiles/kernel_bf_gen_target_1_pbf_temp_lib.dir/kernel_bf_gen_target_1_pbf_temp.c.obj -c "$ROOT_DIR"/preconfigured/X64_verified/kernel_bf_gen_target_1_pbf_temp.c
# libsel4 syscall header is checked in; header generation skipped
$CC --sysroot="$ROOT_DIR"/preconfigured/X64_verified  "${COMMON_GCC_ARGS[@]}" -m64 $CFLAGS -E -P -MD -MT CMakeFiles/kernel_bf_gen_target_11_pbf_temp_lib.dir/kernel_bf_gen_target_11_pbf_temp.c.obj -MF CMakeFiles/kernel_bf_gen_target_11_pbf_temp_lib.dir/kernel_bf_gen_target_11_pbf_temp.c.obj.d -o CMakeFiles/kernel_bf_gen_target_11_pbf_temp_lib.dir/kernel_bf_gen_target_11_pbf_temp.c.obj -c "$ROOT_DIR"/preconfigured/X64_verified/kernel_bf_gen_target_11_pbf_temp.c
$CC --sysroot="$ROOT_DIR"/preconfigured/X64_verified  "${COMMON_GCC_ARGS[@]}" -m64 $CFLAGS -E -P -MD -MT CMakeFiles/kernel_bf_gen_target_111_pbf_temp_lib.dir/kernel_bf_gen_target_111_pbf_temp.c.obj -MF CMakeFiles/kernel_bf_gen_target_111_pbf_temp_lib.dir/kernel_bf_gen_target_111_pbf_temp.c.obj.d -o CMakeFiles/kernel_bf_gen_target_111_pbf_temp_lib.dir/kernel_bf_gen_target_111_pbf_temp.c.obj -c "$ROOT_DIR"/preconfigured/X64_verified/kernel_bf_gen_target_111_pbf_temp.c
$CC --sysroot="$ROOT_DIR"/preconfigured/X64_verified  "${COMMON_GCC_ARGS[@]}" -m64 $CFLAGS -E -CC -P -I"$ROOT_DIR"/preconfigured/X64_verified/generated -MD -MT CMakeFiles/linker_ld_wrapper_temp_lib.dir/linker_ld_wrapper_temp.c.obj -MF CMakeFiles/linker_ld_wrapper_temp_lib.dir/linker_ld_wrapper_temp.c.obj.d -o CMakeFiles/linker_ld_wrapper_temp_lib.dir/linker_ld_wrapper_temp.c.obj -c "$ROOT_DIR"/preconfigured/X64_verified/linker_ld_wrapper_temp.c
$CC --sysroot="$ROOT_DIR"/preconfigured/X64_verified  "${COMMON_GCC_ARGS[@]}" -m64 $CFLAGS -E -CC -I"$ROOT_DIR"/preconfigured/X64_verified/generated -MD -MT CMakeFiles/kernel_i_wrapper_temp_lib.dir/kernel_all_copy.c.obj -MF CMakeFiles/kernel_i_wrapper_temp_lib.dir/kernel_all_copy.c.obj.d -o CMakeFiles/kernel_i_wrapper_temp_lib.dir/kernel_all_copy.c.obj -c "$ROOT_DIR"/preconfigured/X64_verified/kernel_all_copy.c
cd "$ROOT_DIR"/preconfigured/X64_verified && touch circular_includes_valid
$CC --sysroot="$ROOT_DIR"/preconfigured/X64_verified  "${COMMON_GCC_ARGS[@]}" -I"$ROOT_DIR"/preconfigured/X64_verified/generated -Wa,--64 $CFLAGS -MD -MT CMakeFiles/kernel.elf.dir/src/arch/x86/multiboot.S.obj -MF CMakeFiles/kernel.elf.dir/src/arch/x86/multiboot.S.obj.d -o CMakeFiles/kernel.elf.dir/src/arch/x86/multiboot.S.obj -c "$ROOT_DIR"/preconfigured/src/arch/x86/multiboot.S
$CC --sysroot="$ROOT_DIR"/preconfigured/X64_verified  "${COMMON_GCC_ARGS[@]}" -I"$ROOT_DIR"/preconfigured/X64_verified/generated -Wa,--64 $CFLAGS -MD -MT CMakeFiles/kernel.elf.dir/src/arch/x86/64/traps.S.obj -MF CMakeFiles/kernel.elf.dir/src/arch/x86/64/traps.S.obj.d -o CMakeFiles/kernel.elf.dir/src/arch/x86/64/traps.S.obj -c "$ROOT_DIR"/preconfigured/src/arch/x86/64/traps.S
$CC --sysroot="$ROOT_DIR"/preconfigured/X64_verified  "${COMMON_GCC_ARGS[@]}" -I"$ROOT_DIR"/preconfigured/X64_verified/generated -Wa,--64 $CFLAGS -MD -MT CMakeFiles/kernel.elf.dir/src/arch/x86/64/machine_asm.S.obj -MF CMakeFiles/kernel.elf.dir/src/arch/x86/64/machine_asm.S.obj.d -o CMakeFiles/kernel.elf.dir/src/arch/x86/64/machine_asm.S.obj -c "$ROOT_DIR"/preconfigured/src/arch/x86/64/machine_asm.S
$CC --sysroot="$ROOT_DIR"/preconfigured/X64_verified  "${COMMON_GCC_ARGS[@]}" -I"$ROOT_DIR"/preconfigured/X64_verified/generated -Wa,--64 $CFLAGS -MD -MT CMakeFiles/kernel.elf.dir/src/arch/x86/64/head.S.obj -MF CMakeFiles/kernel.elf.dir/src/arch/x86/64/head.S.obj.d -o CMakeFiles/kernel.elf.dir/src/arch/x86/64/head.S.obj -c "$ROOT_DIR"/preconfigured/src/arch/x86/64/head.S
: && $CC --sysroot="$ROOT_DIR"/preconfigured/X64_verified -m64 $CFLAGS -D__KERNEL_64__ -march=nehalem -O3 -DNDEBUG -D__KERNEL_64__ -march=nehalem  -Wl,-m,elf_x86_64  -static -Wl,--build-id=none -Wl,-n -O2  -nostdlib  -fno-pic  -fno-pie  -mcmodel=kernel     -Wl,-T "$ROOT_DIR"/preconfigured/X64_verified/linker.lds_pp CMakeFiles/kernel.elf.dir/src/arch/x86/multiboot.S.obj CMakeFiles/kernel.elf.dir/src/arch/x86/64/machine_asm.S.obj CMakeFiles/kernel.elf.dir/src/arch/x86/64/traps.S.obj CMakeFiles/kernel.elf.dir/src/arch/x86/64/head.S.obj "${WRAPPER_OBJECTS[@]}" -o kernel.elf   && :
