# 0 "/workspace/seL4-c89/preconfigured/X64_verified/kernel_all_copy.c"
# 0 "<built-in>"
# 0 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 0 "<command-line>" 2
# 1 "/workspace/seL4-c89/preconfigured/X64_verified/kernel_all_copy.c"
# 1 "/workspace/seL4-c89/preconfigured/src/api/faults.c"






# 1 "/workspace/seL4-c89/preconfigured/include/config.h" 1






       

# 1 "/workspace/seL4-c89/preconfigured/libsel4/include/sel4/config.h" 1






       



# 1 "/workspace/seL4-c89/preconfigured/X64_verified/autoconf/autoconf.h" 1

       

# 1 "/workspace/seL4-c89/preconfigured/X64_verified/gen_config/kernel/gen_config.h" 1
       
# 5 "/workspace/seL4-c89/preconfigured/X64_verified/autoconf/autoconf.h" 2
# 12 "/workspace/seL4-c89/preconfigured/libsel4/include/sel4/config.h" 2
# 10 "/workspace/seL4-c89/preconfigured/include/config.h" 2
# 8 "/workspace/seL4-c89/preconfigured/src/api/faults.c" 2
# 1 "/workspace/seL4-c89/preconfigured/include/types.h" 1






       

# 1 "/workspace/seL4-c89/preconfigured/include/basic_types.h" 1






       

# 1 "/workspace/seL4-c89/preconfigured/include/stdint.h" 1






       

# 1 "/workspace/seL4-c89/preconfigured/include/64/mode/stdint.h" 1






       
# 10 "/workspace/seL4-c89/preconfigured/include/stdint.h" 2

typedef unsigned char uint8_t;
typedef unsigned short uint16_t;
typedef unsigned int uint32_t;
typedef unsigned long long uint64_t;

typedef signed char int8_t;
typedef signed short int16_t;
typedef signed int int32_t;
typedef signed long long int64_t;






typedef uint64_t uintmax_t;
typedef int64_t intmax_t;
# 10 "/workspace/seL4-c89/preconfigured/include/basic_types.h" 2
# 1 "/workspace/seL4-c89/preconfigured/include/arch/x86/arch/types.h" 1






       


# 1 "/workspace/seL4-c89/preconfigured/include/arch/x86/arch/64/mode/types.h" 1






       

# 1 "/workspace/seL4-c89/preconfigured/include/assert.h" 1






       


# 1 "/workspace/seL4-c89/preconfigured/include/util.h" 1






       
# 94 "/workspace/seL4-c89/preconfigured/include/util.h"
void __builtin_unreachable(void);
# 115 "/workspace/seL4-c89/preconfigured/include/util.h"
static inline int wrap_config_set(int x)
{
    return x;
}
# 138 "/workspace/seL4-c89/preconfigured/include/util.h"
void halt(void) __attribute__((__noreturn__));
void memzero(void *s, unsigned long n);
void *memset(void *s, unsigned long c, unsigned long n) __attribute__((externally_visible));
void *memcpy(void *ptr_dst, const void *ptr_src, unsigned long n) __attribute__((externally_visible));
int __attribute__((__pure__)) strncmp(const char *s1, const char *s2, int n);
long __attribute__((__const__)) char_to_long(char c);
long __attribute__((__pure__)) str_to_long(const char *str);
# 168 "/workspace/seL4-c89/preconfigured/include/util.h"
__attribute__((__const__)) int __clzsi2(uint32_t x);
__attribute__((__const__)) int __clzdi2(uint64_t x);
__attribute__((__const__)) int __ctzsi2(uint32_t x);
__attribute__((__const__)) int __ctzdi2(uint64_t x);
# 195 "/workspace/seL4-c89/preconfigured/include/util.h"
static inline long
__attribute__((__const__)) clzl(unsigned long x)
{







    return __builtin_clzl(x);

}
# 220 "/workspace/seL4-c89/preconfigured/include/util.h"
static inline long long
__attribute__((__const__)) clzll(unsigned long long x)
{



    return __builtin_clzll(x);

}
# 242 "/workspace/seL4-c89/preconfigured/include/util.h"
static inline long
__attribute__((__const__)) ctzl(unsigned long x)
{
# 267 "/workspace/seL4-c89/preconfigured/include/util.h"
    return __builtin_ctzl(x);

}
# 282 "/workspace/seL4-c89/preconfigured/include/util.h"
static inline long long
__attribute__((__const__)) ctzll(unsigned long long x)
{
# 297 "/workspace/seL4-c89/preconfigured/include/util.h"
    return __builtin_ctzll(x);

}

int __builtin_popcountl(unsigned long x);


static inline long
__attribute__((__const__)) popcountl(unsigned long mask)
{

    unsigned int count;
    for (count = 0; mask; count++) {
        mask &= mask - 1;
    }

    return count;



}
# 11 "/workspace/seL4-c89/preconfigured/include/assert.h" 2
# 10 "/workspace/seL4-c89/preconfigured/include/arch/x86/arch/64/mode/types.h" 2

typedef int __assert_failed_long_is_64bits[(sizeof(unsigned long) == 8) ? 1 : -1] __attribute__((unused));
# 11 "/workspace/seL4-c89/preconfigured/include/arch/x86/arch/types.h" 2


typedef unsigned long word_t;
typedef signed long sword_t;



typedef word_t vptr_t;
typedef word_t paddr_t;
typedef word_t pptr_t;
typedef word_t cptr_t;
typedef word_t dev_id_t;
typedef word_t cpu_id_t;
typedef uint32_t logical_id_t;
typedef word_t node_id_t;
typedef word_t dom_t;

typedef uint64_t timestamp_t;
# 11 "/workspace/seL4-c89/preconfigured/include/basic_types.h" 2
# 43 "/workspace/seL4-c89/preconfigured/include/basic_types.h"
enum _bool {
    false = 0,
    true = 1
};
typedef word_t bool_t;
# 56 "/workspace/seL4-c89/preconfigured/include/basic_types.h"
typedef struct region {
    pptr_t start;
    pptr_t end;
} region_t;


typedef struct p_region {
    paddr_t start;
    paddr_t end;
} p_region_t;


typedef struct v_region {
    vptr_t start;
    vptr_t end;
} v_region_t;






typedef word_t __attribute__((__may_alias__)) word_t_may_alias;


typedef uint8_t seL4_Uint8;
typedef uint16_t seL4_Uint16;
typedef uint32_t seL4_Uint32;
typedef word_t seL4_Word;
typedef cptr_t seL4_CPtr;
typedef node_id_t seL4_NodeId;
typedef paddr_t seL4_PAddr;
typedef dom_t seL4_Domain;
# 10 "/workspace/seL4-c89/preconfigured/include/types.h" 2
# 1 "/workspace/seL4-c89/preconfigured/include/compound_types.h" 1






       


# 1 "/workspace/seL4-c89/preconfigured/include/api/types.h" 1






       




# 1 "/workspace/seL4-c89/preconfigured/libsel4/include/sel4/shared_types_gen.h" 1


       


# 1 "/workspace/seL4-c89/preconfigured/libsel4/include/sel4/simple_types.h" 1






       

# 1 "/workspace/seL4-c89/preconfigured/libsel4/include/sel4/macros.h" 1






       
# 10 "/workspace/seL4-c89/preconfigured/libsel4/include/sel4/simple_types.h" 2
# 27 "/workspace/seL4-c89/preconfigured/libsel4/include/sel4/simple_types.h"
# 1 "/workspace/seL4-c89/preconfigured/libsel4/arch_include/x86/sel4/arch/simple_types.h" 1






       

# 1 "/workspace/seL4-c89/preconfigured/libsel4/sel4_arch_include/x86_64/sel4/sel4_arch/simple_types.h" 1






       
# 10 "/workspace/seL4-c89/preconfigured/libsel4/arch_include/x86/sel4/arch/simple_types.h" 2
# 28 "/workspace/seL4-c89/preconfigured/libsel4/include/sel4/simple_types.h" 2
# 37 "/workspace/seL4-c89/preconfigured/libsel4/include/sel4/simple_types.h"
typedef signed char seL4_Int8;
typedef unsigned char seL4_Uint8;

_Static_assert(sizeof(seL4_Int8) == 1, "sizeof_seL4_Int8_is_1_byte");
_Static_assert(sizeof(seL4_Uint8) == 1, "sizeof_seL4_Uint8_is_1_byte");







typedef signed short int seL4_Int16;
typedef unsigned short int seL4_Uint16;

_Static_assert(sizeof(seL4_Int16) == 2, "sizeof_seL4_Int16_is_2_byte");
_Static_assert(sizeof(seL4_Uint16) == 2, "sizeof_seL4_Uint16_is_2_byte");






typedef signed int seL4_Int32;
typedef unsigned int seL4_Uint32;

_Static_assert(sizeof(seL4_Int32) == 4, "sizeof_seL4_Int32_is_4_byte");
_Static_assert(sizeof(seL4_Uint32) == 4, "sizeof_seL4_Uint32_is_4_byte");
# 83 "/workspace/seL4-c89/preconfigured/libsel4/include/sel4/simple_types.h"
typedef signed long int seL4_Int64;
typedef unsigned long int seL4_Uint64;
# 102 "/workspace/seL4-c89/preconfigured/libsel4/include/sel4/simple_types.h"
typedef seL4_Int8 seL4_Bool;
# 116 "/workspace/seL4-c89/preconfigured/libsel4/include/sel4/simple_types.h"
typedef seL4_Uint64 seL4_Word;
# 128 "/workspace/seL4-c89/preconfigured/libsel4/include/sel4/simple_types.h"
typedef seL4_Word seL4_CPtr;


# 1 "/workspace/seL4-c89/preconfigured/libsel4/sel4_arch_include/x86_64/sel4/sel4_arch/constants.h" 1






       
# 69 "/workspace/seL4-c89/preconfigured/libsel4/sel4_arch_include/x86_64/sel4/sel4_arch/constants.h"
_Static_assert((3) + (9) == 12, "seL4_PageTableEntryBits_seL4_PageTableIndexBits_seL4_PageTableBits");;
_Static_assert((3) + (9) == 12, "seL4_PageDirEntryBits_seL4_PageDirIndexBits_seL4_PageDirBits");;
_Static_assert((3) + (9) == 12, "seL4_PDPTEntryBits_seL4_PDPTIndexBits_seL4_PDPTBits");;
_Static_assert((3) + (9) == 12, "seL4_PML4EntryBits_seL4_PML4IndexBits_seL4_PML4Bits");;
_Static_assert((3) + (9) == 12, "seL4_WordSizeBits_seL4_ASIDPoolIndexBits_seL4_ASIDPoolBits");;

typedef enum {
    seL4_VMFault_IP,
    seL4_VMFault_Addr,
    seL4_VMFault_PrefetchFault,
    seL4_VMFault_FSR,
    seL4_VMFault_Length,
    _enum_pad_seL4_VMFault_Msg = ((1ULL << ((sizeof(long)*8) - 1)) - 1),
} seL4_VMFault_Msg;

typedef enum {
    seL4_UnknownSyscall_RAX,
    seL4_UnknownSyscall_RBX,
    seL4_UnknownSyscall_RCX,
    seL4_UnknownSyscall_RDX,
    seL4_UnknownSyscall_RSI,
    seL4_UnknownSyscall_RDI,
    seL4_UnknownSyscall_RBP,
    seL4_UnknownSyscall_R8,
    seL4_UnknownSyscall_R9,
    seL4_UnknownSyscall_R10,
    seL4_UnknownSyscall_R11,
    seL4_UnknownSyscall_R12,
    seL4_UnknownSyscall_R13,
    seL4_UnknownSyscall_R14,
    seL4_UnknownSyscall_R15,
    seL4_UnknownSyscall_FaultIP,
    seL4_UnknownSyscall_SP,
    seL4_UnknownSyscall_FLAGS,
    seL4_UnknownSyscall_Syscall,
    seL4_UnknownSyscall_Length,
    _enum_pad_seL4_UnknownSyscall_Msg = ((1ULL << ((sizeof(long)*8) - 1)) - 1)
} seL4_UnknownSyscall_Msg;

typedef enum {
    seL4_UserException_FaultIP,
    seL4_UserException_SP,
    seL4_UserException_FLAGS,
    seL4_UserException_Number,
    seL4_UserException_Code,
    seL4_UserException_Length,
    _enum_pad_seL4_UserException_Msg = ((1ULL << ((sizeof(long)*8) - 1)) - 1)
} seL4_UserException_Msg;
# 132 "/workspace/seL4-c89/preconfigured/libsel4/include/sel4/simple_types.h" 2

_Static_assert(sizeof(seL4_Word) == (1u << 3), "seL4_WordSizeBits_matches");



_Static_assert(8 * sizeof(seL4_Word) == 64, "seL4_WordBits_matches");
# 7 "/workspace/seL4-c89/preconfigured/libsel4/include/sel4/shared_types_gen.h" 2
# 1 "/workspace/seL4-c89/preconfigured/libsel4/include/sel4/debug_assert.h" 1
# 13 "/workspace/seL4-c89/preconfigured/libsel4/include/sel4/debug_assert.h"
       
# 22 "/workspace/seL4-c89/preconfigured/libsel4/include/sel4/debug_assert.h"
# 1 "/workspace/seL4-c89/preconfigured/libsel4/include/sel4/assert.h" 1
# 15 "/workspace/seL4-c89/preconfigured/libsel4/include/sel4/assert.h"
       






void __assert_fail(const char *str, const char *file, int line, const char *function);
# 23 "/workspace/seL4-c89/preconfigured/libsel4/include/sel4/debug_assert.h" 2
# 8 "/workspace/seL4-c89/preconfigured/libsel4/include/sel4/shared_types_gen.h" 2
struct seL4_CNode_CapData {
    seL4_Uint64 words[1];
};
typedef struct seL4_CNode_CapData seL4_CNode_CapData_t;

static inline seL4_CNode_CapData_t __attribute__((__const__))
seL4_CNode_CapData_new(seL4_Uint64 guard, seL4_Uint64 guardSize) {
    seL4_CNode_CapData_t seL4_CNode_CapData;


    do { if (!((guard & ~0x3ffffffffffffffull) == ((0 && (guard & (1ull << 63))) ? 0x0 : 0))) { __assert_fail("(guard & ~0x3ffffffffffffffull) == ((0 && (guard & (1ull << 63))) ? 0x0 : 0)", "/workspace/seL4-c89/preconfigured/libsel4/include/sel4/shared_types_gen.h", 18, __func__); } } while(0);
    do { if (!((guardSize & ~0x3full) == ((0 && (guardSize & (1ull << 63))) ? 0x0 : 0))) { __assert_fail("(guardSize & ~0x3full) == ((0 && (guardSize & (1ull << 63))) ? 0x0 : 0)", "/workspace/seL4-c89/preconfigured/libsel4/include/sel4/shared_types_gen.h", 19, __func__); } } while(0);

    seL4_CNode_CapData.words[0] = 0
        | (guard & 0x3ffffffffffffffull) << 6
        | (guardSize & 0x3full) << 0;

    return seL4_CNode_CapData;
}

static inline void
seL4_CNode_CapData_ptr_new(seL4_CNode_CapData_t *seL4_CNode_CapData_ptr, seL4_Uint64 guard, seL4_Uint64 guardSize) {

    do { if (!((guard & ~0x3ffffffffffffffull) == ((0 && (guard & (1ull << 63))) ? 0x0 : 0))) { __assert_fail("(guard & ~0x3ffffffffffffffull) == ((0 && (guard & (1ull << 63))) ? 0x0 : 0)", "/workspace/seL4-c89/preconfigured/libsel4/include/sel4/shared_types_gen.h", 31, __func__); } } while(0);
    do { if (!((guardSize & ~0x3full) == ((0 && (guardSize & (1ull << 63))) ? 0x0 : 0))) { __assert_fail("(guardSize & ~0x3full) == ((0 && (guardSize & (1ull << 63))) ? 0x0 : 0)", "/workspace/seL4-c89/preconfigured/libsel4/include/sel4/shared_types_gen.h", 32, __func__); } } while(0);

    seL4_CNode_CapData_ptr->words[0] = 0
        | (guard & 0x3ffffffffffffffull) << 6
        | (guardSize & 0x3full) << 0;
}

static inline seL4_Uint64 __attribute__((__const__))
seL4_CNode_CapData_get_guard(seL4_CNode_CapData_t seL4_CNode_CapData) {
    seL4_Uint64 ret;
    ret = (seL4_CNode_CapData.words[0] & 0xffffffffffffffc0ull) >> 6;

    if (__builtin_expect(!!(0 && (ret & (1ull << (63)))), 0)) {
        ret |= 0x0;
    }
    return ret;
}

static inline seL4_CNode_CapData_t __attribute__((__const__))
seL4_CNode_CapData_set_guard(seL4_CNode_CapData_t seL4_CNode_CapData, seL4_Uint64 v64) {

    do { if (!((((~0xffffffffffffffc0ull >> 6 ) | 0x0) & v64) == ((0 && (v64 & (1ull << (63)))) ? 0x0 : 0))) { __assert_fail("(((~0xffffffffffffffc0ull >> 6 ) | 0x0) & v64) == ((0 && (v64 & (1ull << (63)))) ? 0x0 : 0)", "/workspace/seL4-c89/preconfigured/libsel4/include/sel4/shared_types_gen.h", 53, __func__); } } while(0);
    seL4_CNode_CapData.words[0] &= ~0xffffffffffffffc0ull;
    seL4_CNode_CapData.words[0] |= (v64 << 6) & 0xffffffffffffffc0ull;
    return seL4_CNode_CapData;
}

static inline seL4_Uint64 __attribute__((__pure__))
seL4_CNode_CapData_ptr_get_guard(seL4_CNode_CapData_t *seL4_CNode_CapData_ptr) {
    seL4_Uint64 ret;
    ret = (seL4_CNode_CapData_ptr->words[0] & 0xffffffffffffffc0ull) >> 6;

    if (__builtin_expect(!!(0 && (ret & (1ull << (63)))), 0)) {
        ret |= 0x0;
    }
    return ret;
}

static inline void
seL4_CNode_CapData_ptr_set_guard(seL4_CNode_CapData_t *seL4_CNode_CapData_ptr, seL4_Uint64 v64) {

    do { if (!((((~0xffffffffffffffc0ull >> 6) | 0x0) & v64) == ((0 && (v64 & (1ull << (63)))) ? 0x0 : 0))) { __assert_fail("(((~0xffffffffffffffc0ull >> 6) | 0x0) & v64) == ((0 && (v64 & (1ull << (63)))) ? 0x0 : 0)", "/workspace/seL4-c89/preconfigured/libsel4/include/sel4/shared_types_gen.h", 73, __func__); } } while(0);
    seL4_CNode_CapData_ptr->words[0] &= ~0xffffffffffffffc0ull;
    seL4_CNode_CapData_ptr->words[0] |= (v64 << 6) & 0xffffffffffffffc0;
}

static inline seL4_Uint64 __attribute__((__const__))
seL4_CNode_CapData_get_guardSize(seL4_CNode_CapData_t seL4_CNode_CapData) {
    seL4_Uint64 ret;
    ret = (seL4_CNode_CapData.words[0] & 0x3full) >> 0;

    if (__builtin_expect(!!(0 && (ret & (1ull << (63)))), 0)) {
        ret |= 0x0;
    }
    return ret;
}

static inline seL4_CNode_CapData_t __attribute__((__const__))
seL4_CNode_CapData_set_guardSize(seL4_CNode_CapData_t seL4_CNode_CapData, seL4_Uint64 v64) {

    do { if (!((((~0x3full >> 0 ) | 0x0) & v64) == ((0 && (v64 & (1ull << (63)))) ? 0x0 : 0))) { __assert_fail("(((~0x3full >> 0 ) | 0x0) & v64) == ((0 && (v64 & (1ull << (63)))) ? 0x0 : 0)", "/workspace/seL4-c89/preconfigured/libsel4/include/sel4/shared_types_gen.h", 92, __func__); } } while(0);
    seL4_CNode_CapData.words[0] &= ~0x3full;
    seL4_CNode_CapData.words[0] |= (v64 << 0) & 0x3full;
    return seL4_CNode_CapData;
}

static inline seL4_Uint64 __attribute__((__pure__))
seL4_CNode_CapData_ptr_get_guardSize(seL4_CNode_CapData_t *seL4_CNode_CapData_ptr) {
    seL4_Uint64 ret;
    ret = (seL4_CNode_CapData_ptr->words[0] & 0x3full) >> 0;

    if (__builtin_expect(!!(0 && (ret & (1ull << (63)))), 0)) {
        ret |= 0x0;
    }
    return ret;
}

static inline void
seL4_CNode_CapData_ptr_set_guardSize(seL4_CNode_CapData_t *seL4_CNode_CapData_ptr, seL4_Uint64 v64) {

    do { if (!((((~0x3full >> 0) | 0x0) & v64) == ((0 && (v64 & (1ull << (63)))) ? 0x0 : 0))) { __assert_fail("(((~0x3full >> 0) | 0x0) & v64) == ((0 && (v64 & (1ull << (63)))) ? 0x0 : 0)", "/workspace/seL4-c89/preconfigured/libsel4/include/sel4/shared_types_gen.h", 112, __func__); } } while(0);
    seL4_CNode_CapData_ptr->words[0] &= ~0x3full;
    seL4_CNode_CapData_ptr->words[0] |= (v64 << 0) & 0x3f;
}

struct seL4_CapRights {
    seL4_Uint64 words[1];
};
typedef struct seL4_CapRights seL4_CapRights_t;

static inline seL4_CapRights_t __attribute__((__const__))
seL4_CapRights_new(seL4_Uint64 capAllowGrantReply, seL4_Uint64 capAllowGrant, seL4_Uint64 capAllowRead, seL4_Uint64 capAllowWrite) {
    seL4_CapRights_t seL4_CapRights;


    do { if (!((capAllowGrantReply & ~0x1ull) == ((0 && (capAllowGrantReply & (1ull << 63))) ? 0x0 : 0))) { __assert_fail("(capAllowGrantReply & ~0x1ull) == ((0 && (capAllowGrantReply & (1ull << 63))) ? 0x0 : 0)", "/workspace/seL4-c89/preconfigured/libsel4/include/sel4/shared_types_gen.h", 127, __func__); } } while(0);
    do { if (!((capAllowGrant & ~0x1ull) == ((0 && (capAllowGrant & (1ull << 63))) ? 0x0 : 0))) { __assert_fail("(capAllowGrant & ~0x1ull) == ((0 && (capAllowGrant & (1ull << 63))) ? 0x0 : 0)", "/workspace/seL4-c89/preconfigured/libsel4/include/sel4/shared_types_gen.h", 128, __func__); } } while(0);
    do { if (!((capAllowRead & ~0x1ull) == ((0 && (capAllowRead & (1ull << 63))) ? 0x0 : 0))) { __assert_fail("(capAllowRead & ~0x1ull) == ((0 && (capAllowRead & (1ull << 63))) ? 0x0 : 0)", "/workspace/seL4-c89/preconfigured/libsel4/include/sel4/shared_types_gen.h", 129, __func__); } } while(0);
    do { if (!((capAllowWrite & ~0x1ull) == ((0 && (capAllowWrite & (1ull << 63))) ? 0x0 : 0))) { __assert_fail("(capAllowWrite & ~0x1ull) == ((0 && (capAllowWrite & (1ull << 63))) ? 0x0 : 0)", "/workspace/seL4-c89/preconfigured/libsel4/include/sel4/shared_types_gen.h", 130, __func__); } } while(0);

    seL4_CapRights.words[0] = 0
        | (capAllowGrantReply & 0x1ull) << 3
        | (capAllowGrant & 0x1ull) << 2
        | (capAllowRead & 0x1ull) << 1
        | (capAllowWrite & 0x1ull) << 0;

    return seL4_CapRights;
}

static inline void
seL4_CapRights_ptr_new(seL4_CapRights_t *seL4_CapRights_ptr, seL4_Uint64 capAllowGrantReply, seL4_Uint64 capAllowGrant, seL4_Uint64 capAllowRead, seL4_Uint64 capAllowWrite) {

    do { if (!((capAllowGrantReply & ~0x1ull) == ((0 && (capAllowGrantReply & (1ull << 63))) ? 0x0 : 0))) { __assert_fail("(capAllowGrantReply & ~0x1ull) == ((0 && (capAllowGrantReply & (1ull << 63))) ? 0x0 : 0)", "/workspace/seL4-c89/preconfigured/libsel4/include/sel4/shared_types_gen.h", 144, __func__); } } while(0);
    do { if (!((capAllowGrant & ~0x1ull) == ((0 && (capAllowGrant & (1ull << 63))) ? 0x0 : 0))) { __assert_fail("(capAllowGrant & ~0x1ull) == ((0 && (capAllowGrant & (1ull << 63))) ? 0x0 : 0)", "/workspace/seL4-c89/preconfigured/libsel4/include/sel4/shared_types_gen.h", 145, __func__); } } while(0);
    do { if (!((capAllowRead & ~0x1ull) == ((0 && (capAllowRead & (1ull << 63))) ? 0x0 : 0))) { __assert_fail("(capAllowRead & ~0x1ull) == ((0 && (capAllowRead & (1ull << 63))) ? 0x0 : 0)", "/workspace/seL4-c89/preconfigured/libsel4/include/sel4/shared_types_gen.h", 146, __func__); } } while(0);
    do { if (!((capAllowWrite & ~0x1ull) == ((0 && (capAllowWrite & (1ull << 63))) ? 0x0 : 0))) { __assert_fail("(capAllowWrite & ~0x1ull) == ((0 && (capAllowWrite & (1ull << 63))) ? 0x0 : 0)", "/workspace/seL4-c89/preconfigured/libsel4/include/sel4/shared_types_gen.h", 147, __func__); } } while(0);

    seL4_CapRights_ptr->words[0] = 0
        | (capAllowGrantReply & 0x1ull) << 3
        | (capAllowGrant & 0x1ull) << 2
        | (capAllowRead & 0x1ull) << 1
        | (capAllowWrite & 0x1ull) << 0;
}

static inline seL4_Uint64 __attribute__((__const__))
seL4_CapRights_get_capAllowGrantReply(seL4_CapRights_t seL4_CapRights) {
    seL4_Uint64 ret;
    ret = (seL4_CapRights.words[0] & 0x8ull) >> 3;

    if (__builtin_expect(!!(0 && (ret & (1ull << (63)))), 0)) {
        ret |= 0x0;
    }
    return ret;
}

static inline seL4_CapRights_t __attribute__((__const__))
seL4_CapRights_set_capAllowGrantReply(seL4_CapRights_t seL4_CapRights, seL4_Uint64 v64) {

    do { if (!((((~0x8ull >> 3 ) | 0x0) & v64) == ((0 && (v64 & (1ull << (63)))) ? 0x0 : 0))) { __assert_fail("(((~0x8ull >> 3 ) | 0x0) & v64) == ((0 && (v64 & (1ull << (63)))) ? 0x0 : 0)", "/workspace/seL4-c89/preconfigured/libsel4/include/sel4/shared_types_gen.h", 170, __func__); } } while(0);
    seL4_CapRights.words[0] &= ~0x8ull;
    seL4_CapRights.words[0] |= (v64 << 3) & 0x8ull;
    return seL4_CapRights;
}

static inline seL4_Uint64 __attribute__((__pure__))
seL4_CapRights_ptr_get_capAllowGrantReply(seL4_CapRights_t *seL4_CapRights_ptr) {
    seL4_Uint64 ret;
    ret = (seL4_CapRights_ptr->words[0] & 0x8ull) >> 3;

    if (__builtin_expect(!!(0 && (ret & (1ull << (63)))), 0)) {
        ret |= 0x0;
    }
    return ret;
}

static inline void
seL4_CapRights_ptr_set_capAllowGrantReply(seL4_CapRights_t *seL4_CapRights_ptr, seL4_Uint64 v64) {

    do { if (!((((~0x8ull >> 3) | 0x0) & v64) == ((0 && (v64 & (1ull << (63)))) ? 0x0 : 0))) { __assert_fail("(((~0x8ull >> 3) | 0x0) & v64) == ((0 && (v64 & (1ull << (63)))) ? 0x0 : 0)", "/workspace/seL4-c89/preconfigured/libsel4/include/sel4/shared_types_gen.h", 190, __func__); } } while(0);
    seL4_CapRights_ptr->words[0] &= ~0x8ull;
    seL4_CapRights_ptr->words[0] |= (v64 << 3) & 0x8;
}

static inline seL4_Uint64 __attribute__((__const__))
seL4_CapRights_get_capAllowGrant(seL4_CapRights_t seL4_CapRights) {
    seL4_Uint64 ret;
    ret = (seL4_CapRights.words[0] & 0x4ull) >> 2;

    if (__builtin_expect(!!(0 && (ret & (1ull << (63)))), 0)) {
        ret |= 0x0;
    }
    return ret;
}

static inline seL4_CapRights_t __attribute__((__const__))
seL4_CapRights_set_capAllowGrant(seL4_CapRights_t seL4_CapRights, seL4_Uint64 v64) {

    do { if (!((((~0x4ull >> 2 ) | 0x0) & v64) == ((0 && (v64 & (1ull << (63)))) ? 0x0 : 0))) { __assert_fail("(((~0x4ull >> 2 ) | 0x0) & v64) == ((0 && (v64 & (1ull << (63)))) ? 0x0 : 0)", "/workspace/seL4-c89/preconfigured/libsel4/include/sel4/shared_types_gen.h", 209, __func__); } } while(0);
    seL4_CapRights.words[0] &= ~0x4ull;
    seL4_CapRights.words[0] |= (v64 << 2) & 0x4ull;
    return seL4_CapRights;
}

static inline seL4_Uint64 __attribute__((__pure__))
seL4_CapRights_ptr_get_capAllowGrant(seL4_CapRights_t *seL4_CapRights_ptr) {
    seL4_Uint64 ret;
    ret = (seL4_CapRights_ptr->words[0] & 0x4ull) >> 2;

    if (__builtin_expect(!!(0 && (ret & (1ull << (63)))), 0)) {
        ret |= 0x0;
    }
    return ret;
}

static inline void
seL4_CapRights_ptr_set_capAllowGrant(seL4_CapRights_t *seL4_CapRights_ptr, seL4_Uint64 v64) {

    do { if (!((((~0x4ull >> 2) | 0x0) & v64) == ((0 && (v64 & (1ull << (63)))) ? 0x0 : 0))) { __assert_fail("(((~0x4ull >> 2) | 0x0) & v64) == ((0 && (v64 & (1ull << (63)))) ? 0x0 : 0)", "/workspace/seL4-c89/preconfigured/libsel4/include/sel4/shared_types_gen.h", 229, __func__); } } while(0);
    seL4_CapRights_ptr->words[0] &= ~0x4ull;
    seL4_CapRights_ptr->words[0] |= (v64 << 2) & 0x4;
}

static inline seL4_Uint64 __attribute__((__const__))
seL4_CapRights_get_capAllowRead(seL4_CapRights_t seL4_CapRights) {
    seL4_Uint64 ret;
    ret = (seL4_CapRights.words[0] & 0x2ull) >> 1;

    if (__builtin_expect(!!(0 && (ret & (1ull << (63)))), 0)) {
        ret |= 0x0;
    }
    return ret;
}

static inline seL4_CapRights_t __attribute__((__const__))
seL4_CapRights_set_capAllowRead(seL4_CapRights_t seL4_CapRights, seL4_Uint64 v64) {

    do { if (!((((~0x2ull >> 1 ) | 0x0) & v64) == ((0 && (v64 & (1ull << (63)))) ? 0x0 : 0))) { __assert_fail("(((~0x2ull >> 1 ) | 0x0) & v64) == ((0 && (v64 & (1ull << (63)))) ? 0x0 : 0)", "/workspace/seL4-c89/preconfigured/libsel4/include/sel4/shared_types_gen.h", 248, __func__); } } while(0);
    seL4_CapRights.words[0] &= ~0x2ull;
    seL4_CapRights.words[0] |= (v64 << 1) & 0x2ull;
    return seL4_CapRights;
}

static inline seL4_Uint64 __attribute__((__pure__))
seL4_CapRights_ptr_get_capAllowRead(seL4_CapRights_t *seL4_CapRights_ptr) {
    seL4_Uint64 ret;
    ret = (seL4_CapRights_ptr->words[0] & 0x2ull) >> 1;

    if (__builtin_expect(!!(0 && (ret & (1ull << (63)))), 0)) {
        ret |= 0x0;
    }
    return ret;
}

static inline void
seL4_CapRights_ptr_set_capAllowRead(seL4_CapRights_t *seL4_CapRights_ptr, seL4_Uint64 v64) {

    do { if (!((((~0x2ull >> 1) | 0x0) & v64) == ((0 && (v64 & (1ull << (63)))) ? 0x0 : 0))) { __assert_fail("(((~0x2ull >> 1) | 0x0) & v64) == ((0 && (v64 & (1ull << (63)))) ? 0x0 : 0)", "/workspace/seL4-c89/preconfigured/libsel4/include/sel4/shared_types_gen.h", 268, __func__); } } while(0);
    seL4_CapRights_ptr->words[0] &= ~0x2ull;
    seL4_CapRights_ptr->words[0] |= (v64 << 1) & 0x2;
}

static inline seL4_Uint64 __attribute__((__const__))
seL4_CapRights_get_capAllowWrite(seL4_CapRights_t seL4_CapRights) {
    seL4_Uint64 ret;
    ret = (seL4_CapRights.words[0] & 0x1ull) >> 0;

    if (__builtin_expect(!!(0 && (ret & (1ull << (63)))), 0)) {
        ret |= 0x0;
    }
    return ret;
}

static inline seL4_CapRights_t __attribute__((__const__))
seL4_CapRights_set_capAllowWrite(seL4_CapRights_t seL4_CapRights, seL4_Uint64 v64) {

    do { if (!((((~0x1ull >> 0 ) | 0x0) & v64) == ((0 && (v64 & (1ull << (63)))) ? 0x0 : 0))) { __assert_fail("(((~0x1ull >> 0 ) | 0x0) & v64) == ((0 && (v64 & (1ull << (63)))) ? 0x0 : 0)", "/workspace/seL4-c89/preconfigured/libsel4/include/sel4/shared_types_gen.h", 287, __func__); } } while(0);
    seL4_CapRights.words[0] &= ~0x1ull;
    seL4_CapRights.words[0] |= (v64 << 0) & 0x1ull;
    return seL4_CapRights;
}

static inline seL4_Uint64 __attribute__((__pure__))
seL4_CapRights_ptr_get_capAllowWrite(seL4_CapRights_t *seL4_CapRights_ptr) {
    seL4_Uint64 ret;
    ret = (seL4_CapRights_ptr->words[0] & 0x1ull) >> 0;

    if (__builtin_expect(!!(0 && (ret & (1ull << (63)))), 0)) {
        ret |= 0x0;
    }
    return ret;
}

static inline void
seL4_CapRights_ptr_set_capAllowWrite(seL4_CapRights_t *seL4_CapRights_ptr, seL4_Uint64 v64) {

    do { if (!((((~0x1ull >> 0) | 0x0) & v64) == ((0 && (v64 & (1ull << (63)))) ? 0x0 : 0))) { __assert_fail("(((~0x1ull >> 0) | 0x0) & v64) == ((0 && (v64 & (1ull << (63)))) ? 0x0 : 0)", "/workspace/seL4-c89/preconfigured/libsel4/include/sel4/shared_types_gen.h", 307, __func__); } } while(0);
    seL4_CapRights_ptr->words[0] &= ~0x1ull;
    seL4_CapRights_ptr->words[0] |= (v64 << 0) & 0x1;
}

struct seL4_MessageInfo {
    seL4_Uint64 words[1];
};
typedef struct seL4_MessageInfo seL4_MessageInfo_t;

static inline seL4_MessageInfo_t __attribute__((__const__))
seL4_MessageInfo_new(seL4_Uint64 label, seL4_Uint64 capsUnwrapped, seL4_Uint64 extraCaps, seL4_Uint64 length) {
    seL4_MessageInfo_t seL4_MessageInfo;


    do { if (!((label & ~0xfffffffffffffull) == ((0 && (label & (1ull << 63))) ? 0x0 : 0))) { __assert_fail("(label & ~0xfffffffffffffull) == ((0 && (label & (1ull << 63))) ? 0x0 : 0)", "/workspace/seL4-c89/preconfigured/libsel4/include/sel4/shared_types_gen.h", 322, __func__); } } while(0);
    do { if (!((capsUnwrapped & ~0x7ull) == ((0 && (capsUnwrapped & (1ull << 63))) ? 0x0 : 0))) { __assert_fail("(capsUnwrapped & ~0x7ull) == ((0 && (capsUnwrapped & (1ull << 63))) ? 0x0 : 0)", "/workspace/seL4-c89/preconfigured/libsel4/include/sel4/shared_types_gen.h", 323, __func__); } } while(0);
    do { if (!((extraCaps & ~0x3ull) == ((0 && (extraCaps & (1ull << 63))) ? 0x0 : 0))) { __assert_fail("(extraCaps & ~0x3ull) == ((0 && (extraCaps & (1ull << 63))) ? 0x0 : 0)", "/workspace/seL4-c89/preconfigured/libsel4/include/sel4/shared_types_gen.h", 324, __func__); } } while(0);
    do { if (!((length & ~0x7full) == ((0 && (length & (1ull << 63))) ? 0x0 : 0))) { __assert_fail("(length & ~0x7full) == ((0 && (length & (1ull << 63))) ? 0x0 : 0)", "/workspace/seL4-c89/preconfigured/libsel4/include/sel4/shared_types_gen.h", 325, __func__); } } while(0);

    seL4_MessageInfo.words[0] = 0
        | (label & 0xfffffffffffffull) << 12
        | (capsUnwrapped & 0x7ull) << 9
        | (extraCaps & 0x3ull) << 7
        | (length & 0x7full) << 0;

    return seL4_MessageInfo;
}

static inline void
seL4_MessageInfo_ptr_new(seL4_MessageInfo_t *seL4_MessageInfo_ptr, seL4_Uint64 label, seL4_Uint64 capsUnwrapped, seL4_Uint64 extraCaps, seL4_Uint64 length) {

    do { if (!((label & ~0xfffffffffffffull) == ((0 && (label & (1ull << 63))) ? 0x0 : 0))) { __assert_fail("(label & ~0xfffffffffffffull) == ((0 && (label & (1ull << 63))) ? 0x0 : 0)", "/workspace/seL4-c89/preconfigured/libsel4/include/sel4/shared_types_gen.h", 339, __func__); } } while(0);
    do { if (!((capsUnwrapped & ~0x7ull) == ((0 && (capsUnwrapped & (1ull << 63))) ? 0x0 : 0))) { __assert_fail("(capsUnwrapped & ~0x7ull) == ((0 && (capsUnwrapped & (1ull << 63))) ? 0x0 : 0)", "/workspace/seL4-c89/preconfigured/libsel4/include/sel4/shared_types_gen.h", 340, __func__); } } while(0);
    do { if (!((extraCaps & ~0x3ull) == ((0 && (extraCaps & (1ull << 63))) ? 0x0 : 0))) { __assert_fail("(extraCaps & ~0x3ull) == ((0 && (extraCaps & (1ull << 63))) ? 0x0 : 0)", "/workspace/seL4-c89/preconfigured/libsel4/include/sel4/shared_types_gen.h", 341, __func__); } } while(0);
    do { if (!((length & ~0x7full) == ((0 && (length & (1ull << 63))) ? 0x0 : 0))) { __assert_fail("(length & ~0x7full) == ((0 && (length & (1ull << 63))) ? 0x0 : 0)", "/workspace/seL4-c89/preconfigured/libsel4/include/sel4/shared_types_gen.h", 342, __func__); } } while(0);

    seL4_MessageInfo_ptr->words[0] = 0
        | (label & 0xfffffffffffffull) << 12
        | (capsUnwrapped & 0x7ull) << 9
        | (extraCaps & 0x3ull) << 7
        | (length & 0x7full) << 0;
}

static inline seL4_Uint64 __attribute__((__const__))
seL4_MessageInfo_get_label(seL4_MessageInfo_t seL4_MessageInfo) {
    seL4_Uint64 ret;
    ret = (seL4_MessageInfo.words[0] & 0xfffffffffffff000ull) >> 12;

    if (__builtin_expect(!!(0 && (ret & (1ull << (63)))), 0)) {
        ret |= 0x0;
    }
    return ret;
}

static inline seL4_MessageInfo_t __attribute__((__const__))
seL4_MessageInfo_set_label(seL4_MessageInfo_t seL4_MessageInfo, seL4_Uint64 v64) {

    do { if (!((((~0xfffffffffffff000ull >> 12 ) | 0x0) & v64) == ((0 && (v64 & (1ull << (63)))) ? 0x0 : 0))) { __assert_fail("(((~0xfffffffffffff000ull >> 12 ) | 0x0) & v64) == ((0 && (v64 & (1ull << (63)))) ? 0x0 : 0)", "/workspace/seL4-c89/preconfigured/libsel4/include/sel4/shared_types_gen.h", 365, __func__); } } while(0);
    seL4_MessageInfo.words[0] &= ~0xfffffffffffff000ull;
    seL4_MessageInfo.words[0] |= (v64 << 12) & 0xfffffffffffff000ull;
    return seL4_MessageInfo;
}

static inline seL4_Uint64 __attribute__((__pure__))
seL4_MessageInfo_ptr_get_label(seL4_MessageInfo_t *seL4_MessageInfo_ptr) {
    seL4_Uint64 ret;
    ret = (seL4_MessageInfo_ptr->words[0] & 0xfffffffffffff000ull) >> 12;

    if (__builtin_expect(!!(0 && (ret & (1ull << (63)))), 0)) {
        ret |= 0x0;
    }
    return ret;
}

static inline void
seL4_MessageInfo_ptr_set_label(seL4_MessageInfo_t *seL4_MessageInfo_ptr, seL4_Uint64 v64) {

    do { if (!((((~0xfffffffffffff000ull >> 12) | 0x0) & v64) == ((0 && (v64 & (1ull << (63)))) ? 0x0 : 0))) { __assert_fail("(((~0xfffffffffffff000ull >> 12) | 0x0) & v64) == ((0 && (v64 & (1ull << (63)))) ? 0x0 : 0)", "/workspace/seL4-c89/preconfigured/libsel4/include/sel4/shared_types_gen.h", 385, __func__); } } while(0);
    seL4_MessageInfo_ptr->words[0] &= ~0xfffffffffffff000ull;
    seL4_MessageInfo_ptr->words[0] |= (v64 << 12) & 0xfffffffffffff000;
}

static inline seL4_Uint64 __attribute__((__const__))
seL4_MessageInfo_get_capsUnwrapped(seL4_MessageInfo_t seL4_MessageInfo) {
    seL4_Uint64 ret;
    ret = (seL4_MessageInfo.words[0] & 0xe00ull) >> 9;

    if (__builtin_expect(!!(0 && (ret & (1ull << (63)))), 0)) {
        ret |= 0x0;
    }
    return ret;
}

static inline seL4_MessageInfo_t __attribute__((__const__))
seL4_MessageInfo_set_capsUnwrapped(seL4_MessageInfo_t seL4_MessageInfo, seL4_Uint64 v64) {

    do { if (!((((~0xe00ull >> 9 ) | 0x0) & v64) == ((0 && (v64 & (1ull << (63)))) ? 0x0 : 0))) { __assert_fail("(((~0xe00ull >> 9 ) | 0x0) & v64) == ((0 && (v64 & (1ull << (63)))) ? 0x0 : 0)", "/workspace/seL4-c89/preconfigured/libsel4/include/sel4/shared_types_gen.h", 404, __func__); } } while(0);
    seL4_MessageInfo.words[0] &= ~0xe00ull;
    seL4_MessageInfo.words[0] |= (v64 << 9) & 0xe00ull;
    return seL4_MessageInfo;
}

static inline seL4_Uint64 __attribute__((__pure__))
seL4_MessageInfo_ptr_get_capsUnwrapped(seL4_MessageInfo_t *seL4_MessageInfo_ptr) {
    seL4_Uint64 ret;
    ret = (seL4_MessageInfo_ptr->words[0] & 0xe00ull) >> 9;

    if (__builtin_expect(!!(0 && (ret & (1ull << (63)))), 0)) {
        ret |= 0x0;
    }
    return ret;
}

static inline void
seL4_MessageInfo_ptr_set_capsUnwrapped(seL4_MessageInfo_t *seL4_MessageInfo_ptr, seL4_Uint64 v64) {

    do { if (!((((~0xe00ull >> 9) | 0x0) & v64) == ((0 && (v64 & (1ull << (63)))) ? 0x0 : 0))) { __assert_fail("(((~0xe00ull >> 9) | 0x0) & v64) == ((0 && (v64 & (1ull << (63)))) ? 0x0 : 0)", "/workspace/seL4-c89/preconfigured/libsel4/include/sel4/shared_types_gen.h", 424, __func__); } } while(0);
    seL4_MessageInfo_ptr->words[0] &= ~0xe00ull;
    seL4_MessageInfo_ptr->words[0] |= (v64 << 9) & 0xe00;
}

static inline seL4_Uint64 __attribute__((__const__))
seL4_MessageInfo_get_extraCaps(seL4_MessageInfo_t seL4_MessageInfo) {
    seL4_Uint64 ret;
    ret = (seL4_MessageInfo.words[0] & 0x180ull) >> 7;

    if (__builtin_expect(!!(0 && (ret & (1ull << (63)))), 0)) {
        ret |= 0x0;
    }
    return ret;
}

static inline seL4_MessageInfo_t __attribute__((__const__))
seL4_MessageInfo_set_extraCaps(seL4_MessageInfo_t seL4_MessageInfo, seL4_Uint64 v64) {

    do { if (!((((~0x180ull >> 7 ) | 0x0) & v64) == ((0 && (v64 & (1ull << (63)))) ? 0x0 : 0))) { __assert_fail("(((~0x180ull >> 7 ) | 0x0) & v64) == ((0 && (v64 & (1ull << (63)))) ? 0x0 : 0)", "/workspace/seL4-c89/preconfigured/libsel4/include/sel4/shared_types_gen.h", 443, __func__); } } while(0);
    seL4_MessageInfo.words[0] &= ~0x180ull;
    seL4_MessageInfo.words[0] |= (v64 << 7) & 0x180ull;
    return seL4_MessageInfo;
}

static inline seL4_Uint64 __attribute__((__pure__))
seL4_MessageInfo_ptr_get_extraCaps(seL4_MessageInfo_t *seL4_MessageInfo_ptr) {
    seL4_Uint64 ret;
    ret = (seL4_MessageInfo_ptr->words[0] & 0x180ull) >> 7;

    if (__builtin_expect(!!(0 && (ret & (1ull << (63)))), 0)) {
        ret |= 0x0;
    }
    return ret;
}

static inline void
seL4_MessageInfo_ptr_set_extraCaps(seL4_MessageInfo_t *seL4_MessageInfo_ptr, seL4_Uint64 v64) {

    do { if (!((((~0x180ull >> 7) | 0x0) & v64) == ((0 && (v64 & (1ull << (63)))) ? 0x0 : 0))) { __assert_fail("(((~0x180ull >> 7) | 0x0) & v64) == ((0 && (v64 & (1ull << (63)))) ? 0x0 : 0)", "/workspace/seL4-c89/preconfigured/libsel4/include/sel4/shared_types_gen.h", 463, __func__); } } while(0);
    seL4_MessageInfo_ptr->words[0] &= ~0x180ull;
    seL4_MessageInfo_ptr->words[0] |= (v64 << 7) & 0x180;
}

static inline seL4_Uint64 __attribute__((__const__))
seL4_MessageInfo_get_length(seL4_MessageInfo_t seL4_MessageInfo) {
    seL4_Uint64 ret;
    ret = (seL4_MessageInfo.words[0] & 0x7full) >> 0;

    if (__builtin_expect(!!(0 && (ret & (1ull << (63)))), 0)) {
        ret |= 0x0;
    }
    return ret;
}

static inline seL4_MessageInfo_t __attribute__((__const__))
seL4_MessageInfo_set_length(seL4_MessageInfo_t seL4_MessageInfo, seL4_Uint64 v64) {

    do { if (!((((~0x7full >> 0 ) | 0x0) & v64) == ((0 && (v64 & (1ull << (63)))) ? 0x0 : 0))) { __assert_fail("(((~0x7full >> 0 ) | 0x0) & v64) == ((0 && (v64 & (1ull << (63)))) ? 0x0 : 0)", "/workspace/seL4-c89/preconfigured/libsel4/include/sel4/shared_types_gen.h", 482, __func__); } } while(0);
    seL4_MessageInfo.words[0] &= ~0x7full;
    seL4_MessageInfo.words[0] |= (v64 << 0) & 0x7full;
    return seL4_MessageInfo;
}

static inline seL4_Uint64 __attribute__((__pure__))
seL4_MessageInfo_ptr_get_length(seL4_MessageInfo_t *seL4_MessageInfo_ptr) {
    seL4_Uint64 ret;
    ret = (seL4_MessageInfo_ptr->words[0] & 0x7full) >> 0;

    if (__builtin_expect(!!(0 && (ret & (1ull << (63)))), 0)) {
        ret |= 0x0;
    }
    return ret;
}

static inline void
seL4_MessageInfo_ptr_set_length(seL4_MessageInfo_t *seL4_MessageInfo_ptr, seL4_Uint64 v64) {

    do { if (!((((~0x7full >> 0) | 0x0) & v64) == ((0 && (v64 & (1ull << (63)))) ? 0x0 : 0))) { __assert_fail("(((~0x7full >> 0) | 0x0) & v64) == ((0 && (v64 & (1ull << (63)))) ? 0x0 : 0)", "/workspace/seL4-c89/preconfigured/libsel4/include/sel4/shared_types_gen.h", 502, __func__); } } while(0);
    seL4_MessageInfo_ptr->words[0] &= ~0x7full;
    seL4_MessageInfo_ptr->words[0] |= (v64 << 0) & 0x7f;
}
# 13 "/workspace/seL4-c89/preconfigured/include/api/types.h" 2
# 1 "/workspace/seL4-c89/preconfigured/include/arch/x86/arch/api/types.h" 1






       

# 1 "/workspace/seL4-c89/preconfigured/libsel4/include/sel4/objecttype.h" 1






       
typedef enum api_object {
    seL4_UntypedObject,
    seL4_TCBObject,
    seL4_EndpointObject,
    seL4_NotificationObject,
    seL4_CapTableObject,




    seL4_NonArchObjectTypeCount,
} seL4_ObjectType;

__attribute__((deprecated("use seL4_NotificationObject"))) static const seL4_ObjectType seL4_AsyncEndpointObject =
    seL4_NotificationObject;

typedef seL4_Word api_object_t;
# 10 "/workspace/seL4-c89/preconfigured/include/arch/x86/arch/api/types.h" 2
# 1 "/workspace/seL4-c89/preconfigured/libsel4/sel4_arch_include/x86_64/sel4/sel4_arch/objecttype.h" 1






       



typedef enum _mode_object {
    seL4_X86_PDPTObject = seL4_NonArchObjectTypeCount,
    seL4_X64_PML4Object,

    seL4_X64_HugePageObject,

    seL4_ModeObjectTypeCount
} seL4_seL4ArchObjectType;
# 11 "/workspace/seL4-c89/preconfigured/include/arch/x86/arch/api/types.h" 2
# 1 "/workspace/seL4-c89/preconfigured/libsel4/arch_include/x86/sel4/arch/objecttype.h" 1






       



typedef enum _object {
    seL4_X86_4K = seL4_ModeObjectTypeCount,
    seL4_X86_LargePageObject,
    seL4_X86_PageTableObject,
    seL4_X86_PageDirectoryObject,
# 26 "/workspace/seL4-c89/preconfigured/libsel4/arch_include/x86/sel4/arch/objecttype.h"
    seL4_ObjectTypeCount
} seL4_ArchObjectType;
typedef seL4_Word object_t;
# 12 "/workspace/seL4-c89/preconfigured/include/arch/x86/arch/api/types.h" 2

enum asidConstants {
    asidInvalid = 0
};

typedef word_t asid_t;
# 14 "/workspace/seL4-c89/preconfigured/include/api/types.h" 2


# 1 "/workspace/seL4-c89/preconfigured/libsel4/include/sel4/constants.h" 1






       
# 44 "/workspace/seL4-c89/preconfigured/libsel4/include/sel4/constants.h"
enum priorityConstants {
    seL4_InvalidPrio = -1,
    seL4_MinPrio = 0,
    seL4_MaxPrio = 256 - 1
};



enum seL4_MsgLimits {
    seL4_MsgLengthBits = 7,
    seL4_MsgExtraCapBits = 2,
    seL4_MsgMaxLength = 120
};






typedef enum {
    seL4_NoFailure = 0,
    seL4_InvalidRoot,
    seL4_MissingCapability,
    seL4_DepthMismatch,
    seL4_GuardMismatch,
    _enum_pad_seL4_LookupFailureType = ((1ULL << ((sizeof(long)*8) - 1)) - 1),
} seL4_LookupFailureType;


typedef enum {
    seL4_TCBFlag_NoFlag = 0x0,
    seL4_TCBFlag_fpuDisabled = 0x1,

    _enum_pad_seL4_TCBFlag = ((1ULL << ((sizeof(long)*8) - 1)) - 1),
    seL4_TCBFlag_MASK = seL4_TCBFlag_NoFlag

                        | seL4_TCBFlag_fpuDisabled

} seL4_TCBFlag;
# 17 "/workspace/seL4-c89/preconfigured/include/api/types.h" 2
# 1 "/workspace/seL4-c89/preconfigured/libsel4/include/sel4/shared_types.h" 1






       



typedef struct seL4_IPCBuffer_ {
    seL4_MessageInfo_t tag;
    seL4_Word msg[seL4_MsgMaxLength];
    seL4_Word userData;
    seL4_Word caps_or_badges[((1ul<<(seL4_MsgExtraCapBits))-1)];
    seL4_CPtr receiveCNode;
    seL4_CPtr receiveIndex;
    seL4_Word receiveDepth;
} seL4_IPCBuffer __attribute__((__aligned__(sizeof(struct seL4_IPCBuffer_))));

typedef enum {
    seL4_CapFault_IP,
    seL4_CapFault_Addr,
    seL4_CapFault_InRecvPhase,
    seL4_CapFault_LookupFailureType,
    seL4_CapFault_BitsLeft,
    seL4_CapFault_DepthMismatch_BitsFound,
    seL4_CapFault_GuardMismatch_GuardFound = seL4_CapFault_DepthMismatch_BitsFound,
    seL4_CapFault_GuardMismatch_BitsFound,
    _enum_pad_seL4_CapFault_Msg = ((1ULL << ((sizeof(long)*8) - 1)) - 1),
} seL4_CapFault_Msg;
# 18 "/workspace/seL4-c89/preconfigured/include/api/types.h" 2
# 1 "/workspace/seL4-c89/preconfigured/include/machine/io.h" 1






       
# 19 "/workspace/seL4-c89/preconfigured/include/api/types.h" 2



typedef word_t prio_t;





typedef uint64_t ticks_t;
typedef uint64_t time_t;

enum domainConstants {
    minDom = 0,
    maxDom = 16 - 1,



    numDomains = 16
};

struct cap_transfer {
    cptr_t ctReceiveRoot;
    cptr_t ctReceiveIndex;
    word_t ctReceiveDepth;
};
typedef struct cap_transfer cap_transfer_t;

enum ctLimits {
    capTransferDataSize = 3
};

static inline seL4_CapRights_t __attribute__((__const__)) rightsFromWord(word_t w)
{
    seL4_CapRights_t seL4_CapRights;

    seL4_CapRights.words[0] = w;
    return seL4_CapRights;
}

static inline word_t __attribute__((__const__)) wordFromRights(seL4_CapRights_t seL4_CapRights)
{
    return seL4_CapRights.words[0] & ((1ul << (4)) - 1ul);
}

static inline cap_transfer_t __attribute__((__pure__)) capTransferFromWords(word_t *wptr)
{
    cap_transfer_t transfer;

    transfer.ctReceiveRoot = (cptr_t)wptr[0];
    transfer.ctReceiveIndex = (cptr_t)wptr[1];
    transfer.ctReceiveDepth = wptr[2];
    return transfer;
}

static inline seL4_MessageInfo_t __attribute__((__const__)) messageInfoFromWord_raw(word_t w)
{
    seL4_MessageInfo_t mi;

    mi.words[0] = w;
    return mi;
}

static inline seL4_MessageInfo_t __attribute__((__const__)) messageInfoFromWord(word_t w)
{
    seL4_MessageInfo_t mi;
    word_t len;

    mi.words[0] = w;

    len = seL4_MessageInfo_get_length(mi);
    if (len > seL4_MsgMaxLength) {
        mi = seL4_MessageInfo_set_length(mi, seL4_MsgMaxLength);
    }

    return mi;
}

static inline word_t __attribute__((__const__)) wordFromMessageInfo(seL4_MessageInfo_t mi)
{
    return mi.words[0];
}
# 11 "/workspace/seL4-c89/preconfigured/include/compound_types.h" 2
# 1 "/workspace/seL4-c89/preconfigured/include/object/structures.h" 1






       




# 1 "/workspace/seL4-c89/preconfigured/X64_verified/generated/arch/object/structures_gen.h" 1


       





struct apic_base_msr {
    uint32_t words[1];
};
typedef struct apic_base_msr apic_base_msr_t;

static inline uint32_t __attribute__((__const__))
apic_base_msr_get_base_addr(apic_base_msr_t apic_base_msr) {
    uint32_t ret;
    ret = (apic_base_msr.words[0] & 0xfffff000u) << 0;

    if (__builtin_expect(!!(0 && (ret & (1u << (31)))), 0)) {
        ret |= 0x0;
    }
    return ret;
}

static inline uint32_t __attribute__((__const__))
apic_base_msr_get_enabled(apic_base_msr_t apic_base_msr) {
    uint32_t ret;
    ret = (apic_base_msr.words[0] & 0x800u) >> 11;

    if (__builtin_expect(!!(0 && (ret & (1u << (31)))), 0)) {
        ret |= 0x0;
    }
    return ret;
}

static inline uint32_t __attribute__((__const__))
apic_base_msr_get_x2apic(apic_base_msr_t apic_base_msr) {
    uint32_t ret;
    ret = (apic_base_msr.words[0] & 0x400u) >> 10;

    if (__builtin_expect(!!(0 && (ret & (1u << (31)))), 0)) {
        ret |= 0x0;
    }
    return ret;
}

struct apic_icr1 {
    uint32_t words[1];
};
typedef struct apic_icr1 apic_icr1_t;

static inline apic_icr1_t __attribute__((__const__))
apic_icr1_new(uint32_t dest_shorthand, uint32_t trigger_mode, uint32_t level, uint32_t delivery_status, uint32_t dest_mode, uint32_t delivery_mode, uint32_t vector) {
    apic_icr1_t apic_icr1;


    ;
    ;
    ;
    ;
    ;
    ;
    ;

    apic_icr1.words[0] = 0
        | (dest_shorthand & 0x3u) << 18
        | (trigger_mode & 0x1u) << 15
        | (level & 0x1u) << 14
        | (delivery_status & 0x1u) << 12
        | (dest_mode & 0x1u) << 11
        | (delivery_mode & 0x7u) << 8
        | (vector & 0xffu) << 0;

    return apic_icr1;
}

static inline uint32_t __attribute__((__const__))
apic_icr1_get_delivery_status(apic_icr1_t apic_icr1) {
    uint32_t ret;
    ret = (apic_icr1.words[0] & 0x1000u) >> 12;

    if (__builtin_expect(!!(0 && (ret & (1u << (31)))), 0)) {
        ret |= 0x0;
    }
    return ret;
}

struct apic_icr2 {
    uint32_t words[1];
};
typedef struct apic_icr2 apic_icr2_t;

static inline apic_icr2_t __attribute__((__const__))
apic_icr2_new(uint32_t dest) {
    apic_icr2_t apic_icr2;


    ;

    apic_icr2.words[0] = 0
        | (dest & 0xffu) << 24;

    return apic_icr2;
}

struct apic_lvt {
    uint32_t words[1];
};
typedef struct apic_lvt apic_lvt_t;

static inline apic_lvt_t __attribute__((__const__))
apic_lvt_new(uint32_t timer_mode, uint32_t masked, uint32_t trigger_mode, uint32_t remote_irr, uint32_t pin_polarity, uint32_t delivery_status, uint32_t delivery_mode, uint32_t vector) {
    apic_lvt_t apic_lvt;


    ;
    ;
    ;
    ;
    ;
    ;
    ;
    ;

    apic_lvt.words[0] = 0
        | (timer_mode & 0x3u) << 17
        | (masked & 0x1u) << 16
        | (trigger_mode & 0x1u) << 15
        | (remote_irr & 0x1u) << 14
        | (pin_polarity & 0x1u) << 13
        | (delivery_status & 0x1u) << 12
        | (delivery_mode & 0x7u) << 8
        | (vector & 0xffu) << 0;

    return apic_lvt;
}

struct apic_svr {
    uint32_t words[1];
};
typedef struct apic_svr apic_svr_t;

static inline apic_svr_t __attribute__((__const__))
apic_svr_new(uint32_t focus_processor_chk, uint32_t enabled, uint32_t spurious_vector) {
    apic_svr_t apic_svr;


    ;
    ;
    ;

    apic_svr.words[0] = 0
        | (focus_processor_chk & 0x1u) << 9
        | (enabled & 0x1u) << 8
        | (spurious_vector & 0xffu) << 0;

    return apic_svr;
}

struct apic_version {
    uint32_t words[1];
};
typedef struct apic_version apic_version_t;

static inline uint32_t __attribute__((__const__))
apic_version_get_max_lvt_entry(apic_version_t apic_version) {
    uint32_t ret;
    ret = (apic_version.words[0] & 0xff0000u) >> 16;

    if (__builtin_expect(!!(0 && (ret & (1u << (31)))), 0)) {
        ret |= 0x0;
    }
    return ret;
}

static inline uint32_t __attribute__((__const__))
apic_version_get_version(apic_version_t apic_version) {
    uint32_t ret;
    ret = (apic_version.words[0] & 0xffu) >> 0;

    if (__builtin_expect(!!(0 && (ret & (1u << (31)))), 0)) {
        ret |= 0x0;
    }
    return ret;
}

struct cpuid_001h_eax {
    uint32_t words[1];
};
typedef struct cpuid_001h_eax cpuid_001h_eax_t;

static inline uint32_t __attribute__((__const__))
cpuid_001h_eax_get_extended_family(cpuid_001h_eax_t cpuid_001h_eax) {
    uint32_t ret;
    ret = (cpuid_001h_eax.words[0] & 0xff00000u) >> 20;

    if (__builtin_expect(!!(0 && (ret & (1u << (31)))), 0)) {
        ret |= 0x0;
    }
    return ret;
}

static inline uint32_t __attribute__((__const__))
cpuid_001h_eax_get_extended_model(cpuid_001h_eax_t cpuid_001h_eax) {
    uint32_t ret;
    ret = (cpuid_001h_eax.words[0] & 0xf0000u) >> 16;

    if (__builtin_expect(!!(0 && (ret & (1u << (31)))), 0)) {
        ret |= 0x0;
    }
    return ret;
}

static inline uint32_t __attribute__((__const__))
cpuid_001h_eax_get_family(cpuid_001h_eax_t cpuid_001h_eax) {
    uint32_t ret;
    ret = (cpuid_001h_eax.words[0] & 0xf00u) >> 8;

    if (__builtin_expect(!!(0 && (ret & (1u << (31)))), 0)) {
        ret |= 0x0;
    }
    return ret;
}

static inline uint32_t __attribute__((__const__))
cpuid_001h_eax_get_model(cpuid_001h_eax_t cpuid_001h_eax) {
    uint32_t ret;
    ret = (cpuid_001h_eax.words[0] & 0xf0u) >> 4;

    if (__builtin_expect(!!(0 && (ret & (1u << (31)))), 0)) {
        ret |= 0x0;
    }
    return ret;
}

static inline uint32_t __attribute__((__const__))
cpuid_001h_eax_get_stepping(cpuid_001h_eax_t cpuid_001h_eax) {
    uint32_t ret;
    ret = (cpuid_001h_eax.words[0] & 0xfu) >> 0;

    if (__builtin_expect(!!(0 && (ret & (1u << (31)))), 0)) {
        ret |= 0x0;
    }
    return ret;
}

struct cpuid_001h_ebx {
    uint32_t words[1];
};
typedef struct cpuid_001h_ebx cpuid_001h_ebx_t;

static inline uint32_t __attribute__((__const__))
cpuid_001h_ebx_get_brand(cpuid_001h_ebx_t cpuid_001h_ebx) {
    uint32_t ret;
    ret = (cpuid_001h_ebx.words[0] & 0xffu) >> 0;

    if (__builtin_expect(!!(0 && (ret & (1u << (31)))), 0)) {
        ret |= 0x0;
    }
    return ret;
}

struct cpuid_007h_ebx {
    uint32_t words[1];
};
typedef struct cpuid_007h_ebx cpuid_007h_ebx_t;

static inline uint32_t __attribute__((__const__))
cpuid_007h_ebx_get_smap(cpuid_007h_ebx_t cpuid_007h_ebx) {
    uint32_t ret;
    ret = (cpuid_007h_ebx.words[0] & 0x100000u) >> 20;

    if (__builtin_expect(!!(0 && (ret & (1u << (31)))), 0)) {
        ret |= 0x0;
    }
    return ret;
}

static inline uint32_t __attribute__((__const__))
cpuid_007h_ebx_get_smep(cpuid_007h_ebx_t cpuid_007h_ebx) {
    uint32_t ret;
    ret = (cpuid_007h_ebx.words[0] & 0x80u) >> 7;

    if (__builtin_expect(!!(0 && (ret & (1u << (31)))), 0)) {
        ret |= 0x0;
    }
    return ret;
}

struct cpuid_007h_edx {
    uint32_t words[1];
};
typedef struct cpuid_007h_edx cpuid_007h_edx_t;

static inline uint32_t __attribute__((__const__))
cpuid_007h_edx_get_ia32_arch_cap_msr(cpuid_007h_edx_t cpuid_007h_edx) {
    uint32_t ret;
    ret = (cpuid_007h_edx.words[0] & 0x20000000u) >> 29;

    if (__builtin_expect(!!(0 && (ret & (1u << (31)))), 0)) {
        ret |= 0x0;
    }
    return ret;
}

static inline uint32_t __attribute__((__const__))
cpuid_007h_edx_get_ibrs_ibpb(cpuid_007h_edx_t cpuid_007h_edx) {
    uint32_t ret;
    ret = (cpuid_007h_edx.words[0] & 0x4000000u) >> 26;

    if (__builtin_expect(!!(0 && (ret & (1u << (31)))), 0)) {
        ret |= 0x0;
    }
    return ret;
}

struct cr3 {
    uint64_t words[1];
};
typedef struct cr3 cr3_t;

static inline cr3_t __attribute__((__const__))
cr3_new(uint64_t pml4_base_address, uint64_t pcid) {
    cr3_t cr3;


    ;
    ;

    cr3.words[0] = 0
        | (pml4_base_address & 0x7fffffffff000ull) >> 0
        | (pcid & 0xfffull) << 0;

    return cr3;
}

static inline uint64_t __attribute__((__const__))
cr3_get_pml4_base_address(cr3_t cr3) {
    uint64_t ret;
    ret = (cr3.words[0] & 0x7fffffffff000ull) << 0;

    if (__builtin_expect(!!(0 && (ret & (1ull << (50)))), 0)) {
        ret |= 0x0;
    }
    return ret;
}

struct endpoint {
    uint64_t words[2];
};
typedef struct endpoint endpoint_t;

static inline uint64_t __attribute__((__pure__))
endpoint_ptr_get_epQueue_head(endpoint_t *endpoint_ptr) {
    uint64_t ret;
    ret = (endpoint_ptr->words[1] & 0xffffffffffffffffull) >> 0;

    if (__builtin_expect(!!(0 && (ret & (1ull << (47)))), 0)) {
        ret |= 0x0;
    }
    return ret;
}

static inline void
endpoint_ptr_set_epQueue_head(endpoint_t *endpoint_ptr, uint64_t v64) {

    ;
    endpoint_ptr->words[1] &= ~0xffffffffffffffffull;
    endpoint_ptr->words[1] |= (v64 << 0) & 0xffffffffffffffff;
}

static inline uint64_t __attribute__((__pure__))
endpoint_ptr_get_epQueue_tail(endpoint_t *endpoint_ptr) {
    uint64_t ret;
    ret = (endpoint_ptr->words[0] & 0xfffffffffffcull) << 0;

    if (__builtin_expect(!!(1 && (ret & (1ull << (47)))), 1)) {
        ret |= 0xffff000000000000;
    }
    return ret;
}

static inline void
endpoint_ptr_set_epQueue_tail(endpoint_t *endpoint_ptr, uint64_t v64) {

    ;
    endpoint_ptr->words[0] &= ~0xfffffffffffcull;
    endpoint_ptr->words[0] |= (v64 >> 0) & 0xfffffffffffc;
}

static inline uint64_t __attribute__((__pure__))
endpoint_ptr_get_state(endpoint_t *endpoint_ptr) {
    uint64_t ret;
    ret = (endpoint_ptr->words[0] & 0x3ull) >> 0;

    if (__builtin_expect(!!(0 && (ret & (1ull << (47)))), 0)) {
        ret |= 0x0;
    }
    return ret;
}

static inline void
endpoint_ptr_set_state(endpoint_t *endpoint_ptr, uint64_t v64) {

    ;
    endpoint_ptr->words[0] &= ~0x3ull;
    endpoint_ptr->words[0] |= (v64 << 0) & 0x3;
}

struct gdt_tss {
    uint64_t words[2];
};
typedef struct gdt_tss gdt_tss_t;

static inline gdt_tss_t __attribute__((__const__))
gdt_tss_new(uint64_t base_63_32, uint64_t base_31_24, uint64_t granularity, uint64_t avl, uint64_t limit_high, uint64_t present, uint64_t dpl, uint64_t desc_type, uint64_t base_23_16, uint64_t base_15_0, uint64_t limit_low) {
    gdt_tss_t gdt_tss;


    ;
    ;
    ;
    ;
    ;
    ;
    ;
    ;
    ;
    ;
    ;

    gdt_tss.words[0] = 0
        | (base_31_24 & 0xffull) << 56
        | (granularity & 0x1ull) << 55
        | (avl & 0x1ull) << 52
        | (limit_high & 0xfull) << 48
        | (present & 0x1ull) << 47
        | (dpl & 0x3ull) << 45
        | (desc_type & 0xfull) << 40
        | (base_23_16 & 0xffull) << 32
        | (base_15_0 & 0xffffull) << 16
        | (limit_low & 0xffffull) << 0;
    gdt_tss.words[1] = 0
        | (base_63_32 & 0xffffffffull) << 0;

    return gdt_tss;
}

struct ia32_arch_capabilities_msr {
    uint32_t words[1];
};
typedef struct ia32_arch_capabilities_msr ia32_arch_capabilities_msr_t;

static inline uint32_t __attribute__((__const__))
ia32_arch_capabilities_msr_get_ibrs_all(ia32_arch_capabilities_msr_t ia32_arch_capabilities_msr) {
    uint32_t ret;
    ret = (ia32_arch_capabilities_msr.words[0] & 0x2u) >> 1;

    if (__builtin_expect(!!(0 && (ret & (1u << (31)))), 0)) {
        ret |= 0x0;
    }
    return ret;
}

static inline uint32_t __attribute__((__const__))
ia32_arch_capabilities_msr_get_rdcl_no(ia32_arch_capabilities_msr_t ia32_arch_capabilities_msr) {
    uint32_t ret;
    ret = (ia32_arch_capabilities_msr.words[0] & 0x1u) >> 0;

    if (__builtin_expect(!!(0 && (ret & (1u << (31)))), 0)) {
        ret |= 0x0;
    }
    return ret;
}

struct mdb_node {
    uint64_t words[2];
};
typedef struct mdb_node mdb_node_t;

static inline mdb_node_t __attribute__((__const__))
mdb_node_new(uint64_t mdbNext, uint64_t mdbRevocable, uint64_t mdbFirstBadged, uint64_t mdbPrev) {
    mdb_node_t mdb_node;


    ;
    ;
    ;

    mdb_node.words[0] = 0
        | mdbPrev << 0;;
    mdb_node.words[1] = 0
        | (mdbNext & 0xfffffffffffcull) >> 0
        | (mdbRevocable & 0x1ull) << 1
        | (mdbFirstBadged & 0x1ull) << 0;

    return mdb_node;
}

static inline uint64_t __attribute__((__const__))
mdb_node_get_mdbNext(mdb_node_t mdb_node) {
    uint64_t ret;
    ret = (mdb_node.words[1] & 0xfffffffffffcull) << 0;

    if (__builtin_expect(!!(1 && (ret & (1ull << (47)))), 1)) {
        ret |= 0xffff000000000000;
    }
    return ret;
}

static inline void
mdb_node_ptr_set_mdbNext(mdb_node_t *mdb_node_ptr, uint64_t v64) {

    ;
    mdb_node_ptr->words[1] &= ~0xfffffffffffcull;
    mdb_node_ptr->words[1] |= (v64 >> 0) & 0xfffffffffffc;
}

static inline uint64_t __attribute__((__const__))
mdb_node_get_mdbRevocable(mdb_node_t mdb_node) {
    uint64_t ret;
    ret = (mdb_node.words[1] & 0x2ull) >> 1;

    if (__builtin_expect(!!(0 && (ret & (1ull << (47)))), 0)) {
        ret |= 0x0;
    }
    return ret;
}

static inline mdb_node_t __attribute__((__const__))
mdb_node_set_mdbRevocable(mdb_node_t mdb_node, uint64_t v64) {

    ;
    mdb_node.words[1] &= ~0x2ull;
    mdb_node.words[1] |= (v64 << 1) & 0x2ull;
    return mdb_node;
}

static inline void
mdb_node_ptr_set_mdbRevocable(mdb_node_t *mdb_node_ptr, uint64_t v64) {

    ;
    mdb_node_ptr->words[1] &= ~0x2ull;
    mdb_node_ptr->words[1] |= (v64 << 1) & 0x2;
}

static inline uint64_t __attribute__((__const__))
mdb_node_get_mdbFirstBadged(mdb_node_t mdb_node) {
    uint64_t ret;
    ret = (mdb_node.words[1] & 0x1ull) >> 0;

    if (__builtin_expect(!!(0 && (ret & (1ull << (47)))), 0)) {
        ret |= 0x0;
    }
    return ret;
}

static inline mdb_node_t __attribute__((__const__))
mdb_node_set_mdbFirstBadged(mdb_node_t mdb_node, uint64_t v64) {

    ;
    mdb_node.words[1] &= ~0x1ull;
    mdb_node.words[1] |= (v64 << 0) & 0x1ull;
    return mdb_node;
}

static inline void
mdb_node_ptr_set_mdbFirstBadged(mdb_node_t *mdb_node_ptr, uint64_t v64) {

    ;
    mdb_node_ptr->words[1] &= ~0x1ull;
    mdb_node_ptr->words[1] |= (v64 << 0) & 0x1;
}

static inline uint64_t __attribute__((__const__))
mdb_node_get_mdbPrev(mdb_node_t mdb_node) {
    uint64_t ret;
    ret = (mdb_node.words[0] & 0xffffffffffffffffull) >> 0;

    if (__builtin_expect(!!(0 && (ret & (1ull << (47)))), 0)) {
        ret |= 0x0;
    }
    return ret;
}

static inline mdb_node_t __attribute__((__const__))
mdb_node_set_mdbPrev(mdb_node_t mdb_node, uint64_t v64) {

    ;
    mdb_node.words[0] &= ~0xffffffffffffffffull;
    mdb_node.words[0] |= (v64 << 0) & 0xffffffffffffffffull;
    return mdb_node;
}

static inline void
mdb_node_ptr_set_mdbPrev(mdb_node_t *mdb_node_ptr, uint64_t v64) {

    ;
    mdb_node_ptr->words[0] &= ~0xffffffffffffffffull;
    mdb_node_ptr->words[0] |= (v64 << 0) & 0xffffffffffffffff;
}

struct notification {
    uint64_t words[4];
};
typedef struct notification notification_t;

static inline uint64_t __attribute__((__pure__))
notification_ptr_get_ntfnBoundTCB(notification_t *notification_ptr) {
    uint64_t ret;
    ret = (notification_ptr->words[3] & 0xffffffffffffull) << 0;

    if (__builtin_expect(!!(1 && (ret & (1ull << (47)))), 1)) {
        ret |= 0xffff000000000000;
    }
    return ret;
}

static inline void
notification_ptr_set_ntfnBoundTCB(notification_t *notification_ptr, uint64_t v64) {

    ;
    notification_ptr->words[3] &= ~0xffffffffffffull;
    notification_ptr->words[3] |= (v64 >> 0) & 0xffffffffffff;
}

static inline uint64_t __attribute__((__pure__))
notification_ptr_get_ntfnMsgIdentifier(notification_t *notification_ptr) {
    uint64_t ret;
    ret = (notification_ptr->words[2] & 0xffffffffffffffffull) >> 0;

    if (__builtin_expect(!!(0 && (ret & (1ull << (47)))), 0)) {
        ret |= 0x0;
    }
    return ret;
}

static inline void
notification_ptr_set_ntfnMsgIdentifier(notification_t *notification_ptr, uint64_t v64) {

    ;
    notification_ptr->words[2] &= ~0xffffffffffffffffull;
    notification_ptr->words[2] |= (v64 << 0) & 0xffffffffffffffff;
}

static inline uint64_t __attribute__((__pure__))
notification_ptr_get_ntfnQueue_head(notification_t *notification_ptr) {
    uint64_t ret;
    ret = (notification_ptr->words[1] & 0xffffffffffffull) << 0;

    if (__builtin_expect(!!(1 && (ret & (1ull << (47)))), 1)) {
        ret |= 0xffff000000000000;
    }
    return ret;
}

static inline void
notification_ptr_set_ntfnQueue_head(notification_t *notification_ptr, uint64_t v64) {

    ;
    notification_ptr->words[1] &= ~0xffffffffffffull;
    notification_ptr->words[1] |= (v64 >> 0) & 0xffffffffffff;
}

static inline uint64_t __attribute__((__pure__))
notification_ptr_get_ntfnQueue_tail(notification_t *notification_ptr) {
    uint64_t ret;
    ret = (notification_ptr->words[0] & 0xffffffffffff0000ull) >> 16;

    if (__builtin_expect(!!(1 && (ret & (1ull << (47)))), 1)) {
        ret |= 0xffff000000000000;
    }
    return ret;
}

static inline void
notification_ptr_set_ntfnQueue_tail(notification_t *notification_ptr, uint64_t v64) {

    ;
    notification_ptr->words[0] &= ~0xffffffffffff0000ull;
    notification_ptr->words[0] |= (v64 << 16) & 0xffffffffffff0000;
}

static inline uint64_t __attribute__((__pure__))
notification_ptr_get_state(notification_t *notification_ptr) {
    uint64_t ret;
    ret = (notification_ptr->words[0] & 0x3ull) >> 0;

    if (__builtin_expect(!!(0 && (ret & (1ull << (47)))), 0)) {
        ret |= 0x0;
    }
    return ret;
}

static inline void
notification_ptr_set_state(notification_t *notification_ptr, uint64_t v64) {

    ;
    notification_ptr->words[0] &= ~0x3ull;
    notification_ptr->words[0] |= (v64 << 0) & 0x3;
}

struct pml4e {
    uint64_t words[1];
};
typedef struct pml4e pml4e_t;

static inline pml4e_t __attribute__((__const__))
pml4e_new(uint64_t xd, uint64_t pdpt_base_address, uint64_t accessed, uint64_t cache_disabled, uint64_t write_through, uint64_t super_user, uint64_t read_write, uint64_t present) {
    pml4e_t pml4e;


    ;
    ;
    ;
    ;
    ;
    ;
    ;
    ;

    pml4e.words[0] = 0
        | (xd & 0x1ull) << 63
        | (pdpt_base_address & 0x7fffffffff000ull) >> 0
        | (accessed & 0x1ull) << 5
        | (cache_disabled & 0x1ull) << 4
        | (write_through & 0x1ull) << 3
        | (super_user & 0x1ull) << 2
        | (read_write & 0x1ull) << 1
        | (present & 0x1ull) << 0;

    return pml4e;
}

static inline uint64_t __attribute__((__pure__))
pml4e_ptr_get_pdpt_base_address(pml4e_t *pml4e_ptr) {
    uint64_t ret;
    ret = (pml4e_ptr->words[0] & 0x7fffffffff000ull) << 0;

    if (__builtin_expect(!!(0 && (ret & (1ull << (50)))), 0)) {
        ret |= 0x0;
    }
    return ret;
}

static inline uint64_t __attribute__((__pure__))
pml4e_ptr_get_present(pml4e_t *pml4e_ptr) {
    uint64_t ret;
    ret = (pml4e_ptr->words[0] & 0x1ull) >> 0;

    if (__builtin_expect(!!(0 && (ret & (1ull << (50)))), 0)) {
        ret |= 0x0;
    }
    return ret;
}

struct pte {
    uint64_t words[1];
};
typedef struct pte pte_t;

static inline pte_t __attribute__((__const__))
pte_new(uint64_t xd, uint64_t page_base_address, uint64_t global, uint64_t pat, uint64_t dirty, uint64_t accessed, uint64_t cache_disabled, uint64_t write_through, uint64_t super_user, uint64_t read_write, uint64_t present) {
    pte_t pte;


    ;
    ;
    ;
    ;
    ;
    ;
    ;
    ;
    ;
    ;
    ;

    pte.words[0] = 0
        | (xd & 0x1ull) << 63
        | (page_base_address & 0x7fffffffff000ull) >> 0
        | (global & 0x1ull) << 8
        | (pat & 0x1ull) << 7
        | (dirty & 0x1ull) << 6
        | (accessed & 0x1ull) << 5
        | (cache_disabled & 0x1ull) << 4
        | (write_through & 0x1ull) << 3
        | (super_user & 0x1ull) << 2
        | (read_write & 0x1ull) << 1
        | (present & 0x1ull) << 0;

    return pte;
}

static inline uint64_t __attribute__((__pure__))
pte_ptr_get_page_base_address(pte_t *pte_ptr) {
    uint64_t ret;
    ret = (pte_ptr->words[0] & 0x7fffffffff000ull) << 0;

    if (__builtin_expect(!!(0 && (ret & (1ull << (50)))), 0)) {
        ret |= 0x0;
    }
    return ret;
}

static inline uint64_t __attribute__((__const__))
pte_get_present(pte_t pte) {
    uint64_t ret;
    ret = (pte.words[0] & 0x1ull) >> 0;

    if (__builtin_expect(!!(0 && (ret & (1ull << (50)))), 0)) {
        ret |= 0x0;
    }
    return ret;
}

static inline uint64_t __attribute__((__pure__))
pte_ptr_get_present(pte_t *pte_ptr) {
    uint64_t ret;
    ret = (pte_ptr->words[0] & 0x1ull) >> 0;

    if (__builtin_expect(!!(0 && (ret & (1ull << (50)))), 0)) {
        ret |= 0x0;
    }
    return ret;
}

struct task_gate {
    uint64_t words[2];
};
typedef struct task_gate task_gate_t;

struct thread_state {
    uint64_t words[3];
};
typedef struct thread_state thread_state_t;

static inline uint64_t __attribute__((__pure__))
thread_state_ptr_get_blockingIPCBadge(thread_state_t *thread_state_ptr) {
    uint64_t ret;
    ret = (thread_state_ptr->words[2] & 0xffffffffffffffffull) >> 0;

    if (__builtin_expect(!!(0 && (ret & (1ull << (47)))), 0)) {
        ret |= 0x0;
    }
    return ret;
}

static inline void
thread_state_ptr_set_blockingIPCBadge(thread_state_t *thread_state_ptr, uint64_t v64) {

    ;
    thread_state_ptr->words[2] &= ~0xffffffffffffffffull;
    thread_state_ptr->words[2] |= (v64 << 0) & 0xffffffffffffffff;
}

static inline uint64_t __attribute__((__pure__))
thread_state_ptr_get_blockingIPCCanGrant(thread_state_t *thread_state_ptr) {
    uint64_t ret;
    ret = (thread_state_ptr->words[1] & 0x8ull) >> 3;

    if (__builtin_expect(!!(0 && (ret & (1ull << (47)))), 0)) {
        ret |= 0x0;
    }
    return ret;
}

static inline void
thread_state_ptr_set_blockingIPCCanGrant(thread_state_t *thread_state_ptr, uint64_t v64) {

    ;
    thread_state_ptr->words[1] &= ~0x8ull;
    thread_state_ptr->words[1] |= (v64 << 3) & 0x8;
}

static inline uint64_t __attribute__((__pure__))
thread_state_ptr_get_blockingIPCCanGrantReply(thread_state_t *thread_state_ptr) {
    uint64_t ret;
    ret = (thread_state_ptr->words[1] & 0x4ull) >> 2;

    if (__builtin_expect(!!(0 && (ret & (1ull << (47)))), 0)) {
        ret |= 0x0;
    }
    return ret;
}

static inline void
thread_state_ptr_set_blockingIPCCanGrantReply(thread_state_t *thread_state_ptr, uint64_t v64) {

    ;
    thread_state_ptr->words[1] &= ~0x4ull;
    thread_state_ptr->words[1] |= (v64 << 2) & 0x4;
}

static inline uint64_t __attribute__((__pure__))
thread_state_ptr_get_blockingIPCIsCall(thread_state_t *thread_state_ptr) {
    uint64_t ret;
    ret = (thread_state_ptr->words[1] & 0x2ull) >> 1;

    if (__builtin_expect(!!(0 && (ret & (1ull << (47)))), 0)) {
        ret |= 0x0;
    }
    return ret;
}

static inline void
thread_state_ptr_set_blockingIPCIsCall(thread_state_t *thread_state_ptr, uint64_t v64) {

    ;
    thread_state_ptr->words[1] &= ~0x2ull;
    thread_state_ptr->words[1] |= (v64 << 1) & 0x2;
}

static inline uint64_t __attribute__((__const__))
thread_state_get_tcbQueued(thread_state_t thread_state) {
    uint64_t ret;
    ret = (thread_state.words[1] & 0x1ull) >> 0;

    if (__builtin_expect(!!(0 && (ret & (1ull << (47)))), 0)) {
        ret |= 0x0;
    }
    return ret;
}

static inline void
thread_state_ptr_set_tcbQueued(thread_state_t *thread_state_ptr, uint64_t v64) {

    ;
    thread_state_ptr->words[1] &= ~0x1ull;
    thread_state_ptr->words[1] |= (v64 << 0) & 0x1;
}

static inline uint64_t __attribute__((__pure__))
thread_state_ptr_get_blockingObject(thread_state_t *thread_state_ptr) {
    uint64_t ret;
    ret = (thread_state_ptr->words[0] & 0xfffffffffff0ull) << 0;

    if (__builtin_expect(!!(1 && (ret & (1ull << (47)))), 1)) {
        ret |= 0xffff000000000000;
    }
    return ret;
}

static inline void
thread_state_ptr_set_blockingObject(thread_state_t *thread_state_ptr, uint64_t v64) {

    ;
    thread_state_ptr->words[0] &= ~0xfffffffffff0ull;
    thread_state_ptr->words[0] |= (v64 >> 0) & 0xfffffffffff0;
}

static inline uint64_t __attribute__((__const__))
thread_state_get_tsType(thread_state_t thread_state) {
    uint64_t ret;
    ret = (thread_state.words[0] & 0xfull) >> 0;

    if (__builtin_expect(!!(0 && (ret & (1ull << (47)))), 0)) {
        ret |= 0x0;
    }
    return ret;
}

static inline uint64_t __attribute__((__pure__))
thread_state_ptr_get_tsType(thread_state_t *thread_state_ptr) {
    uint64_t ret;
    ret = (thread_state_ptr->words[0] & 0xfull) >> 0;

    if (__builtin_expect(!!(0 && (ret & (1ull << (47)))), 0)) {
        ret |= 0x0;
    }
    return ret;
}

static inline void
thread_state_ptr_set_tsType(thread_state_t *thread_state_ptr, uint64_t v64) {

    ;
    thread_state_ptr->words[0] &= ~0xfull;
    thread_state_ptr->words[0] |= (v64 << 0) & 0xf;
}

struct tss {
    uint64_t words[13];
};
typedef struct tss tss_t;

static inline tss_t __attribute__((__const__))
tss_new(uint64_t io_map_base, uint64_t ist7_u, uint64_t ist7_l, uint64_t ist6_u, uint64_t ist6_l, uint64_t ist5_u, uint64_t ist5_l, uint64_t ist4_u, uint64_t ist4_l, uint64_t ist3_u, uint64_t ist3_l, uint64_t ist2_u, uint64_t ist2_l, uint64_t ist1_u, uint64_t ist1_l, uint64_t rsp2_u, uint64_t rsp2_l, uint64_t rsp1_u, uint64_t rsp1_l, uint64_t rsp0_u, uint64_t rsp0_l) {
    tss_t tss;


    ;
    ;
    ;
    ;
    ;
    ;
    ;
    ;
    ;
    ;
    ;
    ;
    ;
    ;
    ;
    ;
    ;
    ;
    ;
    ;
    ;

    tss.words[0] = 0
        | (rsp0_l & 0xffffffffull) << 32;
    tss.words[1] = 0
        | (rsp1_l & 0xffffffffull) << 32
        | (rsp0_u & 0xffffffffull) << 0;
    tss.words[2] = 0
        | (rsp2_l & 0xffffffffull) << 32
        | (rsp1_u & 0xffffffffull) << 0;
    tss.words[3] = 0
        | (rsp2_u & 0xffffffffull) << 0;
    tss.words[4] = 0
        | (ist1_l & 0xffffffffull) << 32;
    tss.words[5] = 0
        | (ist2_l & 0xffffffffull) << 32
        | (ist1_u & 0xffffffffull) << 0;
    tss.words[6] = 0
        | (ist3_l & 0xffffffffull) << 32
        | (ist2_u & 0xffffffffull) << 0;
    tss.words[7] = 0
        | (ist4_l & 0xffffffffull) << 32
        | (ist3_u & 0xffffffffull) << 0;
    tss.words[8] = 0
        | (ist5_l & 0xffffffffull) << 32
        | (ist4_u & 0xffffffffull) << 0;
    tss.words[9] = 0
        | (ist6_l & 0xffffffffull) << 32
        | (ist5_u & 0xffffffffull) << 0;
    tss.words[10] = 0
        | (ist7_l & 0xffffffffull) << 32
        | (ist6_u & 0xffffffffull) << 0;
    tss.words[11] = 0
        | (ist7_u & 0xffffffffull) << 0;
    tss.words[12] = 0
        | (io_map_base & 0xffffull) << 48;

    return tss;
}

struct vm_attributes {
    uint64_t words[1];
};
typedef struct vm_attributes vm_attributes_t;

static inline uint64_t __attribute__((__const__))
vm_attributes_get_x86PATBit(vm_attributes_t vm_attributes) {
    uint64_t ret;
    ret = (vm_attributes.words[0] & 0x4ull) >> 2;

    if (__builtin_expect(!!(0 && (ret & (1ull << (47)))), 0)) {
        ret |= 0x0;
    }
    return ret;
}

static inline uint64_t __attribute__((__const__))
vm_attributes_get_x86PCDBit(vm_attributes_t vm_attributes) {
    uint64_t ret;
    ret = (vm_attributes.words[0] & 0x2ull) >> 1;

    if (__builtin_expect(!!(0 && (ret & (1ull << (47)))), 0)) {
        ret |= 0x0;
    }
    return ret;
}

static inline uint64_t __attribute__((__const__))
vm_attributes_get_x86PWTBit(vm_attributes_t vm_attributes) {
    uint64_t ret;
    ret = (vm_attributes.words[0] & 0x1ull) >> 0;

    if (__builtin_expect(!!(0 && (ret & (1ull << (47)))), 0)) {
        ret |= 0x0;
    }
    return ret;
}

struct x2apic_icr1 {
    uint32_t words[1];
};
typedef struct x2apic_icr1 x2apic_icr1_t;

struct x2apic_icr2 {
    uint32_t words[1];
};
typedef struct x2apic_icr2 x2apic_icr2_t;

struct x86_pat_msr {
    uint32_t words[2];
};
typedef struct x86_pat_msr x86_pat_msr_t;

static inline x86_pat_msr_t __attribute__((__const__))
x86_pat_msr_set_pa4(x86_pat_msr_t x86_pat_msr, uint32_t v32) {

    ;
    x86_pat_msr.words[1] &= ~0x7u;
    x86_pat_msr.words[1] |= (v32 << 0) & 0x7u;
    return x86_pat_msr;
}

static inline x86_pat_msr_t __attribute__((__const__))
x86_pat_msr_set_pa3(x86_pat_msr_t x86_pat_msr, uint32_t v32) {

    ;
    x86_pat_msr.words[0] &= ~0x7000000u;
    x86_pat_msr.words[0] |= (v32 << 24) & 0x7000000u;
    return x86_pat_msr;
}

static inline x86_pat_msr_t __attribute__((__const__))
x86_pat_msr_set_pa2(x86_pat_msr_t x86_pat_msr, uint32_t v32) {

    ;
    x86_pat_msr.words[0] &= ~0x70000u;
    x86_pat_msr.words[0] |= (v32 << 16) & 0x70000u;
    return x86_pat_msr;
}

static inline x86_pat_msr_t __attribute__((__const__))
x86_pat_msr_set_pa1(x86_pat_msr_t x86_pat_msr, uint32_t v32) {

    ;
    x86_pat_msr.words[0] &= ~0x700u;
    x86_pat_msr.words[0] |= (v32 << 8) & 0x700u;
    return x86_pat_msr;
}

static inline x86_pat_msr_t __attribute__((__const__))
x86_pat_msr_set_pa0(x86_pat_msr_t x86_pat_msr, uint32_t v32) {

    ;
    x86_pat_msr.words[0] &= ~0x7u;
    x86_pat_msr.words[0] |= (v32 << 0) & 0x7u;
    return x86_pat_msr;
}

struct asid_map {
    uint64_t words[1];
};
typedef struct asid_map asid_map_t;

enum asid_map_tag {
    asid_map_asid_map_none = 0,
    asid_map_asid_map_vspace = 1
};
typedef enum asid_map_tag asid_map_tag_t;

static inline uint64_t __attribute__((__const__))
asid_map_get_type(asid_map_t asid_map) {
    return (asid_map.words[0] >> 0) & 0x3ull;
}

static inline asid_map_t __attribute__((__const__))
asid_map_asid_map_none_new(void) {
    asid_map_t asid_map;


    ;

    asid_map.words[0] = 0
        | ((uint64_t)asid_map_asid_map_none & 0x3ull) << 0;

    return asid_map;
}

static inline asid_map_t __attribute__((__const__))
asid_map_asid_map_vspace_new(uint64_t vspace_root) {
    asid_map_t asid_map;


    ;
    ;

    asid_map.words[0] = 0
        | (vspace_root & 0xffffffffffffull) << 16
        | ((uint64_t)asid_map_asid_map_vspace & 0x3ull) << 0;

    return asid_map;
}

static inline uint64_t __attribute__((__const__))
asid_map_asid_map_vspace_get_vspace_root(asid_map_t asid_map) {
    uint64_t ret;

    ;

    ret = (asid_map.words[0] & 0xffffffffffff0000ull) >> 16;

    if (__builtin_expect(!!(1 && (ret & (1ull << (47)))), 1)) {
        ret |= 0xffff000000000000;
    }
    return ret;
}

struct cap {
    uint64_t words[2];
};
typedef struct cap cap_t;

enum cap_tag {
    cap_null_cap = 0,
    cap_untyped_cap = 2,
    cap_endpoint_cap = 4,
    cap_notification_cap = 6,
    cap_reply_cap = 8,
    cap_cnode_cap = 10,
    cap_thread_cap = 12,
    cap_irq_control_cap = 14,
    cap_irq_handler_cap = 16,
    cap_zombie_cap = 18,
    cap_domain_cap = 20,
    cap_frame_cap = 1,
    cap_page_table_cap = 3,
    cap_page_directory_cap = 5,
    cap_pdpt_cap = 7,
    cap_pml4_cap = 9,
    cap_asid_control_cap = 11,
    cap_asid_pool_cap = 13,
    cap_io_port_cap = 19,
    cap_io_port_control_cap = 31
};
typedef enum cap_tag cap_tag_t;

static inline uint64_t __attribute__((__const__))
cap_get_capType(cap_t cap) {
    return (cap.words[0] >> 59) & 0x1full;
}

static inline int __attribute__((__const__))
cap_capType_equals(cap_t cap, uint64_t cap_type_tag) {
    return ((cap.words[0] >> 59) & 0x1full) == cap_type_tag;
}

static inline cap_t __attribute__((__const__))
cap_null_cap_new(void) {
    cap_t cap;


    ;

    cap.words[0] = 0
        | ((uint64_t)cap_null_cap & 0x1full) << 59;
    cap.words[1] = 0;

    return cap;
}

static inline cap_t __attribute__((__const__))
cap_untyped_cap_new(uint64_t capFreeIndex, uint64_t capIsDevice, uint64_t capBlockSize, uint64_t capPtr) {
    cap_t cap;


    ;
    ;
    ;
    ;
    ;

    cap.words[0] = 0
        | ((uint64_t)cap_untyped_cap & 0x1full) << 59
        | (capPtr & 0xffffffffffffull) >> 0;
    cap.words[1] = 0
        | (capFreeIndex & 0xffffffffffffull) << 16
        | (capIsDevice & 0x1ull) << 6
        | (capBlockSize & 0x3full) << 0;

    return cap;
}

static inline uint64_t __attribute__((__const__))
cap_untyped_cap_get_capFreeIndex(cap_t cap) {
    uint64_t ret;

    ;

    ret = (cap.words[1] & 0xffffffffffff0000ull) >> 16;

    if (__builtin_expect(!!(0 && (ret & (1ull << (47)))), 0)) {
        ret |= 0x0;
    }
    return ret;
}

static inline cap_t __attribute__((__const__))
cap_untyped_cap_set_capFreeIndex(cap_t cap, uint64_t v64) {

    ;

    ;

    cap.words[1] &= ~0xffffffffffff0000ull;
    cap.words[1] |= (v64 << 16) & 0xffffffffffff0000ull;
    return cap;
}

static inline void
cap_untyped_cap_ptr_set_capFreeIndex(cap_t *cap_ptr, uint64_t v64) {

    ;


    ;

    cap_ptr->words[1] &= ~0xffffffffffff0000ull;
    cap_ptr->words[1] |= (v64 << 16) & 0xffffffffffff0000ull;
}

static inline uint64_t __attribute__((__const__))
cap_untyped_cap_get_capIsDevice(cap_t cap) {
    uint64_t ret;

    ;

    ret = (cap.words[1] & 0x40ull) >> 6;

    if (__builtin_expect(!!(0 && (ret & (1ull << (47)))), 0)) {
        ret |= 0x0;
    }
    return ret;
}

static inline uint64_t __attribute__((__const__))
cap_untyped_cap_get_capBlockSize(cap_t cap) {
    uint64_t ret;

    ;

    ret = (cap.words[1] & 0x3full) >> 0;

    if (__builtin_expect(!!(0 && (ret & (1ull << (47)))), 0)) {
        ret |= 0x0;
    }
    return ret;
}

static inline uint64_t __attribute__((__const__))
cap_untyped_cap_get_capPtr(cap_t cap) {
    uint64_t ret;

    ;

    ret = (cap.words[0] & 0xffffffffffffull) << 0;

    if (__builtin_expect(!!(1 && (ret & (1ull << (47)))), 1)) {
        ret |= 0xffff000000000000;
    }
    return ret;
}

static inline cap_t __attribute__((__const__))
cap_endpoint_cap_new(uint64_t capEPBadge, uint64_t capCanGrantReply, uint64_t capCanGrant, uint64_t capCanSend, uint64_t capCanReceive, uint64_t capEPPtr) {
    cap_t cap;


    ;
    ;
    ;
    ;
    ;
    ;

    cap.words[0] = 0
        | (capCanGrantReply & 0x1ull) << 58
        | (capCanGrant & 0x1ull) << 57
        | (capCanSend & 0x1ull) << 55
        | (capCanReceive & 0x1ull) << 56
        | (capEPPtr & 0xffffffffffffull) >> 0
        | ((uint64_t)cap_endpoint_cap & 0x1full) << 59;
    cap.words[1] = 0
        | capEPBadge << 0;

    return cap;
}

static inline uint64_t __attribute__((__const__))
cap_endpoint_cap_get_capEPBadge(cap_t cap) {
    uint64_t ret;

    ;

    ret = (cap.words[1] & 0xffffffffffffffffull) >> 0;

    if (__builtin_expect(!!(0 && (ret & (1ull << (47)))), 0)) {
        ret |= 0x0;
    }
    return ret;
}

static inline cap_t __attribute__((__const__))
cap_endpoint_cap_set_capEPBadge(cap_t cap, uint64_t v64) {

    ;

    ;

    cap.words[1] &= ~0xffffffffffffffffull;
    cap.words[1] |= (v64 << 0) & 0xffffffffffffffffull;
    return cap;
}

static inline uint64_t __attribute__((__const__))
cap_endpoint_cap_get_capCanGrantReply(cap_t cap) {
    uint64_t ret;

    ;

    ret = (cap.words[0] & 0x400000000000000ull) >> 58;

    if (__builtin_expect(!!(0 && (ret & (1ull << (47)))), 0)) {
        ret |= 0x0;
    }
    return ret;
}

static inline cap_t __attribute__((__const__))
cap_endpoint_cap_set_capCanGrantReply(cap_t cap, uint64_t v64) {

    ;

    ;

    cap.words[0] &= ~0x400000000000000ull;
    cap.words[0] |= (v64 << 58) & 0x400000000000000ull;
    return cap;
}

static inline uint64_t __attribute__((__const__))
cap_endpoint_cap_get_capCanGrant(cap_t cap) {
    uint64_t ret;

    ;

    ret = (cap.words[0] & 0x200000000000000ull) >> 57;

    if (__builtin_expect(!!(0 && (ret & (1ull << (47)))), 0)) {
        ret |= 0x0;
    }
    return ret;
}

static inline cap_t __attribute__((__const__))
cap_endpoint_cap_set_capCanGrant(cap_t cap, uint64_t v64) {

    ;

    ;

    cap.words[0] &= ~0x200000000000000ull;
    cap.words[0] |= (v64 << 57) & 0x200000000000000ull;
    return cap;
}

static inline uint64_t __attribute__((__const__))
cap_endpoint_cap_get_capCanReceive(cap_t cap) {
    uint64_t ret;

    ;

    ret = (cap.words[0] & 0x100000000000000ull) >> 56;

    if (__builtin_expect(!!(0 && (ret & (1ull << (47)))), 0)) {
        ret |= 0x0;
    }
    return ret;
}

static inline cap_t __attribute__((__const__))
cap_endpoint_cap_set_capCanReceive(cap_t cap, uint64_t v64) {

    ;

    ;

    cap.words[0] &= ~0x100000000000000ull;
    cap.words[0] |= (v64 << 56) & 0x100000000000000ull;
    return cap;
}

static inline uint64_t __attribute__((__const__))
cap_endpoint_cap_get_capCanSend(cap_t cap) {
    uint64_t ret;

    ;

    ret = (cap.words[0] & 0x80000000000000ull) >> 55;

    if (__builtin_expect(!!(0 && (ret & (1ull << (47)))), 0)) {
        ret |= 0x0;
    }
    return ret;
}

static inline cap_t __attribute__((__const__))
cap_endpoint_cap_set_capCanSend(cap_t cap, uint64_t v64) {

    ;

    ;

    cap.words[0] &= ~0x80000000000000ull;
    cap.words[0] |= (v64 << 55) & 0x80000000000000ull;
    return cap;
}

static inline uint64_t __attribute__((__const__))
cap_endpoint_cap_get_capEPPtr(cap_t cap) {
    uint64_t ret;

    ;

    ret = (cap.words[0] & 0xffffffffffffull) << 0;

    if (__builtin_expect(!!(1 && (ret & (1ull << (47)))), 1)) {
        ret |= 0xffff000000000000;
    }
    return ret;
}

static inline cap_t __attribute__((__const__))
cap_notification_cap_new(uint64_t capNtfnBadge, uint64_t capNtfnCanReceive, uint64_t capNtfnCanSend, uint64_t capNtfnPtr) {
    cap_t cap;


    ;
    ;
    ;
    ;

    cap.words[0] = 0
        | ((uint64_t)cap_notification_cap & 0x1full) << 59
        | (capNtfnCanReceive & 0x1ull) << 58
        | (capNtfnCanSend & 0x1ull) << 57
        | (capNtfnPtr & 0xffffffffffffull) >> 0;
    cap.words[1] = 0
        | capNtfnBadge << 0;

    return cap;
}

static inline uint64_t __attribute__((__const__))
cap_notification_cap_get_capNtfnBadge(cap_t cap) {
    uint64_t ret;

    ;

    ret = (cap.words[1] & 0xffffffffffffffffull) >> 0;

    if (__builtin_expect(!!(0 && (ret & (1ull << (47)))), 0)) {
        ret |= 0x0;
    }
    return ret;
}

static inline cap_t __attribute__((__const__))
cap_notification_cap_set_capNtfnBadge(cap_t cap, uint64_t v64) {

    ;

    ;

    cap.words[1] &= ~0xffffffffffffffffull;
    cap.words[1] |= (v64 << 0) & 0xffffffffffffffffull;
    return cap;
}

static inline uint64_t __attribute__((__const__))
cap_notification_cap_get_capNtfnCanReceive(cap_t cap) {
    uint64_t ret;

    ;

    ret = (cap.words[0] & 0x400000000000000ull) >> 58;

    if (__builtin_expect(!!(0 && (ret & (1ull << (47)))), 0)) {
        ret |= 0x0;
    }
    return ret;
}

static inline cap_t __attribute__((__const__))
cap_notification_cap_set_capNtfnCanReceive(cap_t cap, uint64_t v64) {

    ;

    ;

    cap.words[0] &= ~0x400000000000000ull;
    cap.words[0] |= (v64 << 58) & 0x400000000000000ull;
    return cap;
}

static inline uint64_t __attribute__((__const__))
cap_notification_cap_get_capNtfnCanSend(cap_t cap) {
    uint64_t ret;

    ;

    ret = (cap.words[0] & 0x200000000000000ull) >> 57;

    if (__builtin_expect(!!(0 && (ret & (1ull << (47)))), 0)) {
        ret |= 0x0;
    }
    return ret;
}

static inline cap_t __attribute__((__const__))
cap_notification_cap_set_capNtfnCanSend(cap_t cap, uint64_t v64) {

    ;

    ;

    cap.words[0] &= ~0x200000000000000ull;
    cap.words[0] |= (v64 << 57) & 0x200000000000000ull;
    return cap;
}

static inline uint64_t __attribute__((__const__))
cap_notification_cap_get_capNtfnPtr(cap_t cap) {
    uint64_t ret;

    ;

    ret = (cap.words[0] & 0xffffffffffffull) << 0;

    if (__builtin_expect(!!(1 && (ret & (1ull << (47)))), 1)) {
        ret |= 0xffff000000000000;
    }
    return ret;
}

static inline cap_t __attribute__((__const__))
cap_reply_cap_new(uint64_t capReplyCanGrant, uint64_t capReplyMaster, uint64_t capTCBPtr) {
    cap_t cap;


    ;
    ;
    ;

    cap.words[0] = 0
        | (capReplyCanGrant & 0x1ull) << 1
        | (capReplyMaster & 0x1ull) << 0
        | ((uint64_t)cap_reply_cap & 0x1full) << 59;
    cap.words[1] = 0
        | capTCBPtr << 0;

    return cap;
}

static inline uint64_t __attribute__((__const__))
cap_reply_cap_get_capTCBPtr(cap_t cap) {
    uint64_t ret;

    ;

    ret = (cap.words[1] & 0xffffffffffffffffull) >> 0;

    if (__builtin_expect(!!(0 && (ret & (1ull << (47)))), 0)) {
        ret |= 0x0;
    }
    return ret;
}

static inline uint64_t __attribute__((__const__))
cap_reply_cap_get_capReplyCanGrant(cap_t cap) {
    uint64_t ret;

    ;

    ret = (cap.words[0] & 0x2ull) >> 1;

    if (__builtin_expect(!!(0 && (ret & (1ull << (47)))), 0)) {
        ret |= 0x0;
    }
    return ret;
}

static inline cap_t __attribute__((__const__))
cap_reply_cap_set_capReplyCanGrant(cap_t cap, uint64_t v64) {

    ;

    ;

    cap.words[0] &= ~0x2ull;
    cap.words[0] |= (v64 << 1) & 0x2ull;
    return cap;
}

static inline uint64_t __attribute__((__const__))
cap_reply_cap_get_capReplyMaster(cap_t cap) {
    uint64_t ret;

    ;

    ret = (cap.words[0] & 0x1ull) >> 0;

    if (__builtin_expect(!!(0 && (ret & (1ull << (47)))), 0)) {
        ret |= 0x0;
    }
    return ret;
}

static inline cap_t __attribute__((__const__))
cap_cnode_cap_new(uint64_t capCNodeRadix, uint64_t capCNodeGuardSize, uint64_t capCNodeGuard, uint64_t capCNodePtr) {
    cap_t cap;


    ;
    ;
    ;
    ;

    cap.words[0] = 0
        | (capCNodeRadix & 0x3full) << 47
        | (capCNodeGuardSize & 0x3full) << 53
        | (capCNodePtr & 0xfffffffffffeull) >> 1
        | ((uint64_t)cap_cnode_cap & 0x1full) << 59;
    cap.words[1] = 0
        | capCNodeGuard << 0;

    return cap;
}

static inline uint64_t __attribute__((__const__))
cap_cnode_cap_get_capCNodeGuard(cap_t cap) {
    uint64_t ret;

    ;

    ret = (cap.words[1] & 0xffffffffffffffffull) >> 0;

    if (__builtin_expect(!!(0 && (ret & (1ull << (47)))), 0)) {
        ret |= 0x0;
    }
    return ret;
}

static inline cap_t __attribute__((__const__))
cap_cnode_cap_set_capCNodeGuard(cap_t cap, uint64_t v64) {

    ;

    ;

    cap.words[1] &= ~0xffffffffffffffffull;
    cap.words[1] |= (v64 << 0) & 0xffffffffffffffffull;
    return cap;
}

static inline uint64_t __attribute__((__const__))
cap_cnode_cap_get_capCNodeGuardSize(cap_t cap) {
    uint64_t ret;

    ;

    ret = (cap.words[0] & 0x7e0000000000000ull) >> 53;

    if (__builtin_expect(!!(0 && (ret & (1ull << (47)))), 0)) {
        ret |= 0x0;
    }
    return ret;
}

static inline cap_t __attribute__((__const__))
cap_cnode_cap_set_capCNodeGuardSize(cap_t cap, uint64_t v64) {

    ;

    ;

    cap.words[0] &= ~0x7e0000000000000ull;
    cap.words[0] |= (v64 << 53) & 0x7e0000000000000ull;
    return cap;
}

static inline uint64_t __attribute__((__const__))
cap_cnode_cap_get_capCNodeRadix(cap_t cap) {
    uint64_t ret;

    ;

    ret = (cap.words[0] & 0x1f800000000000ull) >> 47;

    if (__builtin_expect(!!(0 && (ret & (1ull << (47)))), 0)) {
        ret |= 0x0;
    }
    return ret;
}

static inline uint64_t __attribute__((__const__))
cap_cnode_cap_get_capCNodePtr(cap_t cap) {
    uint64_t ret;

    ;

    ret = (cap.words[0] & 0x7fffffffffffull) << 1;

    if (__builtin_expect(!!(1 && (ret & (1ull << (47)))), 1)) {
        ret |= 0xffff000000000000;
    }
    return ret;
}

static inline cap_t __attribute__((__const__))
cap_thread_cap_new(uint64_t capTCBPtr) {
    cap_t cap;


    ;
    ;

    cap.words[0] = 0
        | ((uint64_t)cap_thread_cap & 0x1full) << 59
        | (capTCBPtr & 0xffffffffffffull) >> 0;
    cap.words[1] = 0;

    return cap;
}

static inline uint64_t __attribute__((__const__))
cap_thread_cap_get_capTCBPtr(cap_t cap) {
    uint64_t ret;

    ;

    ret = (cap.words[0] & 0xffffffffffffull) << 0;

    if (__builtin_expect(!!(1 && (ret & (1ull << (47)))), 1)) {
        ret |= 0xffff000000000000;
    }
    return ret;
}

static inline cap_t __attribute__((__const__))
cap_irq_control_cap_new(void) {
    cap_t cap;


    ;

    cap.words[0] = 0
        | ((uint64_t)cap_irq_control_cap & 0x1full) << 59;
    cap.words[1] = 0;

    return cap;
}

static inline cap_t __attribute__((__const__))
cap_irq_handler_cap_new(uint64_t capIRQ) {
    cap_t cap;


    ;
    ;

    cap.words[0] = 0
        | ((uint64_t)cap_irq_handler_cap & 0x1full) << 59;
    cap.words[1] = 0
        | (capIRQ & 0xfffull) << 0;

    return cap;
}

static inline uint64_t __attribute__((__const__))
cap_irq_handler_cap_get_capIRQ(cap_t cap) {
    uint64_t ret;

    ;

    ret = (cap.words[1] & 0xfffull) >> 0;

    if (__builtin_expect(!!(0 && (ret & (1ull << (47)))), 0)) {
        ret |= 0x0;
    }
    return ret;
}

static inline cap_t __attribute__((__const__))
cap_zombie_cap_new(uint64_t capZombieID, uint64_t capZombieType) {
    cap_t cap;


    ;
    ;

    cap.words[0] = 0
        | ((uint64_t)cap_zombie_cap & 0x1full) << 59
        | (capZombieType & 0x7full) << 0;
    cap.words[1] = 0
        | capZombieID << 0;

    return cap;
}

static inline uint64_t __attribute__((__const__))
cap_zombie_cap_get_capZombieID(cap_t cap) {
    uint64_t ret;

    ;

    ret = (cap.words[1] & 0xffffffffffffffffull) >> 0;

    if (__builtin_expect(!!(0 && (ret & (1ull << (47)))), 0)) {
        ret |= 0x0;
    }
    return ret;
}

static inline cap_t __attribute__((__const__))
cap_zombie_cap_set_capZombieID(cap_t cap, uint64_t v64) {

    ;

    ;

    cap.words[1] &= ~0xffffffffffffffffull;
    cap.words[1] |= (v64 << 0) & 0xffffffffffffffffull;
    return cap;
}

static inline uint64_t __attribute__((__const__))
cap_zombie_cap_get_capZombieType(cap_t cap) {
    uint64_t ret;

    ;

    ret = (cap.words[0] & 0x7full) >> 0;

    if (__builtin_expect(!!(0 && (ret & (1ull << (47)))), 0)) {
        ret |= 0x0;
    }
    return ret;
}

static inline cap_t __attribute__((__const__))
cap_domain_cap_new(void) {
    cap_t cap;


    ;

    cap.words[0] = 0
        | ((uint64_t)cap_domain_cap & 0x1full) << 59;
    cap.words[1] = 0;

    return cap;
}

static inline cap_t __attribute__((__const__))
cap_frame_cap_new(uint64_t capFMappedASID, uint64_t capFBasePtr, uint64_t capFSize, uint64_t capFMapType, uint64_t capFMappedAddress, uint64_t capFVMRights, uint64_t capFIsDevice) {
    cap_t cap;


    ;
    ;
    ;
    ;
    ;
    ;
    ;
    ;

    cap.words[0] = 0
        | ((uint64_t)cap_frame_cap & 0x1full) << 59
        | (capFSize & 0x3ull) << 57
        | (capFMapType & 0x3ull) << 55
        | (capFMappedAddress & 0xffffffffffffull) << 7
        | (capFVMRights & 0x3ull) << 5
        | (capFIsDevice & 0x1ull) << 4;
    cap.words[1] = 0
        | (capFMappedASID & 0xffffull) << 48
        | (capFBasePtr & 0xffffffffffffull) >> 0;

    return cap;
}

static inline uint64_t __attribute__((__const__))
cap_frame_cap_get_capFMappedASID(cap_t cap) {
    uint64_t ret;

    ;

    ret = (cap.words[1] & 0xffff000000000000ull) >> 48;

    if (__builtin_expect(!!(0 && (ret & (1ull << (47)))), 0)) {
        ret |= 0x0;
    }
    return ret;
}

static inline cap_t __attribute__((__const__))
cap_frame_cap_set_capFMappedASID(cap_t cap, uint64_t v64) {

    ;

    ;

    cap.words[1] &= ~0xffff000000000000ull;
    cap.words[1] |= (v64 << 48) & 0xffff000000000000ull;
    return cap;
}

static inline void
cap_frame_cap_ptr_set_capFMappedASID(cap_t *cap_ptr, uint64_t v64) {

    ;


    ;

    cap_ptr->words[1] &= ~0xffff000000000000ull;
    cap_ptr->words[1] |= (v64 << 48) & 0xffff000000000000ull;
}

static inline uint64_t __attribute__((__const__))
cap_frame_cap_get_capFBasePtr(cap_t cap) {
    uint64_t ret;

    ;

    ret = (cap.words[1] & 0xffffffffffffull) << 0;

    if (__builtin_expect(!!(1 && (ret & (1ull << (47)))), 1)) {
        ret |= 0xffff000000000000;
    }
    return ret;
}

static inline uint64_t __attribute__((__const__))
cap_frame_cap_get_capFSize(cap_t cap) {
    uint64_t ret;

    ;

    ret = (cap.words[0] & 0x600000000000000ull) >> 57;

    if (__builtin_expect(!!(0 && (ret & (1ull << (47)))), 0)) {
        ret |= 0x0;
    }
    return ret;
}

static inline uint64_t __attribute__((__const__))
cap_frame_cap_get_capFMapType(cap_t cap) {
    uint64_t ret;

    ;

    ret = (cap.words[0] & 0x180000000000000ull) >> 55;

    if (__builtin_expect(!!(0 && (ret & (1ull << (47)))), 0)) {
        ret |= 0x0;
    }
    return ret;
}

static inline cap_t __attribute__((__const__))
cap_frame_cap_set_capFMapType(cap_t cap, uint64_t v64) {

    ;

    ;

    cap.words[0] &= ~0x180000000000000ull;
    cap.words[0] |= (v64 << 55) & 0x180000000000000ull;
    return cap;
}

static inline void
cap_frame_cap_ptr_set_capFMapType(cap_t *cap_ptr, uint64_t v64) {

    ;


    ;

    cap_ptr->words[0] &= ~0x180000000000000ull;
    cap_ptr->words[0] |= (v64 << 55) & 0x180000000000000ull;
}

static inline uint64_t __attribute__((__const__))
cap_frame_cap_get_capFMappedAddress(cap_t cap) {
    uint64_t ret;

    ;

    ret = (cap.words[0] & 0x7fffffffffff80ull) >> 7;

    if (__builtin_expect(!!(1 && (ret & (1ull << (47)))), 1)) {
        ret |= 0xffff000000000000;
    }
    return ret;
}

static inline cap_t __attribute__((__const__))
cap_frame_cap_set_capFMappedAddress(cap_t cap, uint64_t v64) {

    ;

    ;

    cap.words[0] &= ~0x7fffffffffff80ull;
    cap.words[0] |= (v64 << 7) & 0x7fffffffffff80ull;
    return cap;
}

static inline void
cap_frame_cap_ptr_set_capFMappedAddress(cap_t *cap_ptr, uint64_t v64) {

    ;


    ;

    cap_ptr->words[0] &= ~0x7fffffffffff80ull;
    cap_ptr->words[0] |= (v64 << 7) & 0x7fffffffffff80ull;
}

static inline uint64_t __attribute__((__const__))
cap_frame_cap_get_capFVMRights(cap_t cap) {
    uint64_t ret;

    ;

    ret = (cap.words[0] & 0x60ull) >> 5;

    if (__builtin_expect(!!(0 && (ret & (1ull << (47)))), 0)) {
        ret |= 0x0;
    }
    return ret;
}

static inline cap_t __attribute__((__const__))
cap_frame_cap_set_capFVMRights(cap_t cap, uint64_t v64) {

    ;

    ;

    cap.words[0] &= ~0x60ull;
    cap.words[0] |= (v64 << 5) & 0x60ull;
    return cap;
}

static inline uint64_t __attribute__((__const__))
cap_frame_cap_get_capFIsDevice(cap_t cap) {
    uint64_t ret;

    ;

    ret = (cap.words[0] & 0x10ull) >> 4;

    if (__builtin_expect(!!(0 && (ret & (1ull << (47)))), 0)) {
        ret |= 0x0;
    }
    return ret;
}

static inline cap_t __attribute__((__const__))
cap_page_table_cap_new(uint64_t capPTMappedASID, uint64_t capPTBasePtr, uint64_t capPTIsMapped, uint64_t capPTMappedAddress) {
    cap_t cap;


    ;
    ;
    ;
    ;
    ;

    cap.words[0] = 0
        | ((uint64_t)cap_page_table_cap & 0x1full) << 59
        | (capPTIsMapped & 0x1ull) << 49
        | (capPTMappedAddress & 0xfffffff00000ull) << 1;
    cap.words[1] = 0
        | (capPTMappedASID & 0xfffull) << 48
        | (capPTBasePtr & 0xffffffffffffull) >> 0;

    return cap;
}

static inline uint64_t __attribute__((__const__))
cap_page_table_cap_get_capPTMappedASID(cap_t cap) {
    uint64_t ret;

    ;

    ret = (cap.words[1] & 0xfff000000000000ull) >> 48;

    if (__builtin_expect(!!(0 && (ret & (1ull << (47)))), 0)) {
        ret |= 0x0;
    }
    return ret;
}

static inline cap_t __attribute__((__const__))
cap_page_table_cap_set_capPTMappedASID(cap_t cap, uint64_t v64) {

    ;

    ;

    cap.words[1] &= ~0xfff000000000000ull;
    cap.words[1] |= (v64 << 48) & 0xfff000000000000ull;
    return cap;
}

static inline uint64_t __attribute__((__const__))
cap_page_table_cap_get_capPTBasePtr(cap_t cap) {
    uint64_t ret;

    ;

    ret = (cap.words[1] & 0xffffffffffffull) << 0;

    if (__builtin_expect(!!(1 && (ret & (1ull << (47)))), 1)) {
        ret |= 0xffff000000000000;
    }
    return ret;
}

static inline uint64_t __attribute__((__const__))
cap_page_table_cap_get_capPTIsMapped(cap_t cap) {
    uint64_t ret;

    ;

    ret = (cap.words[0] & 0x2000000000000ull) >> 49;

    if (__builtin_expect(!!(0 && (ret & (1ull << (47)))), 0)) {
        ret |= 0x0;
    }
    return ret;
}

static inline cap_t __attribute__((__const__))
cap_page_table_cap_set_capPTIsMapped(cap_t cap, uint64_t v64) {

    ;

    ;

    cap.words[0] &= ~0x2000000000000ull;
    cap.words[0] |= (v64 << 49) & 0x2000000000000ull;
    return cap;
}

static inline void
cap_page_table_cap_ptr_set_capPTIsMapped(cap_t *cap_ptr, uint64_t v64) {

    ;


    ;

    cap_ptr->words[0] &= ~0x2000000000000ull;
    cap_ptr->words[0] |= (v64 << 49) & 0x2000000000000ull;
}

static inline uint64_t __attribute__((__const__))
cap_page_table_cap_get_capPTMappedAddress(cap_t cap) {
    uint64_t ret;

    ;

    ret = (cap.words[0] & 0x1ffffffe00000ull) >> 1;

    if (__builtin_expect(!!(1 && (ret & (1ull << (47)))), 1)) {
        ret |= 0xffff000000000000;
    }
    return ret;
}

static inline cap_t __attribute__((__const__))
cap_page_table_cap_set_capPTMappedAddress(cap_t cap, uint64_t v64) {

    ;

    ;

    cap.words[0] &= ~0x1ffffffe00000ull;
    cap.words[0] |= (v64 << 1) & 0x1ffffffe00000ull;
    return cap;
}

static inline cap_t __attribute__((__const__))
cap_page_directory_cap_new(uint64_t capPDMappedASID, uint64_t capPDBasePtr, uint64_t capPDIsMapped, uint64_t capPDMappedAddress) {
    cap_t cap;


    ;
    ;
    ;
    ;
    ;

    cap.words[0] = 0
        | ((uint64_t)cap_page_directory_cap & 0x1full) << 59
        | (capPDIsMapped & 0x1ull) << 49
        | (capPDMappedAddress & 0xffffe0000000ull) << 1;
    cap.words[1] = 0
        | (capPDMappedASID & 0xfffull) << 48
        | (capPDBasePtr & 0xffffffffffffull) >> 0;

    return cap;
}

static inline uint64_t __attribute__((__const__))
cap_page_directory_cap_get_capPDMappedASID(cap_t cap) {
    uint64_t ret;

    ;

    ret = (cap.words[1] & 0xfff000000000000ull) >> 48;

    if (__builtin_expect(!!(0 && (ret & (1ull << (47)))), 0)) {
        ret |= 0x0;
    }
    return ret;
}

static inline cap_t __attribute__((__const__))
cap_page_directory_cap_set_capPDMappedASID(cap_t cap, uint64_t v64) {

    ;

    ;

    cap.words[1] &= ~0xfff000000000000ull;
    cap.words[1] |= (v64 << 48) & 0xfff000000000000ull;
    return cap;
}

static inline uint64_t __attribute__((__const__))
cap_page_directory_cap_get_capPDBasePtr(cap_t cap) {
    uint64_t ret;

    ;

    ret = (cap.words[1] & 0xffffffffffffull) << 0;

    if (__builtin_expect(!!(1 && (ret & (1ull << (47)))), 1)) {
        ret |= 0xffff000000000000;
    }
    return ret;
}

static inline uint64_t __attribute__((__const__))
cap_page_directory_cap_get_capPDIsMapped(cap_t cap) {
    uint64_t ret;

    ;

    ret = (cap.words[0] & 0x2000000000000ull) >> 49;

    if (__builtin_expect(!!(0 && (ret & (1ull << (47)))), 0)) {
        ret |= 0x0;
    }
    return ret;
}

static inline cap_t __attribute__((__const__))
cap_page_directory_cap_set_capPDIsMapped(cap_t cap, uint64_t v64) {

    ;

    ;

    cap.words[0] &= ~0x2000000000000ull;
    cap.words[0] |= (v64 << 49) & 0x2000000000000ull;
    return cap;
}

static inline void
cap_page_directory_cap_ptr_set_capPDIsMapped(cap_t *cap_ptr, uint64_t v64) {

    ;


    ;

    cap_ptr->words[0] &= ~0x2000000000000ull;
    cap_ptr->words[0] |= (v64 << 49) & 0x2000000000000ull;
}

static inline uint64_t __attribute__((__const__))
cap_page_directory_cap_get_capPDMappedAddress(cap_t cap) {
    uint64_t ret;

    ;

    ret = (cap.words[0] & 0x1ffffc0000000ull) >> 1;

    if (__builtin_expect(!!(1 && (ret & (1ull << (47)))), 1)) {
        ret |= 0xffff000000000000;
    }
    return ret;
}

static inline cap_t __attribute__((__const__))
cap_page_directory_cap_set_capPDMappedAddress(cap_t cap, uint64_t v64) {

    ;

    ;

    cap.words[0] &= ~0x1ffffc0000000ull;
    cap.words[0] |= (v64 << 1) & 0x1ffffc0000000ull;
    return cap;
}

static inline cap_t __attribute__((__const__))
cap_pdpt_cap_new(uint64_t capPDPTMappedASID, uint64_t capPDPTBasePtr, uint64_t capPDPTIsMapped, uint64_t capPDPTMappedAddress) {
    cap_t cap;


    ;
    ;
    ;
    ;
    ;

    cap.words[0] = 0
        | ((uint64_t)cap_pdpt_cap & 0x1full) << 59
        | (capPDPTIsMapped & 0x1ull) << 58
        | (capPDPTMappedAddress & 0xffc000000000ull) << 10;
    cap.words[1] = 0
        | (capPDPTMappedASID & 0xfffull) << 48
        | (capPDPTBasePtr & 0xffffffffffffull) >> 0;

    return cap;
}

static inline uint64_t __attribute__((__const__))
cap_pdpt_cap_get_capPDPTMappedASID(cap_t cap) {
    uint64_t ret;

    ;

    ret = (cap.words[1] & 0xfff000000000000ull) >> 48;

    if (__builtin_expect(!!(0 && (ret & (1ull << (47)))), 0)) {
        ret |= 0x0;
    }
    return ret;
}

static inline cap_t __attribute__((__const__))
cap_pdpt_cap_set_capPDPTMappedASID(cap_t cap, uint64_t v64) {

    ;

    ;

    cap.words[1] &= ~0xfff000000000000ull;
    cap.words[1] |= (v64 << 48) & 0xfff000000000000ull;
    return cap;
}

static inline uint64_t __attribute__((__const__))
cap_pdpt_cap_get_capPDPTBasePtr(cap_t cap) {
    uint64_t ret;

    ;

    ret = (cap.words[1] & 0xffffffffffffull) << 0;

    if (__builtin_expect(!!(1 && (ret & (1ull << (47)))), 1)) {
        ret |= 0xffff000000000000;
    }
    return ret;
}

static inline uint64_t __attribute__((__const__))
cap_pdpt_cap_get_capPDPTIsMapped(cap_t cap) {
    uint64_t ret;

    ;

    ret = (cap.words[0] & 0x400000000000000ull) >> 58;

    if (__builtin_expect(!!(0 && (ret & (1ull << (47)))), 0)) {
        ret |= 0x0;
    }
    return ret;
}

static inline cap_t __attribute__((__const__))
cap_pdpt_cap_set_capPDPTIsMapped(cap_t cap, uint64_t v64) {

    ;

    ;

    cap.words[0] &= ~0x400000000000000ull;
    cap.words[0] |= (v64 << 58) & 0x400000000000000ull;
    return cap;
}

static inline void
cap_pdpt_cap_ptr_set_capPDPTIsMapped(cap_t *cap_ptr, uint64_t v64) {

    ;


    ;

    cap_ptr->words[0] &= ~0x400000000000000ull;
    cap_ptr->words[0] |= (v64 << 58) & 0x400000000000000ull;
}

static inline uint64_t __attribute__((__const__))
cap_pdpt_cap_get_capPDPTMappedAddress(cap_t cap) {
    uint64_t ret;

    ;

    ret = (cap.words[0] & 0x3ff000000000000ull) >> 10;

    if (__builtin_expect(!!(1 && (ret & (1ull << (47)))), 1)) {
        ret |= 0xffff000000000000;
    }
    return ret;
}

static inline cap_t __attribute__((__const__))
cap_pdpt_cap_set_capPDPTMappedAddress(cap_t cap, uint64_t v64) {

    ;

    ;

    cap.words[0] &= ~0x3ff000000000000ull;
    cap.words[0] |= (v64 << 10) & 0x3ff000000000000ull;
    return cap;
}

static inline cap_t __attribute__((__const__))
cap_pml4_cap_new(uint64_t capPML4MappedASID, uint64_t capPML4BasePtr, uint64_t capPML4IsMapped) {
    cap_t cap;


    ;
    ;
    ;

    cap.words[0] = 0
        | (capPML4MappedASID & 0xfffull) << 0
        | ((uint64_t)cap_pml4_cap & 0x1full) << 59
        | (capPML4IsMapped & 0x1ull) << 58;
    cap.words[1] = 0
        | capPML4BasePtr << 0;

    return cap;
}

static inline uint64_t __attribute__((__const__))
cap_pml4_cap_get_capPML4BasePtr(cap_t cap) {
    uint64_t ret;

    ;

    ret = (cap.words[1] & 0xffffffffffffffffull) >> 0;

    if (__builtin_expect(!!(0 && (ret & (1ull << (47)))), 0)) {
        ret |= 0x0;
    }
    return ret;
}

static inline uint64_t __attribute__((__const__))
cap_pml4_cap_get_capPML4IsMapped(cap_t cap) {
    uint64_t ret;

    ;

    ret = (cap.words[0] & 0x400000000000000ull) >> 58;

    if (__builtin_expect(!!(0 && (ret & (1ull << (47)))), 0)) {
        ret |= 0x0;
    }
    return ret;
}

static inline void
cap_pml4_cap_ptr_set_capPML4IsMapped(cap_t *cap_ptr, uint64_t v64) {

    ;


    ;

    cap_ptr->words[0] &= ~0x400000000000000ull;
    cap_ptr->words[0] |= (v64 << 58) & 0x400000000000000ull;
}

static inline uint64_t __attribute__((__const__))
cap_pml4_cap_get_capPML4MappedASID(cap_t cap) {
    uint64_t ret;

    ;

    ret = (cap.words[0] & 0xfffull) >> 0;

    if (__builtin_expect(!!(0 && (ret & (1ull << (47)))), 0)) {
        ret |= 0x0;
    }
    return ret;
}

static inline void
cap_pml4_cap_ptr_set_capPML4MappedASID(cap_t *cap_ptr, uint64_t v64) {

    ;


    ;

    cap_ptr->words[0] &= ~0xfffull;
    cap_ptr->words[0] |= (v64 << 0) & 0xfffull;
}

static inline cap_t __attribute__((__const__))
cap_asid_control_cap_new(void) {
    cap_t cap;


    ;

    cap.words[0] = 0
        | ((uint64_t)cap_asid_control_cap & 0x1full) << 59;
    cap.words[1] = 0;

    return cap;
}

static inline cap_t __attribute__((__const__))
cap_asid_pool_cap_new(uint64_t capASIDBase, uint64_t capASIDPool) {
    cap_t cap;


    ;
    ;
    ;

    cap.words[0] = 0
        | ((uint64_t)cap_asid_pool_cap & 0x1full) << 59
        | (capASIDBase & 0xfffull) << 47
        | (capASIDPool & 0xfffffffff800ull) >> 11;
    cap.words[1] = 0;

    return cap;
}

static inline uint64_t __attribute__((__const__))
cap_asid_pool_cap_get_capASIDBase(cap_t cap) {
    uint64_t ret;

    ;

    ret = (cap.words[0] & 0x7ff800000000000ull) >> 47;

    if (__builtin_expect(!!(0 && (ret & (1ull << (47)))), 0)) {
        ret |= 0x0;
    }
    return ret;
}

static inline uint64_t __attribute__((__const__))
cap_asid_pool_cap_get_capASIDPool(cap_t cap) {
    uint64_t ret;

    ;

    ret = (cap.words[0] & 0x1fffffffffull) << 11;

    if (__builtin_expect(!!(1 && (ret & (1ull << (47)))), 1)) {
        ret |= 0xffff000000000000;
    }
    return ret;
}

static inline cap_t __attribute__((__const__))
cap_io_port_cap_new(uint64_t capIOPortFirstPort, uint64_t capIOPortLastPort) {
    cap_t cap;


    ;
    ;
    ;

    cap.words[0] = 0
        | ((uint64_t)cap_io_port_cap & 0x1full) << 59
        | (capIOPortFirstPort & 0xffffull) << 40
        | (capIOPortLastPort & 0xffffull) << 24;
    cap.words[1] = 0;

    return cap;
}

static inline uint64_t __attribute__((__const__))
cap_io_port_cap_get_capIOPortFirstPort(cap_t cap) {
    uint64_t ret;

    ;

    ret = (cap.words[0] & 0xffff0000000000ull) >> 40;

    if (__builtin_expect(!!(0 && (ret & (1ull << (47)))), 0)) {
        ret |= 0x0;
    }
    return ret;
}

static inline uint64_t __attribute__((__const__))
cap_io_port_cap_get_capIOPortLastPort(cap_t cap) {
    uint64_t ret;

    ;

    ret = (cap.words[0] & 0xffff000000ull) >> 24;

    if (__builtin_expect(!!(0 && (ret & (1ull << (47)))), 0)) {
        ret |= 0x0;
    }
    return ret;
}

static inline cap_t __attribute__((__const__))
cap_io_port_control_cap_new(void) {
    cap_t cap;


    ;

    cap.words[0] = 0
        | ((uint64_t)cap_io_port_control_cap & 0x1full) << 59;
    cap.words[1] = 0;

    return cap;
}

struct gdt_entry {
    uint64_t words[1];
};
typedef struct gdt_entry gdt_entry_t;

enum gdt_entry_tag {
    gdt_entry_gdt_null = 0,
    gdt_entry_gdt_data = 7,
    gdt_entry_gdt_code = 11
};
typedef enum gdt_entry_tag gdt_entry_tag_t;

static inline gdt_entry_t __attribute__((__const__))
gdt_entry_gdt_null_new(void) {
    gdt_entry_t gdt_entry;


    ;

    gdt_entry.words[0] = 0
        | ((uint64_t)gdt_entry_gdt_null & 0xfull) << 40;

    return gdt_entry;
}

static inline gdt_entry_t __attribute__((__const__))
gdt_entry_gdt_data_new(uint64_t base_high, uint64_t granularity, uint64_t operation_size, uint64_t avl, uint64_t seg_limit_high, uint64_t present, uint64_t dpl, uint64_t always_1, uint64_t base_mid, uint64_t base_low, uint64_t seg_limit_low) {
    gdt_entry_t gdt_entry;


    ;
    ;
    ;
    ;
    ;
    ;
    ;
    ;
    ;
    ;
    ;
    ;

    gdt_entry.words[0] = 0
        | (base_high & 0xffull) << 56
        | (granularity & 0x1ull) << 55
        | (operation_size & 0x1ull) << 54
        | (avl & 0x1ull) << 52
        | (seg_limit_high & 0xfull) << 48
        | (present & 0x1ull) << 47
        | (dpl & 0x3ull) << 45
        | (always_1 & 0x1ull) << 44
        | ((uint64_t)gdt_entry_gdt_data & 0xfull) << 40
        | (base_mid & 0xffull) << 32
        | (base_low & 0xffffull) << 16
        | (seg_limit_low & 0xffffull) << 0;

    return gdt_entry;
}

static inline gdt_entry_t __attribute__((__const__))
gdt_entry_gdt_code_new(uint64_t base_high, uint64_t granularity, uint64_t operation_size, uint64_t long_mode, uint64_t avl, uint64_t seg_limit_high, uint64_t present, uint64_t dpl, uint64_t always_1, uint64_t base_mid, uint64_t base_low, uint64_t seg_limit_low) {
    gdt_entry_t gdt_entry;


    ;
    ;
    ;
    ;
    ;
    ;
    ;
    ;
    ;
    ;
    ;
    ;
    ;

    gdt_entry.words[0] = 0
        | (base_high & 0xffull) << 56
        | (granularity & 0x1ull) << 55
        | (operation_size & 0x1ull) << 54
        | (long_mode & 0x1ull) << 53
        | (avl & 0x1ull) << 52
        | (seg_limit_high & 0xfull) << 48
        | (present & 0x1ull) << 47
        | (dpl & 0x3ull) << 45
        | (always_1 & 0x1ull) << 44
        | ((uint64_t)gdt_entry_gdt_code & 0xfull) << 40
        | (base_mid & 0xffull) << 32
        | (base_low & 0xffffull) << 16
        | (seg_limit_low & 0xffffull) << 0;

    return gdt_entry;
}

struct idt_entry {
    uint64_t words[2];
};
typedef struct idt_entry idt_entry_t;

enum idt_entry_tag {
    idt_entry_interrupt_gate = 14,
    idt_entry_trap_gate = 15
};
typedef enum idt_entry_tag idt_entry_tag_t;

static inline idt_entry_t __attribute__((__const__))
idt_entry_interrupt_gate_new(uint64_t offset_63_32, uint64_t offset_31_16, uint64_t present, uint64_t dpl, uint64_t ist, uint64_t seg_selector, uint64_t offset_15_0) {
    idt_entry_t idt_entry;


    ;
    ;
    ;
    ;
    ;
    ;
    ;
    ;

    idt_entry.words[0] = 0
        | (offset_31_16 & 0xffffull) << 48
        | (present & 0x1ull) << 47
        | (dpl & 0x3ull) << 45
        | ((uint64_t)idt_entry_interrupt_gate & 0xfull) << 40
        | (ist & 0x7ull) << 32
        | (seg_selector & 0xffffull) << 16
        | (offset_15_0 & 0xffffull) << 0;
    idt_entry.words[1] = 0
        | (offset_63_32 & 0xffffffffull) << 0;

    return idt_entry;
}

struct lookup_fault {
    uint64_t words[2];
};
typedef struct lookup_fault lookup_fault_t;

enum lookup_fault_tag {
    lookup_fault_invalid_root = 0,
    lookup_fault_missing_capability = 1,
    lookup_fault_depth_mismatch = 2,
    lookup_fault_guard_mismatch = 3
};
typedef enum lookup_fault_tag lookup_fault_tag_t;

static inline uint64_t __attribute__((__const__))
lookup_fault_get_lufType(lookup_fault_t lookup_fault) {
    return (lookup_fault.words[0] >> 0) & 0x3ull;
}

static inline lookup_fault_t __attribute__((__const__))
lookup_fault_invalid_root_new(void) {
    lookup_fault_t lookup_fault;


    ;

    lookup_fault.words[0] = 0
        | ((uint64_t)lookup_fault_invalid_root & 0x3ull) << 0;
    lookup_fault.words[1] = 0;

    return lookup_fault;
}

static inline lookup_fault_t __attribute__((__const__))
lookup_fault_missing_capability_new(uint64_t bitsLeft) {
    lookup_fault_t lookup_fault;


    ;
    ;

    lookup_fault.words[0] = 0
        | (bitsLeft & 0x7full) << 2
        | ((uint64_t)lookup_fault_missing_capability & 0x3ull) << 0;
    lookup_fault.words[1] = 0;

    return lookup_fault;
}

static inline uint64_t __attribute__((__const__))
lookup_fault_missing_capability_get_bitsLeft(lookup_fault_t lookup_fault) {
    uint64_t ret;

    ;

    ret = (lookup_fault.words[0] & 0x1fcull) >> 2;

    if (__builtin_expect(!!(0 && (ret & (1ull << (47)))), 0)) {
        ret |= 0x0;
    }
    return ret;
}

static inline lookup_fault_t __attribute__((__const__))
lookup_fault_depth_mismatch_new(uint64_t bitsFound, uint64_t bitsLeft) {
    lookup_fault_t lookup_fault;


    ;
    ;
    ;

    lookup_fault.words[0] = 0
        | (bitsFound & 0x7full) << 9
        | (bitsLeft & 0x7full) << 2
        | ((uint64_t)lookup_fault_depth_mismatch & 0x3ull) << 0;
    lookup_fault.words[1] = 0;

    return lookup_fault;
}

static inline uint64_t __attribute__((__const__))
lookup_fault_depth_mismatch_get_bitsFound(lookup_fault_t lookup_fault) {
    uint64_t ret;

    ;

    ret = (lookup_fault.words[0] & 0xfe00ull) >> 9;

    if (__builtin_expect(!!(0 && (ret & (1ull << (47)))), 0)) {
        ret |= 0x0;
    }
    return ret;
}

static inline uint64_t __attribute__((__const__))
lookup_fault_depth_mismatch_get_bitsLeft(lookup_fault_t lookup_fault) {
    uint64_t ret;

    ;

    ret = (lookup_fault.words[0] & 0x1fcull) >> 2;

    if (__builtin_expect(!!(0 && (ret & (1ull << (47)))), 0)) {
        ret |= 0x0;
    }
    return ret;
}

static inline lookup_fault_t __attribute__((__const__))
lookup_fault_guard_mismatch_new(uint64_t guardFound, uint64_t bitsLeft, uint64_t bitsFound) {
    lookup_fault_t lookup_fault;


    ;
    ;
    ;

    lookup_fault.words[0] = 0
        | (bitsLeft & 0x7full) << 9
        | (bitsFound & 0x7full) << 2
        | ((uint64_t)lookup_fault_guard_mismatch & 0x3ull) << 0;
    lookup_fault.words[1] = 0
        | guardFound << 0;

    return lookup_fault;
}

static inline uint64_t __attribute__((__const__))
lookup_fault_guard_mismatch_get_guardFound(lookup_fault_t lookup_fault) {
    uint64_t ret;

    ;

    ret = (lookup_fault.words[1] & 0xffffffffffffffffull) >> 0;

    if (__builtin_expect(!!(0 && (ret & (1ull << (47)))), 0)) {
        ret |= 0x0;
    }
    return ret;
}

static inline uint64_t __attribute__((__const__))
lookup_fault_guard_mismatch_get_bitsLeft(lookup_fault_t lookup_fault) {
    uint64_t ret;

    ;

    ret = (lookup_fault.words[0] & 0xfe00ull) >> 9;

    if (__builtin_expect(!!(0 && (ret & (1ull << (47)))), 0)) {
        ret |= 0x0;
    }
    return ret;
}

static inline uint64_t __attribute__((__const__))
lookup_fault_guard_mismatch_get_bitsFound(lookup_fault_t lookup_fault) {
    uint64_t ret;

    ;

    ret = (lookup_fault.words[0] & 0x1fcull) >> 2;

    if (__builtin_expect(!!(0 && (ret & (1ull << (47)))), 0)) {
        ret |= 0x0;
    }
    return ret;
}

struct pde {
    uint64_t words[1];
};
typedef struct pde pde_t;

enum pde_tag {
    pde_pde_pt = 0,
    pde_pde_large = 1
};
typedef enum pde_tag pde_tag_t;

static inline uint64_t __attribute__((__pure__))
pde_ptr_get_page_size(pde_t *pde_ptr) {
    return (pde_ptr->words[0] >> 7) & 0x1ull;
}

static inline pde_t __attribute__((__const__))
pde_pde_pt_new(uint64_t xd, uint64_t pt_base_address, uint64_t accessed, uint64_t cache_disabled, uint64_t write_through, uint64_t super_user, uint64_t read_write, uint64_t present) {
    pde_t pde;


    ;
    ;
    ;
    ;
    ;
    ;
    ;
    ;
    ;

    pde.words[0] = 0
        | (xd & 0x1ull) << 63
        | (pt_base_address & 0x7fffffffff000ull) >> 0
        | ((uint64_t)pde_pde_pt & 0x1ull) << 7
        | (accessed & 0x1ull) << 5
        | (cache_disabled & 0x1ull) << 4
        | (write_through & 0x1ull) << 3
        | (super_user & 0x1ull) << 2
        | (read_write & 0x1ull) << 1
        | (present & 0x1ull) << 0;

    return pde;
}

static inline uint64_t __attribute__((__pure__))
pde_pde_pt_ptr_get_pt_base_address(pde_t *pde_ptr) {
    uint64_t ret;

    ;

    ret = (pde_ptr->words[0] & 0x7fffffffff000ull) << 0;

    if (__builtin_expect(!!(0 && (ret & (1ull << (50)))), 0)) {
        ret |= 0x0;
    }
    return ret;
}

static inline uint64_t __attribute__((__pure__))
pde_pde_pt_ptr_get_present(pde_t *pde_ptr) {
    uint64_t ret;

    ;

    ret = (pde_ptr->words[0] & 0x1ull) >> 0;

    if (__builtin_expect(!!(0 && (ret & (1ull << (50)))), 0)) {
        ret |= 0x0;
    }
    return ret;
}

static inline pde_t __attribute__((__const__))
pde_pde_large_new(uint64_t xd, uint64_t page_base_address, uint64_t pat, uint64_t global, uint64_t dirty, uint64_t accessed, uint64_t cache_disabled, uint64_t write_through, uint64_t super_user, uint64_t read_write, uint64_t present) {
    pde_t pde;


    ;
    ;
    ;
    ;
    ;
    ;
    ;
    ;
    ;
    ;
    ;
    ;

    pde.words[0] = 0
        | (xd & 0x1ull) << 63
        | (page_base_address & 0x7ffffffe00000ull) >> 0
        | (pat & 0x1ull) << 12
        | (global & 0x1ull) << 8
        | ((uint64_t)pde_pde_large & 0x1ull) << 7
        | (dirty & 0x1ull) << 6
        | (accessed & 0x1ull) << 5
        | (cache_disabled & 0x1ull) << 4
        | (write_through & 0x1ull) << 3
        | (super_user & 0x1ull) << 2
        | (read_write & 0x1ull) << 1
        | (present & 0x1ull) << 0;

    return pde;
}

static inline uint64_t __attribute__((__pure__))
pde_pde_large_ptr_get_page_base_address(pde_t *pde_ptr) {
    uint64_t ret;

    ;

    ret = (pde_ptr->words[0] & 0x7ffffffe00000ull) << 0;

    if (__builtin_expect(!!(0 && (ret & (1ull << (50)))), 0)) {
        ret |= 0x0;
    }
    return ret;
}

static inline uint64_t __attribute__((__pure__))
pde_pde_large_ptr_get_present(pde_t *pde_ptr) {
    uint64_t ret;

    ;

    ret = (pde_ptr->words[0] & 0x1ull) >> 0;

    if (__builtin_expect(!!(0 && (ret & (1ull << (50)))), 0)) {
        ret |= 0x0;
    }
    return ret;
}

struct pdpte {
    uint64_t words[1];
};
typedef struct pdpte pdpte_t;

enum pdpte_tag {
    pdpte_pdpte_1g = 1,
    pdpte_pdpte_pd = 0
};
typedef enum pdpte_tag pdpte_tag_t;

static inline uint64_t __attribute__((__pure__))
pdpte_ptr_get_page_size(pdpte_t *pdpte_ptr) {
    return (pdpte_ptr->words[0] >> 7) & 0x1ull;
}

static inline pdpte_t __attribute__((__const__))
pdpte_pdpte_1g_new(uint64_t xd, uint64_t page_base_address, uint64_t pat, uint64_t global, uint64_t dirty, uint64_t accessed, uint64_t cache_disabled, uint64_t write_through, uint64_t super_user, uint64_t read_write, uint64_t present) {
    pdpte_t pdpte;


    ;
    ;
    ;
    ;
    ;
    ;
    ;
    ;
    ;
    ;
    ;
    ;

    pdpte.words[0] = 0
        | (xd & 0x1ull) << 63
        | (page_base_address & 0x7ffffc0000000ull) >> 0
        | (pat & 0x1ull) << 12
        | (global & 0x1ull) << 8
        | ((uint64_t)pdpte_pdpte_1g & 0x1ull) << 7
        | (dirty & 0x1ull) << 6
        | (accessed & 0x1ull) << 5
        | (cache_disabled & 0x1ull) << 4
        | (write_through & 0x1ull) << 3
        | (super_user & 0x1ull) << 2
        | (read_write & 0x1ull) << 1
        | (present & 0x1ull) << 0;

    return pdpte;
}

static inline uint64_t __attribute__((__pure__))
pdpte_pdpte_1g_ptr_get_page_base_address(pdpte_t *pdpte_ptr) {
    uint64_t ret;

    ;

    ret = (pdpte_ptr->words[0] & 0x7ffffc0000000ull) << 0;

    if (__builtin_expect(!!(0 && (ret & (1ull << (50)))), 0)) {
        ret |= 0x0;
    }
    return ret;
}

static inline uint64_t __attribute__((__pure__))
pdpte_pdpte_1g_ptr_get_present(pdpte_t *pdpte_ptr) {
    uint64_t ret;

    ;

    ret = (pdpte_ptr->words[0] & 0x1ull) >> 0;

    if (__builtin_expect(!!(0 && (ret & (1ull << (50)))), 0)) {
        ret |= 0x0;
    }
    return ret;
}

static inline pdpte_t __attribute__((__const__))
pdpte_pdpte_pd_new(uint64_t xd, uint64_t pd_base_address, uint64_t accessed, uint64_t cache_disabled, uint64_t write_through, uint64_t super_user, uint64_t read_write, uint64_t present) {
    pdpte_t pdpte;


    ;
    ;
    ;
    ;
    ;
    ;
    ;
    ;
    ;

    pdpte.words[0] = 0
        | (xd & 0x1ull) << 63
        | (pd_base_address & 0x7fffffffff000ull) >> 0
        | ((uint64_t)pdpte_pdpte_pd & 0x1ull) << 7
        | (accessed & 0x1ull) << 5
        | (cache_disabled & 0x1ull) << 4
        | (write_through & 0x1ull) << 3
        | (super_user & 0x1ull) << 2
        | (read_write & 0x1ull) << 1
        | (present & 0x1ull) << 0;

    return pdpte;
}

static inline uint64_t __attribute__((__pure__))
pdpte_pdpte_pd_ptr_get_pd_base_address(pdpte_t *pdpte_ptr) {
    uint64_t ret;

    ;

    ret = (pdpte_ptr->words[0] & 0x7fffffffff000ull) << 0;

    if (__builtin_expect(!!(0 && (ret & (1ull << (50)))), 0)) {
        ret |= 0x0;
    }
    return ret;
}

static inline uint64_t __attribute__((__pure__))
pdpte_pdpte_pd_ptr_get_present(pdpte_t *pdpte_ptr) {
    uint64_t ret;

    ;

    ret = (pdpte_ptr->words[0] & 0x1ull) >> 0;

    if (__builtin_expect(!!(0 && (ret & (1ull << (50)))), 0)) {
        ret |= 0x0;
    }
    return ret;
}

struct seL4_Fault {
    uint64_t words[2];
};
typedef struct seL4_Fault seL4_Fault_t;

enum seL4_Fault_tag {
    seL4_Fault_NullFault = 0,
    seL4_Fault_CapFault = 1,
    seL4_Fault_UnknownSyscall = 2,
    seL4_Fault_UserException = 3,
    seL4_Fault_VMFault = 5
};
typedef enum seL4_Fault_tag seL4_Fault_tag_t;

static inline uint64_t __attribute__((__const__))
seL4_Fault_get_seL4_FaultType(seL4_Fault_t seL4_Fault) {
    return (seL4_Fault.words[0] >> 0) & 0xfull;
}

static inline seL4_Fault_t __attribute__((__const__))
seL4_Fault_NullFault_new(void) {
    seL4_Fault_t seL4_Fault;


    ;

    seL4_Fault.words[0] = 0
        | ((uint64_t)seL4_Fault_NullFault & 0xfull) << 0;
    seL4_Fault.words[1] = 0;

    return seL4_Fault;
}

static inline seL4_Fault_t __attribute__((__const__))
seL4_Fault_CapFault_new(uint64_t address, uint64_t inReceivePhase) {
    seL4_Fault_t seL4_Fault;


    ;
    ;

    seL4_Fault.words[0] = 0
        | (inReceivePhase & 0x1ull) << 63
        | ((uint64_t)seL4_Fault_CapFault & 0xfull) << 0;
    seL4_Fault.words[1] = 0
        | address << 0;

    return seL4_Fault;
}

static inline uint64_t __attribute__((__const__))
seL4_Fault_CapFault_get_address(seL4_Fault_t seL4_Fault) {
    uint64_t ret;

    ;

    ret = (seL4_Fault.words[1] & 0xffffffffffffffffull) >> 0;

    if (__builtin_expect(!!(0 && (ret & (1ull << (50)))), 0)) {
        ret |= 0x0;
    }
    return ret;
}

static inline uint64_t __attribute__((__const__))
seL4_Fault_CapFault_get_inReceivePhase(seL4_Fault_t seL4_Fault) {
    uint64_t ret;

    ;

    ret = (seL4_Fault.words[0] & 0x8000000000000000ull) >> 63;

    if (__builtin_expect(!!(0 && (ret & (1ull << (50)))), 0)) {
        ret |= 0x0;
    }
    return ret;
}

static inline seL4_Fault_t __attribute__((__const__))
seL4_Fault_UnknownSyscall_new(uint64_t syscallNumber) {
    seL4_Fault_t seL4_Fault;


    ;

    seL4_Fault.words[0] = 0
        | ((uint64_t)seL4_Fault_UnknownSyscall & 0xfull) << 0;
    seL4_Fault.words[1] = 0
        | syscallNumber << 0;

    return seL4_Fault;
}

static inline uint64_t __attribute__((__const__))
seL4_Fault_UnknownSyscall_get_syscallNumber(seL4_Fault_t seL4_Fault) {
    uint64_t ret;

    ;

    ret = (seL4_Fault.words[1] & 0xffffffffffffffffull) >> 0;

    if (__builtin_expect(!!(0 && (ret & (1ull << (50)))), 0)) {
        ret |= 0x0;
    }
    return ret;
}

static inline seL4_Fault_t __attribute__((__const__))
seL4_Fault_UserException_new(uint64_t number, uint64_t code) {
    seL4_Fault_t seL4_Fault;


    ;
    ;
    ;

    seL4_Fault.words[0] = 0
        | (number & 0xffffffffull) << 32
        | (code & 0xfffffffull) << 4
        | ((uint64_t)seL4_Fault_UserException & 0xfull) << 0;
    seL4_Fault.words[1] = 0;

    return seL4_Fault;
}

static inline uint64_t __attribute__((__const__))
seL4_Fault_UserException_get_number(seL4_Fault_t seL4_Fault) {
    uint64_t ret;

    ;

    ret = (seL4_Fault.words[0] & 0xffffffff00000000ull) >> 32;

    if (__builtin_expect(!!(0 && (ret & (1ull << (50)))), 0)) {
        ret |= 0x0;
    }
    return ret;
}

static inline uint64_t __attribute__((__const__))
seL4_Fault_UserException_get_code(seL4_Fault_t seL4_Fault) {
    uint64_t ret;

    ;

    ret = (seL4_Fault.words[0] & 0xfffffff0ull) >> 4;

    if (__builtin_expect(!!(0 && (ret & (1ull << (50)))), 0)) {
        ret |= 0x0;
    }
    return ret;
}

static inline seL4_Fault_t __attribute__((__const__))
seL4_Fault_VMFault_new(uint64_t address, uint64_t FSR, uint64_t instructionFault) {
    seL4_Fault_t seL4_Fault;


    ;
    ;
    ;

    seL4_Fault.words[0] = 0
        | (FSR & 0x1full) << 27
        | (instructionFault & 0x1ull) << 19
        | ((uint64_t)seL4_Fault_VMFault & 0xfull) << 0;
    seL4_Fault.words[1] = 0
        | address << 0;

    return seL4_Fault;
}

static inline uint64_t __attribute__((__const__))
seL4_Fault_VMFault_get_address(seL4_Fault_t seL4_Fault) {
    uint64_t ret;

    ;

    ret = (seL4_Fault.words[1] & 0xffffffffffffffffull) >> 0;

    if (__builtin_expect(!!(0 && (ret & (1ull << (50)))), 0)) {
        ret |= 0x0;
    }
    return ret;
}

static inline uint64_t __attribute__((__const__))
seL4_Fault_VMFault_get_FSR(seL4_Fault_t seL4_Fault) {
    uint64_t ret;

    ;

    ret = (seL4_Fault.words[0] & 0xf8000000ull) >> 27;

    if (__builtin_expect(!!(0 && (ret & (1ull << (50)))), 0)) {
        ret |= 0x0;
    }
    return ret;
}

static inline uint64_t __attribute__((__const__))
seL4_Fault_VMFault_get_instructionFault(seL4_Fault_t seL4_Fault) {
    uint64_t ret;

    ;

    ret = (seL4_Fault.words[0] & 0x80000ull) >> 19;

    if (__builtin_expect(!!(0 && (ret & (1ull << (50)))), 0)) {
        ret |= 0x0;
    }
    return ret;
}

struct x86_irq_state {
    uint32_t words[2];
};
typedef struct x86_irq_state x86_irq_state_t;

enum x86_irq_state_tag {
    x86_irq_state_irq_free = 0,
    x86_irq_state_irq_ioapic = 1,
    x86_irq_state_irq_msi = 2,
    x86_irq_state_irq_reserved = 3
};
typedef enum x86_irq_state_tag x86_irq_state_tag_t;

static inline uint32_t __attribute__((__const__))
x86_irq_state_get_irqType(x86_irq_state_t x86_irq_state) {
    return (x86_irq_state.words[1] >> 28) & 0xfu;
}

static inline x86_irq_state_t __attribute__((__const__))
x86_irq_state_irq_free_new(void) {
    x86_irq_state_t x86_irq_state;


    ;

    x86_irq_state.words[0] = 0;
    x86_irq_state.words[1] = 0
        | ((uint32_t)x86_irq_state_irq_free & 0xfu) << 28;

    return x86_irq_state;
}

static inline x86_irq_state_t __attribute__((__const__))
x86_irq_state_irq_ioapic_new(uint32_t id, uint32_t pin, uint32_t level, uint32_t polarity_low, uint32_t masked) {
    x86_irq_state_t x86_irq_state;


    ;
    ;
    ;
    ;
    ;
    ;

    x86_irq_state.words[0] = 0;
    x86_irq_state.words[1] = 0
        | ((uint32_t)x86_irq_state_irq_ioapic & 0xfu) << 28
        | (id & 0x1fu) << 23
        | (pin & 0x1fu) << 18
        | (level & 0x1u) << 17
        | (polarity_low & 0x1u) << 16
        | (masked & 0x1u) << 15;

    return x86_irq_state;
}

static inline uint32_t __attribute__((__const__))
x86_irq_state_irq_ioapic_get_id(x86_irq_state_t x86_irq_state) {
    uint32_t ret;

    ;

    ret = (x86_irq_state.words[1] & 0xf800000u) >> 23;

    if (__builtin_expect(!!(0 && (ret & (1u << (31)))), 0)) {
        ret |= 0x0;
    }
    return ret;
}

static inline uint32_t __attribute__((__const__))
x86_irq_state_irq_ioapic_get_pin(x86_irq_state_t x86_irq_state) {
    uint32_t ret;

    ;

    ret = (x86_irq_state.words[1] & 0x7c0000u) >> 18;

    if (__builtin_expect(!!(0 && (ret & (1u << (31)))), 0)) {
        ret |= 0x0;
    }
    return ret;
}

static inline x86_irq_state_t __attribute__((__const__))
x86_irq_state_irq_ioapic_set_masked(x86_irq_state_t x86_irq_state, uint32_t v32) {

    ;

    ;

    x86_irq_state.words[1] &= ~0x8000u;
    x86_irq_state.words[1] |= (v32 << 15) & 0x8000u;
    return x86_irq_state;
}

static inline x86_irq_state_t __attribute__((__const__))
x86_irq_state_irq_msi_new(uint32_t bus, uint32_t dev, uint32_t func, uint32_t handle) {
    x86_irq_state_t x86_irq_state;


    ;
    ;
    ;
    ;

    x86_irq_state.words[0] = 0
        | handle << 0;
    x86_irq_state.words[1] = 0
        | ((uint32_t)x86_irq_state_irq_msi & 0xfu) << 28
        | (bus & 0xffu) << 20
        | (dev & 0x1fu) << 15
        | (func & 0x7u) << 12;

    return x86_irq_state;
}

static inline x86_irq_state_t __attribute__((__const__))
x86_irq_state_irq_reserved_new(void) {
    x86_irq_state_t x86_irq_state;


    ;

    x86_irq_state.words[0] = 0;
    x86_irq_state.words[1] = 0
        | ((uint32_t)x86_irq_state_irq_reserved & 0xfu) << 28;

    return x86_irq_state;
}
# 13 "/workspace/seL4-c89/preconfigured/include/object/structures.h" 2


# 1 "/workspace/seL4-c89/preconfigured/libsel4/arch_include/x86/sel4/arch/constants.h" 1






       
# 16 "/workspace/seL4-c89/preconfigured/include/object/structures.h" 2

# 1 "/workspace/seL4-c89/preconfigured/include/benchmark/benchmark_utilisation_.h" 1






       
# 18 "/workspace/seL4-c89/preconfigured/include/object/structures.h" 2

enum irq_state {
    IRQInactive = 0,
    IRQSignal = 1,
    IRQTimer = 2,



    IRQReserved
};
typedef word_t irq_state_t;

typedef struct dschedule {
    dom_t domain;
    word_t length;
} dschedule_t;

enum asidSizeConstants {
    asidHighBits = 3,
    asidLowBits = 9
};


enum endpoint_state {
    EPState_Idle = 0,
    EPState_Send = 1,
    EPState_Recv = 2
};
typedef word_t endpoint_state_t;

enum notification_state {
    NtfnState_Idle = 0,
    NtfnState_Waiting = 1,
    NtfnState_Active = 2
};
typedef word_t notification_state_t;
# 112 "/workspace/seL4-c89/preconfigured/include/object/structures.h"
static inline cap_t __attribute__((__const__)) Zombie_new(word_t number, word_t type, word_t ptr)
{
    word_t mask;

    if (type == (1ul << (6))) {
        mask = ((1ul << (4 + 1)) - 1ul);
    } else {
        mask = ((1ul << (type + 1)) - 1ul);
    }

    return cap_zombie_cap_new((ptr & ~mask) | (number & mask), type);
}

static inline word_t __attribute__((__const__)) cap_zombie_cap_get_capZombieBits(cap_t cap)
{
    word_t type = cap_zombie_cap_get_capZombieType(cap);
    if (type == (1ul << (6))) {
        return 4;
    }
    return ((type) & ((1ul << (6)) - 1ul));
}

static inline word_t __attribute__((__const__)) cap_zombie_cap_get_capZombieNumber(cap_t cap)
{
    word_t radix = cap_zombie_cap_get_capZombieBits(cap);
    return cap_zombie_cap_get_capZombieID(cap) & ((1ul << (radix + 1)) - 1ul);
}

static inline word_t __attribute__((__const__)) cap_zombie_cap_get_capZombiePtr(cap_t cap)
{
    word_t radix = cap_zombie_cap_get_capZombieBits(cap);
    return cap_zombie_cap_get_capZombieID(cap) & ~((1ul << (radix + 1)) - 1ul);
}

static inline cap_t __attribute__((__const__)) cap_zombie_cap_set_capZombieNumber(cap_t cap, word_t n)
{
    word_t radix = cap_zombie_cap_get_capZombieBits(cap);
    word_t ptr = cap_zombie_cap_get_capZombieID(cap) & ~((1ul << (radix + 1)) - 1ul);
    return cap_zombie_cap_set_capZombieID(cap, ptr | (n & ((1ul << (radix + 1)) - 1ul)));
}


struct cte {
    cap_t cap;
    mdb_node_t cteMDBNode;
};
typedef struct cte cte_t;




enum _thread_state {
    ThreadState_Inactive = 0,
    ThreadState_Running,
    ThreadState_Restart,
    ThreadState_BlockedOnReceive,
    ThreadState_BlockedOnSend,
    ThreadState_BlockedOnReply,
    ThreadState_BlockedOnNotification,



    ThreadState_IdleThreadState
};
typedef word_t _thread_state_t;



enum tcb_cnode_index {

    tcbCTable = 0,


    tcbVTable = 1,
# 198 "/workspace/seL4-c89/preconfigured/include/object/structures.h"
    tcbReply = 2,


    tcbCaller = 3,


    tcbBuffer = 4,

    tcbCNodeEntries
};
typedef word_t tcb_cnode_index_t;

# 1 "/workspace/seL4-c89/preconfigured/include/arch/x86/arch/object/structures.h" 1






       
# 16 "/workspace/seL4-c89/preconfigured/include/arch/x86/arch/object/structures.h"
# 1 "/workspace/seL4-c89/preconfigured/include/arch/x86/arch/machine/hardware.h" 1






       




# 1 "/workspace/seL4-c89/preconfigured/include/linker.h" 1






       


# 1 "/workspace/seL4-c89/preconfigured/include/arch/x86/arch/linker.h" 1






       
# 11 "/workspace/seL4-c89/preconfigured/include/linker.h" 2
# 13 "/workspace/seL4-c89/preconfigured/include/arch/x86/arch/machine/hardware.h" 2
# 21 "/workspace/seL4-c89/preconfigured/include/arch/x86/arch/machine/hardware.h"
enum vm_fault_type {
    X86DataFault = 0,
    X86InstructionFault = 1
};

typedef word_t vm_fault_type_t;

enum vm_page_size {
    X86_SmallPage,
    X86_LargePage,
    X64_HugePage
};
typedef word_t vm_page_size_t;

enum frameSizeConstants {
    X64SmallPageBits = 12,
    X64LargePageBits = 21,
    X64HugePageBits = 30
};

enum vm_page_map_type {
    X86_MappingNone = 0,
    X86_MappingVSpace,






};
typedef word_t vm_page_map_type_t;



static inline word_t __attribute__((__const__)) pageBitsForSize(vm_page_size_t pagesize)
{
    switch (pagesize) {
    case X86_SmallPage:
        return 12;

    case X86_LargePage:
        return 21;

    case X64_HugePage:
        return 30;

    default:
        halt();
    }
}





__attribute__((__section__(".phys.text")))
static inline word_t __attribute__((__const__)) pageBitsForSize_phys(vm_page_size_t pagesize)
{
    switch (pagesize) {
    case X86_SmallPage:
        return 12;

    case X86_LargePage:
        return 21;

    case X64_HugePage:
        return 30;

    default:
        halt();
    }
}


uint32_t __attribute__((__const__)) getCacheLineSize(void);
uint32_t __attribute__((__const__)) getCacheLineSizeBits(void);


static inline void flushCacheLine(volatile void *vaddr)
{
    __asm__ volatile("clflush %[vaddr]" : [vaddr] "+m"(*((volatile char *)vaddr)));
}

void flushCacheRange(void *vaddr, uint32_t size_bits);


bool_t disablePrefetchers(void);


__attribute__((__section__(".boot.text"))) void enablePMCUser(void);


static inline void x86_wbinvd(void)
{
    __asm__ volatile("wbinvd" ::: "memory");
}

static inline void arch_clean_invalidate_caches(void)
{
    x86_wbinvd();
}


bool_t init_ibrs(void);
# 17 "/workspace/seL4-c89/preconfigured/include/arch/x86/arch/object/structures.h" 2
# 1 "/workspace/seL4-c89/preconfigured/include/arch/x86/arch/machine/registerset.h" 1






       






# 1 "/workspace/seL4-c89/preconfigured/include/arch/x86/arch/64/mode/machine/registerset.h" 1






       
# 23 "/workspace/seL4-c89/preconfigured/include/arch/x86/arch/64/mode/machine/registerset.h"
enum _register {




    RDI = 0,
    capRegister = 0,
    badgeRegister = 0,
    RSI = 1,
    msgInfoRegister = 1,
    RAX = 2,
    RBX = 3,
    RBP = 4,
    R12 = 5,



    R13 = 6,



    R14 = 7,
    RDX = 8,

    R10 = 9,
    R8 = 10,
    R9 = 11,
    R15 = 12,
    FLAGS = 13,


    NextIP = 14,

    Error = 15,

    RSP = 16,
    FaultIP = 17,

    R11 = 18,
    RCX = 19,
    CS = 20,
    SS = 21,
    n_immContextRegisters = 22,


    FS_BASE = 22,
    TLS_BASE = FS_BASE,
    GS_BASE = 23,

    n_contextRegisters = 24
};

typedef uint32_t register_t;

enum messageSizes {
    n_msgRegisters = 4,
    n_frameRegisters = 18,
    n_gpRegisters = 2,
    n_exceptionMessage = 3,
    n_syscallMessage = 18,



};
# 140 "/workspace/seL4-c89/preconfigured/include/arch/x86/arch/64/mode/machine/registerset.h"
extern const register_t msgRegisters[];
extern const register_t frameRegisters[];
extern const register_t gpRegisters[];
# 15 "/workspace/seL4-c89/preconfigured/include/arch/x86/arch/machine/registerset.h" 2
# 57 "/workspace/seL4-c89/preconfigured/include/arch/x86/arch/machine/registerset.h"
struct user_fpu_state {
    uint8_t state[576];
};
typedef struct user_fpu_state user_fpu_state_t;


struct user_context {
    user_fpu_state_t fpuState;
    word_t registers[n_contextRegisters];







};
typedef struct user_context user_context_t;

void Mode_initContext(user_context_t *context);
void Arch_initContext(user_context_t *context);
word_t Mode_sanitiseRegister(register_t reg, word_t v);



# 18 "/workspace/seL4-c89/preconfigured/include/arch/x86/arch/object/structures.h" 2


enum tcb_arch_cnode_index {





    tcbArchCNodeEntries = tcbCNodeEntries

};

typedef struct arch_tcb {
    user_context_t tcbContext;





} arch_tcb_t;
# 61 "/workspace/seL4-c89/preconfigured/include/arch/x86/arch/object/structures.h"
typedef int __assert_failed_vtd_pt_size_sane[(9 + 3 == 12) ? 1 : -1] __attribute__((unused));
# 120 "/workspace/seL4-c89/preconfigured/include/arch/x86/arch/object/structures.h"
struct rdmsr_safe_result {
    uint64_t value;
    bool_t success;
};

typedef struct rdmsr_safe_result rdmsr_safe_result_t;


typedef struct gdt_idt_ptr {
    uint16_t limit;
    word_t base;
} __attribute__((packed)) gdt_idt_ptr_t;

enum vm_rights {
    VMKernelOnly = 1,
    VMReadOnly = 2,
    VMReadWrite = 3
};
typedef word_t vm_rights_t;

# 1 "/workspace/seL4-c89/preconfigured/include/arch/x86/arch/64/mode/object/structures.h" 1






       
# 25 "/workspace/seL4-c89/preconfigured/include/arch/x86/arch/64/mode/object/structures.h"
typedef int __assert_failed_gdt_idt_ptr_packed[(sizeof(gdt_idt_ptr_t) == sizeof(uint16_t) * 5) ? 1 : -1] __attribute__((unused));


typedef int __assert_failed_unsigned_long_size_64[(sizeof(unsigned long) == 8) ? 1 : -1] __attribute__((unused));


typedef int __assert_failed_unsigned_int_size_32[(sizeof(unsigned int) == 4) ? 1 : -1] __attribute__((unused));


typedef int __assert_failed_uint64_t_size_64[(sizeof(uint64_t) == 8) ? 1 : -1] __attribute__((unused));
# 59 "/workspace/seL4-c89/preconfigured/include/arch/x86/arch/64/mode/object/structures.h"
typedef pml4e_t vspace_root_t;
# 99 "/workspace/seL4-c89/preconfigured/include/arch/x86/arch/64/mode/object/structures.h"
struct asid_pool {
    asid_map_t array[(1ul << (asidLowBits))];
};

typedef struct asid_pool asid_pool_t;
# 114 "/workspace/seL4-c89/preconfigured/include/arch/x86/arch/64/mode/object/structures.h"
static inline asid_t __attribute__((__pure__)) cap_get_capMappedASID(cap_t cap)
{
    cap_tag_t ctag;

    ctag = cap_get_capType(cap);

    switch (ctag) {

    case cap_pml4_cap:
        return cap_pml4_cap_get_capPML4MappedASID(cap);

    case cap_pdpt_cap:
        return cap_pdpt_cap_get_capPDPTMappedASID(cap);

    case cap_page_directory_cap:
        return cap_page_directory_cap_get_capPDMappedASID(cap);






    default:
        halt();
    }
}

static inline word_t __attribute__((__const__)) cap_get_modeCapSizeBits(cap_t cap)
{
    cap_tag_t ctag;

    ctag = cap_get_capType(cap);

    switch (ctag) {
    case cap_pml4_cap:
        return 12;

    case cap_pdpt_cap:
        return 12;

    default:
        return 0;
    }
}

static inline bool_t __attribute__((__const__)) cap_get_modeCapIsPhysical(cap_t cap)
{
    cap_tag_t ctag;

    ctag = cap_get_capType(cap);

    switch (ctag) {

    case cap_pml4_cap:
        return true;

    case cap_pdpt_cap:
        return true;

    default:
        return false;
    }
}

static inline void *__attribute__((__const__)) cap_get_modeCapPtr(cap_t cap)
{
    cap_tag_t ctag;

    ctag = cap_get_capType(cap);

    switch (ctag) {
    case cap_pml4_cap:
        return ((pml4e_t *)(cap_pml4_cap_get_capPML4BasePtr(cap)));

    case cap_pdpt_cap:
        return ((pdpte_t *)(cap_pdpt_cap_get_capPDPTBasePtr(cap)));

    default:
        return ((void *)0);
    }
}
# 141 "/workspace/seL4-c89/preconfigured/include/arch/x86/arch/object/structures.h" 2

static inline word_t __attribute__((__const__)) cap_get_archCapSizeBits(cap_t cap)
{
    cap_tag_t ctag;

    ctag = cap_get_capType(cap);

    switch (ctag) {
    case cap_frame_cap:
        return pageBitsForSize(cap_frame_cap_get_capFSize(cap));

    case cap_page_table_cap:
        return 12;

    case cap_page_directory_cap:
        return 12;

    case cap_io_port_cap:
        return 0;
# 168 "/workspace/seL4-c89/preconfigured/include/arch/x86/arch/object/structures.h"
    case cap_asid_control_cap:
        return 0;

    case cap_asid_pool_cap:
        return 12;
# 188 "/workspace/seL4-c89/preconfigured/include/arch/x86/arch/object/structures.h"
    default:
        return cap_get_modeCapSizeBits(cap);
    }
}

static inline bool_t __attribute__((__const__)) cap_get_archCapIsPhysical(cap_t cap)
{
    cap_tag_t ctag;

    ctag = cap_get_capType(cap);

    switch (ctag) {

    case cap_frame_cap:
        return true;

    case cap_page_table_cap:
        return true;

    case cap_page_directory_cap:
        return true;

    case cap_io_port_cap:
        return false;
# 221 "/workspace/seL4-c89/preconfigured/include/arch/x86/arch/object/structures.h"
    case cap_asid_control_cap:
        return false;

    case cap_asid_pool_cap:
        return true;
# 241 "/workspace/seL4-c89/preconfigured/include/arch/x86/arch/object/structures.h"
    default:
        return cap_get_modeCapIsPhysical(cap);
    }
}

static inline void *__attribute__((__const__)) cap_get_archCapPtr(cap_t cap)
{
    cap_tag_t ctag;

    ctag = cap_get_capType(cap);

    switch (ctag) {

    case cap_frame_cap:
        return (void *)(cap_frame_cap_get_capFBasePtr(cap));

    case cap_page_table_cap:
        return ((pte_t *)(cap_page_table_cap_get_capPTBasePtr(cap)));

    case cap_page_directory_cap:
        return ((pde_t *)(cap_page_directory_cap_get_capPDBasePtr(cap)));

    case cap_io_port_cap:
        return ((void *)0);
# 274 "/workspace/seL4-c89/preconfigured/include/arch/x86/arch/object/structures.h"
    case cap_asid_control_cap:
        return ((void *)0);

    case cap_asid_pool_cap:
        return ((asid_pool_t*)cap_asid_pool_cap_get_capASIDPool(cap));
# 294 "/workspace/seL4-c89/preconfigured/include/arch/x86/arch/object/structures.h"
    default:
        return cap_get_modeCapPtr(cap);
    }
}

static inline bool_t __attribute__((__const__)) Arch_isCapRevocable(cap_t derivedCap, cap_t srcCap)
{
    switch (cap_get_capType(derivedCap)) {
    case cap_io_port_cap:
        return cap_get_capType(srcCap) == cap_io_port_control_cap;

    default:
        return false;
    }
}
# 211 "/workspace/seL4-c89/preconfigured/include/object/structures.h" 2

struct user_data {
    word_t words[(1ul << (12)) / sizeof(word_t)];
};
typedef struct user_data user_data_t;

struct user_data_device {
    word_t words[(1ul << (12)) / sizeof(word_t)];
};
typedef struct user_data_device user_data_device_t;

static inline word_t __attribute__((__const__)) wordFromVMRights(vm_rights_t vm_rights)
{
    return (word_t)vm_rights;
}

static inline vm_rights_t __attribute__((__const__)) vmRightsFromWord(word_t w)
{
    return (vm_rights_t)w;
}

static inline vm_attributes_t __attribute__((__const__)) vmAttributesFromWord(word_t w)
{
    vm_attributes_t attr;

    attr.words[0] = w;
    return attr;
}






struct tcb {

    arch_tcb_t tcbArch;


    thread_state_t tcbState;


    word_t tcbFlags;




    notification_t *tcbBoundNotification;


    seL4_Fault_t tcbFault;


    lookup_fault_t tcbLookupFailure;


    dom_t tcbDomain;


    prio_t tcbMCP;


    prio_t tcbPriority;
# 284 "/workspace/seL4-c89/preconfigured/include/object/structures.h"
    word_t tcbTimeSlice;


    cptr_t tcbFaultHandler;



    word_t tcbIPCBuffer;







    struct tcb *tcbSchedNext;
    struct tcb *tcbSchedPrev;

    struct tcb *tcbEPNext;
    struct tcb *tcbEPPrev;





};
typedef struct tcb tcb_t;
# 404 "/workspace/seL4-c89/preconfigured/include/object/structures.h"
typedef int __assert_failed_cte_size_sane[(sizeof(cte_t) == (1ul << (5))) ? 1 : -1] __attribute__((unused));
typedef int __assert_failed_tcb_cte_size_sane[((4 + 5) <= (11 - 1)) ? 1 : -1] __attribute__((unused));
typedef int __assert_failed_tcb_size_sane[((1ul << ((11 - 1))) >= sizeof(tcb_t)) ? 1 : -1] __attribute__((unused));

typedef int __assert_failed_tcb_size_not_excessive[((1ul << ((11 - 1) - 1)) < sizeof(tcb_t)) ? 1 : -1] __attribute__((unused));

typedef int __assert_failed_ep_size_sane[(sizeof(endpoint_t) == (1ul << (4))) ? 1 : -1] __attribute__((unused));
typedef int __assert_failed_notification_size_sane[(sizeof(notification_t) == (1ul << (5))) ? 1 : -1] __attribute__((unused));


typedef int __assert_failed_ipc_buf_size_sane[(sizeof(seL4_IPCBuffer) == (1ul << (10))) ? 1 : -1] __attribute__((unused));
# 424 "/workspace/seL4-c89/preconfigured/include/object/structures.h"
static inline word_t __attribute__((__const__))
isArchCap(cap_t cap)
{
    return (cap_get_capType(cap) % 2);
}
# 12 "/workspace/seL4-c89/preconfigured/include/compound_types.h" 2


struct pde_range {
    pde_t *base;
    word_t length;
};
typedef struct pde_range pde_range_t;

struct pte_range {
    pte_t *base;
    word_t length;
};
typedef struct pte_range pte_range_t;

typedef cte_t *cte_ptr_t;

struct extra_caps {
    cte_ptr_t excaprefs[((1ul<<(seL4_MsgExtraCapBits))-1)];
};
typedef struct extra_caps extra_caps_t;
# 11 "/workspace/seL4-c89/preconfigured/include/types.h" 2
# 9 "/workspace/seL4-c89/preconfigured/src/api/faults.c" 2
# 1 "/workspace/seL4-c89/preconfigured/include/api/faults.h" 1






       




word_t setMRs_fault(tcb_t *sender, tcb_t *receiver, word_t *receiveIPCBuffer);
word_t Arch_setMRs_fault(tcb_t *sender, tcb_t *receiver, word_t *receiveIPCBuffer, word_t faultType);

bool_t handleFaultReply(tcb_t *receiver, tcb_t *sender);
bool_t Arch_handleFaultReply(tcb_t *receiver, tcb_t *sender, word_t faultType);
# 10 "/workspace/seL4-c89/preconfigured/src/api/faults.c" 2
# 1 "/workspace/seL4-c89/preconfigured/include/api/syscall.h" 1






       


# 1 "/workspace/seL4-c89/preconfigured/include/machine.h" 1






       

# 1 "/workspace/seL4-c89/preconfigured/include/plat/pc99/plat/machine.h" 1






       

# 1 "/workspace/seL4-c89/preconfigured/include/machine/interrupt.h" 1






       
# 44 "/workspace/seL4-c89/preconfigured/include/machine/interrupt.h"
typedef word_t irq_t;
# 63 "/workspace/seL4-c89/preconfigured/include/machine/interrupt.h"
static inline irq_t getActiveIRQ(void);
# 75 "/workspace/seL4-c89/preconfigured/include/machine/interrupt.h"
static inline bool_t isIRQPending(void);
# 85 "/workspace/seL4-c89/preconfigured/include/machine/interrupt.h"
static inline void maskInterrupt(bool_t disable, irq_t irq);
# 98 "/workspace/seL4-c89/preconfigured/include/machine/interrupt.h"
static inline void ackInterrupt(irq_t irq);
# 112 "/workspace/seL4-c89/preconfigured/include/machine/interrupt.h"
static inline void deactivateInterrupt(irq_t irq);






static inline void handleSpuriousIRQ(void);
# 131 "/workspace/seL4-c89/preconfigured/include/machine/interrupt.h"
static inline void handleReservedIRQ(irq_t irq);



static inline void deactivateInterrupt(irq_t irq) {}
# 10 "/workspace/seL4-c89/preconfigured/include/plat/pc99/plat/machine.h" 2
# 19 "/workspace/seL4-c89/preconfigured/include/plat/pc99/plat/machine.h"
typedef enum _interrupt_t {
    int_invalid = -1,
    int_debug = 1,
    int_software_break_request = 3,
    int_unimpl_dev = 7,
    int_gp_fault = 13,
    int_page_fault = 14,
    int_irq_min = 0x20,
    int_irq_isa_min = 0x20,
    int_irq_isa_max = 0x20 + 16 - 1,
    int_irq_user_min = 0x20 + 16,
    int_irq_user_max = 155,



    int_timer = 157,





    int_irq_max = 157,

    int_trap_min,
    int_trap_max = 254,
    int_spurious = 255,
    int_max = 255
} interrupt_t;

typedef enum _platform_irq_t {
    irq_isa_min = int_irq_isa_min - 0x20,
    irq_isa_max = int_irq_isa_max - 0x20,
    irq_user_min = int_irq_user_min - 0x20,
    irq_user_max = int_irq_user_max - 0x20,



    irq_timer = int_timer - 0x20,




    maxIRQ = int_irq_max - 0x20,



    irqInvalid = 255,
} platform_irq_t;
# 10 "/workspace/seL4-c89/preconfigured/include/machine.h" 2
# 1 "/workspace/seL4-c89/preconfigured/include/machine/registerset.h" 1






       






typedef enum {
    MessageID_Syscall,
    MessageID_Exception,



} MessageID_t;






extern const register_t fault_messages[][(((n_syscallMessage)>(n_exceptionMessage))?(n_syscallMessage):(n_exceptionMessage))] __attribute__((externally_visible));

static inline void setRegister(tcb_t *thread, register_t reg, word_t w)
{
    thread->tcbArch.tcbContext.registers[reg] = w;
}

static inline word_t __attribute__((__pure__)) getRegister(tcb_t *thread, register_t reg)
{
    return thread->tcbArch.tcbContext.registers[reg];
}
# 11 "/workspace/seL4-c89/preconfigured/include/machine.h" 2
# 1 "/workspace/seL4-c89/preconfigured/include/hardware.h" 1





       
# 49 "/workspace/seL4-c89/preconfigured/include/hardware.h"
extern char ki_end[1];




# 1 "/workspace/seL4-c89/preconfigured/include/arch/x86/arch/64/mode/hardware.h" 1






       


# 1 "/workspace/seL4-c89/preconfigured/include/plat/pc99/plat/64/plat_mode/machine/hardware.h" 1






       
# 115 "/workspace/seL4-c89/preconfigured/include/plat/pc99/plat/64/plat_mode/machine/hardware.h"
# 1 "/workspace/seL4-c89/preconfigured/X64_verified/generated/plat_mode/machine/hardware_gen.h" 1


       
# 116 "/workspace/seL4-c89/preconfigured/include/plat/pc99/plat/64/plat_mode/machine/hardware.h" 2
# 1 "/workspace/seL4-c89/preconfigured/include/arch/x86/arch/kernel/tlb_bitmap_defs.h" 1






       
# 117 "/workspace/seL4-c89/preconfigured/include/plat/pc99/plat/64/plat_mode/machine/hardware.h" 2
# 11 "/workspace/seL4-c89/preconfigured/include/arch/x86/arch/64/mode/hardware.h" 2
# 55 "/workspace/seL4-c89/preconfigured/include/hardware.h" 2
# 12 "/workspace/seL4-c89/preconfigured/include/machine.h" 2





static inline void *__attribute__((__const__)) ptrFromPAddr(paddr_t paddr)
{
    return (void *)(paddr + (0xffffff8000000000ul - 0x00000000ul));
}



static inline paddr_t __attribute__((__const__)) addrFromPPtr(const void *pptr)
{
    return (paddr_t)pptr - (0xffffff8000000000ul - 0x00000000ul);
}



static inline paddr_t __attribute__((__const__)) addrFromKPPtr(const void *pptr)
{
    ;
    ;
    return (paddr_t)pptr - ((0xffffffff80000000ul + 0x00100000ul) - 0x00100000ul);
}





static inline region_t __attribute__((__const__)) paddr_to_pptr_reg(const p_region_t p_reg)
{
    return (region_t) {
        .start = (paddr_t)ptrFromPAddr(p_reg.start),
        .end = (paddr_t)ptrFromPAddr(p_reg.end)
    };
}

static inline p_region_t __attribute__((__const__)) pptr_to_paddr_reg(const region_t reg)
{
    return (p_region_t) {
        .start = addrFromPPtr((const void *)reg.start),
        .end = addrFromPPtr((const void *)reg.end),
    };
}


# 1 "/workspace/seL4-c89/preconfigured/include/arch/x86/arch/64/mode/machine.h" 1






       



# 1 "/workspace/seL4-c89/preconfigured/include/arch/x86/arch/model/statedata.h" 1






       






# 1 "/workspace/seL4-c89/preconfigured/include/plat/pc99/plat/machine/devices.h" 1






       
# 15 "/workspace/seL4-c89/preconfigured/include/arch/x86/arch/model/statedata.h" 2
# 1 "/workspace/seL4-c89/preconfigured/include/arch/x86/arch/object/vcpu.h" 1






       


# 1 "/workspace/seL4-c89/preconfigured/include/api/failures.h" 1






       


# 1 "/workspace/seL4-c89/preconfigured/libsel4/include/sel4/errors.h" 1






       

typedef enum {
    seL4_NoError = 0,
    seL4_InvalidArgument,
    seL4_InvalidCapability,
    seL4_IllegalOperation,
    seL4_RangeError,
    seL4_AlignmentError,
    seL4_FailedLookup,
    seL4_TruncatedMessage,
    seL4_DeleteFirst,
    seL4_RevokeFirst,
    seL4_NotEnoughMemory,





    seL4_NumErrors
} seL4_Error;
# 11 "/workspace/seL4-c89/preconfigured/include/api/failures.h" 2





enum exception {
    EXCEPTION_NONE,
    EXCEPTION_FAULT,
    EXCEPTION_LOOKUP_FAULT,
    EXCEPTION_SYSCALL_ERROR,
    EXCEPTION_PREEMPTED
};
typedef word_t exception_t;

typedef word_t syscall_error_type_t;

struct syscall_error {
    word_t invalidArgumentNumber;
    word_t invalidCapNumber;
    word_t rangeErrorMin;
    word_t rangeErrorMax;
    word_t memoryLeft;
    bool_t failedLookupWasSource;

    syscall_error_type_t type;
};
typedef struct syscall_error syscall_error_t;
# 47 "/workspace/seL4-c89/preconfigured/include/api/failures.h"
extern lookup_fault_t current_lookup_fault;
extern seL4_Fault_t current_fault;
extern syscall_error_t current_syscall_error;
# 11 "/workspace/seL4-c89/preconfigured/include/arch/x86/arch/object/vcpu.h" 2
# 168 "/workspace/seL4-c89/preconfigured/include/arch/x86/arch/object/vcpu.h"
enum exit_reasons {
    EXCEPTION_OR_NMI = 0x00,
    EXTERNAL_INTERRUPT = 0x01,
    TRIPLE_FAULT = 0x02,
    INIT_SIGNAL = 0x03,
    SIPI = 0x04,


    INTERRUPT_WINDOW = 0x07,
    NMI_WINDOW = 0x08,
    TASK_SWITCH = 0x09,
    CPUID = 0x0A,
    GETSEC = 0x0B,
    HLT = 0x0C,
    INVD = 0x0D,
    INVLPG = 0x0E,
    RDPMC = 0x0F,
    RDTSC = 0x10,
    RSM = 0x11,
    VMCALL = 0x12,
    VMCLEAR = 0x13,
    VMLAUNCH = 0x14,
    VMPTRLD = 0x15,
    VMPTRST = 0x16,
    VMREAD = 0x17,
    VMRESUME = 0x18,
    VMWRITE = 0x19,
    VMXOFF = 0x1A,
    VMXON = 0x1B,
    CONTROL_REGISTER = 0x1C,
    MOV_DR = 0x1D,
    IO = 0x1E,
    RDMSR = 0x1F,
    WRMSR = 0x20,
    INVALID_GUEST_STATE = 0x21,
    MSR_LOAD_FAIL = 0x22,

    MWAIT = 0x24,
    MONITOR_TRAP_FLAG = 0x25,

    MONITOR = 0x27,
    PAUSE = 0x28,
    MACHINE_CHECK = 0x29,

    TPR_BELOW_THRESHOLD = 0x2B,
    APIC_ACCESS = 0x2C,
    GDTR_OR_IDTR = 0x2E,
    LDTR_OR_TR = 0x2F,
    EPT_VIOLATION = 0x30,
    EPT_MISCONFIGURATION = 0x31,
    INVEPT = 0x32,
    RDTSCP = 0x33,
    VMX_PREEMPTION_TIMER = 0x34,
    INVVPID = 0x35,
    WBINVD = 0x36,
    XSETBV = 0x37
};





typedef uint16_t vpid_t;
# 16 "/workspace/seL4-c89/preconfigured/include/arch/x86/arch/model/statedata.h" 2
# 1 "/workspace/seL4-c89/preconfigured/include/arch/x86/arch/object/iospace.h" 1






       
# 17 "/workspace/seL4-c89/preconfigured/include/arch/x86/arch/model/statedata.h" 2
# 1 "/workspace/seL4-c89/preconfigured/include/arch/x86/arch/object/ioport.h" 1






       
# 16 "/workspace/seL4-c89/preconfigured/include/arch/x86/arch/object/ioport.h"
void setIOPortMask(void *ioport_bitmap, uint16_t low, uint16_t high, bool_t set);

exception_t decodeX86PortInvocation(word_t invLabel, word_t length, cptr_t cptr, cte_t *slot, cap_t cap,
                                    bool_t call, word_t *buffer);
exception_t decodeX86PortControlInvocation(word_t invLabel, word_t length, cptr_t cptr, cte_t *slot, cap_t cap,
                                           word_t *buffer);


void freeIOPortRange(uint16_t first_port, uint16_t last_port);
# 18 "/workspace/seL4-c89/preconfigured/include/arch/x86/arch/model/statedata.h" 2


# 1 "/workspace/seL4-c89/preconfigured/include/arch/x86/arch/64/mode/model/statedata.h" 1






       




# 1 "/workspace/seL4-c89/preconfigured/include/model/statedata.h" 1






       




# 1 "/workspace/seL4-c89/preconfigured/include/object/tcb.h" 1






       






# 1 "/workspace/seL4-c89/preconfigured/include/object/cnode.h" 1






       





exception_t decodeCNodeInvocation(word_t invLabel, word_t length,
                                  cap_t cap, word_t *buffer);
exception_t invokeCNodeRevoke(cte_t *destSlot);
exception_t invokeCNodeDelete(cte_t *destSlot);
exception_t invokeCNodeCancelBadgedSends(cap_t cap);
exception_t invokeCNodeInsert(cap_t cap, cte_t *srcSlot, cte_t *destSlot);
exception_t invokeCNodeMove(cap_t cap, cte_t *srcSlot, cte_t *destSlot);
exception_t invokeCNodeRotate(cap_t cap1, cap_t cap2, cte_t *slot1,
                              cte_t *slot2, cte_t *slot3);
void cteInsert(cap_t newCap, cte_t *srcSlot, cte_t *destSlot);
void cteMove(cap_t newCap, cte_t *srcSlot, cte_t *destSlot);
void capSwapForDelete(cte_t *slot1, cte_t *slot2);
void cteSwap(cap_t cap1, cte_t *slot1, cap_t cap2, cte_t *slot2);
exception_t cteRevoke(cte_t *slot);
exception_t cteDelete(cte_t *slot, bool_t exposed);
void cteDeleteOne(cte_t *slot);
void insertNewCap(cte_t *parent, cte_t *slot, cap_t cap);
bool_t __attribute__((__pure__)) isMDBParentOf(cte_t *cte_a, cte_t *cte_b);
exception_t ensureNoChildren(cte_t *slot);
exception_t ensureEmptySlot(cte_t *slot);
bool_t __attribute__((__pure__)) isFinalCapability(cte_t *cte);
bool_t __attribute__((__pure__)) slotCapLongRunningDelete(cte_t *slot);
cte_t *getReceiveSlots(tcb_t *thread, word_t *buffer);
cap_transfer_t __attribute__((__pure__)) loadCapTransfer(word_t *buffer);


exception_t invokeCNodeSaveCaller(cte_t *destSlot);
void setupReplyMaster(tcb_t *thread);
# 15 "/workspace/seL4-c89/preconfigured/include/object/tcb.h" 2







struct tcb_queue {
    tcb_t *head;
    tcb_t *end;
};
typedef struct tcb_queue tcb_queue_t;

static inline unsigned int setMR(tcb_t *receiver, word_t *receiveIPCBuffer,
                                 unsigned int offset, word_t reg)
{
    if (offset >= n_msgRegisters) {
        if (receiveIPCBuffer) {
            receiveIPCBuffer[offset + 1] = reg;
            return offset + 1;
        } else {
            return n_msgRegisters;
        }
    } else {
        setRegister(receiver, msgRegisters[offset], reg);
        return offset + 1;
    }
}

void tcbSchedEnqueue(tcb_t *tcb);
void tcbSchedAppend(tcb_t *tcb);
void tcbSchedDequeue(tcb_t *tcb);
tcb_queue_t tcb_queue_remove(tcb_queue_t queue, tcb_t *tcb);

static inline bool_t __attribute__((__pure__)) tcb_queue_empty(tcb_queue_t queue)
{
    return queue.head == ((void *)0);
}

static inline tcb_queue_t tcb_queue_prepend(tcb_queue_t queue, tcb_t *tcb)
{
    if (tcb_queue_empty(queue)) {
        queue.end = tcb;
    } else {
        tcb->tcbSchedNext = queue.head;
        queue.head->tcbSchedPrev = tcb;
    }

    queue.head = tcb;

    return queue;
}

static inline tcb_queue_t tcb_queue_append(tcb_queue_t queue, tcb_t *tcb)
{
    if (tcb_queue_empty(queue)) {
        queue.head = tcb;
    } else {
        tcb->tcbSchedPrev = queue.end;
        queue.end->tcbSchedNext = tcb;
    }

    queue.end = tcb;

    return queue;
}



static inline void tcb_queue_insert(tcb_t *tcb, tcb_t *after)
{
    tcb_t *before;
    before = after->tcbSchedPrev;

    ;
    ;

    tcb->tcbSchedPrev = before;
    tcb->tcbSchedNext = after;

    after->tcbSchedPrev = tcb;
    before->tcbSchedNext = tcb;
}
# 167 "/workspace/seL4-c89/preconfigured/include/object/tcb.h"
tcb_queue_t tcbEPAppend(tcb_t *tcb, tcb_queue_t queue);
tcb_queue_t tcbEPDequeue(tcb_t *tcb, tcb_queue_t queue);

void setupCallerCap(tcb_t *sender, tcb_t *receiver, bool_t canGrant);
void deleteCallerCap(tcb_t *receiver);


word_t copyMRs(tcb_t *sender, word_t *sendBuf, tcb_t *receiver,
               word_t *recvBuf, word_t n);
exception_t decodeTCBInvocation(word_t invLabel, word_t length, cap_t cap,
                                cte_t *slot, bool_t call, word_t *buffer);
exception_t decodeCopyRegisters(cap_t cap, word_t length, word_t *buffer);
exception_t decodeReadRegisters(cap_t cap, word_t length, bool_t call,
                                word_t *buffer);
exception_t decodeWriteRegisters(cap_t cap, word_t length, word_t *buffer);
exception_t decodeTCBConfigure(cap_t cap, word_t length,
                               cte_t *slot, word_t *buffer);
exception_t decodeSetPriority(cap_t cap, word_t length, word_t *buffer);
exception_t decodeSetMCPriority(cap_t cap, word_t length, word_t *buffer);



exception_t decodeSetSchedParams(cap_t cap, word_t length, word_t *buffer);

exception_t decodeSetIPCBuffer(cap_t cap, word_t length,
                               cte_t *slot, word_t *buffer);
exception_t decodeSetSpace(cap_t cap, word_t length,
                           cte_t *slot, word_t *buffer);
exception_t decodeDomainInvocation(word_t invLabel, word_t length, word_t *buffer);
exception_t decodeBindNotification(cap_t cap);
exception_t decodeUnbindNotification(cap_t cap);
# 218 "/workspace/seL4-c89/preconfigured/include/object/tcb.h"
enum thread_control_flag {
    thread_control_update_priority = 0x1,
    thread_control_update_ipc_buffer = 0x2,
    thread_control_update_space = 0x4,
    thread_control_update_mcp = 0x8,
};


typedef word_t thread_control_flag_t;

exception_t invokeTCB_Suspend(tcb_t *thread);
exception_t invokeTCB_Resume(tcb_t *thread);
# 245 "/workspace/seL4-c89/preconfigured/include/object/tcb.h"
exception_t invokeTCB_ThreadControl(tcb_t *target, cte_t *slot, cptr_t faultep,
                                    prio_t mcp, prio_t priority, cap_t cRoot_newCap,
                                    cte_t *cRoot_srcSlot, cap_t vRoot_newCap,
                                    cte_t *vRoot_srcSlot, word_t bufferAddr,
                                    cap_t bufferCap, cte_t *bufferSrcSlot,
                                    thread_control_flag_t updateFlags);

exception_t invokeTCB_CopyRegisters(tcb_t *dest, tcb_t *src,
                                    bool_t suspendSource, bool_t resumeTarget,
                                    bool_t transferFrame, bool_t transferInteger,
                                    word_t transferArch);
exception_t invokeTCB_ReadRegisters(tcb_t *src, bool_t suspendSource,
                                    word_t n, word_t arch, bool_t call);
exception_t invokeTCB_WriteRegisters(tcb_t *dest, bool_t resumeTarget,
                                     word_t n, word_t arch, word_t *buffer);
exception_t invokeTCB_NotificationControl(tcb_t *tcb, notification_t *ntfnPtr);
void invokeDomainSetSet(tcb_t *tcb, dom_t domain);

cptr_t __attribute__((__pure__)) getExtraCPtr(word_t *bufferPtr, word_t i);
void setExtraBadge(word_t *bufferPtr, word_t badge, word_t i);

exception_t lookupExtraCaps(tcb_t *thread, word_t *bufferPtr, seL4_MessageInfo_t info);
word_t setMRs_syscall_error(tcb_t *thread, word_t *receiveIPCBuffer);
word_t __attribute__((__const__)) Arch_decodeTransfer(word_t flags);
exception_t __attribute__((__const__)) Arch_performTransfer(word_t arch, tcb_t *tcb_src,
                                       tcb_t *tcb_dest);
# 13 "/workspace/seL4-c89/preconfigured/include/model/statedata.h" 2
# 58 "/workspace/seL4-c89/preconfigured/include/model/statedata.h"

extern tcb_queue_t ksReadyQueues[(16 * 256)] __attribute__((externally_visible));
extern word_t ksReadyQueuesL1Bitmap[16] __attribute__((externally_visible));
extern word_t ksReadyQueuesL2Bitmap[16][((256 + (1 << 6) - 1) / (1 << 6))] __attribute__((externally_visible));
extern tcb_t *ksCurThread __attribute__((externally_visible));
extern tcb_t *ksIdleThread __attribute__((externally_visible));
extern tcb_t *ksSchedulerAction __attribute__((externally_visible));
# 77 "/workspace/seL4-c89/preconfigured/include/model/statedata.h"
extern tcb_t * ksCurFPUOwner __attribute__((externally_visible));
# 92 "/workspace/seL4-c89/preconfigured/include/model/statedata.h"
;

extern word_t ksNumCPUs;






extern word_t ksWorkUnitsCompleted;
extern irq_state_t intStateIRQTable[];
extern cte_t intStateIRQNode[];

extern const dschedule_t ksDomSchedule[];
extern const word_t ksDomScheduleLength;
extern word_t ksDomScheduleIdx;
extern dom_t ksCurDomain;



extern word_t ksDomainTime;


extern char ksIdleThreadTCB[1][(1ul << (11))];
# 13 "/workspace/seL4-c89/preconfigured/include/arch/x86/arch/64/mode/model/statedata.h" 2

extern pml4e_t x64KSKernelPML4[(1ul << (9))] __attribute__((externally_visible));
extern pdpte_t x64KSKernelPDPT[(1ul << (9))];

extern pde_t x64KSKernelPD[(1ul << (9))];



extern pte_t x64KSKernelPT[(1ul << (9))];


extern pml4e_t x64KSSKIMPML4[(1ul << (9))] __attribute__((__aligned__((1ul << (12)))));
extern pdpte_t x64KSSKIMPDPT[(1ul << (9))] __attribute__((__aligned__((1ul << (12)))));


extern pde_t x64KSSKIMPD[(1ul << (9))] __attribute__((__aligned__((1ul << (12)))));







extern word_t x64KSCurrentUserCR3 __attribute__((externally_visible));



;
# 50 "/workspace/seL4-c89/preconfigured/include/arch/x86/arch/64/mode/model/statedata.h"
extern word_t x64KSIRQStack[1][6 + 2] __attribute__((__aligned__(64))) __attribute__((externally_visible)) __attribute__((__section__(".skim.bss")));
# 21 "/workspace/seL4-c89/preconfigured/include/arch/x86/arch/model/statedata.h" 2




typedef struct {
    tss_t tss;
    word_t io_map[(65536 / 8 / sizeof(word_t) + 1)];
} __attribute__((packed)) tss_io_t;



extern interrupt_t x86KScurInterrupt __attribute__((externally_visible));


extern interrupt_t x86KSPendingInterrupt __attribute__((externally_visible));

extern word_t ipiReschedulePending __attribute__((externally_visible));





extern word_t x86KSCurrentFSBase __attribute__((externally_visible));
extern word_t x86KSCurrentGSBase __attribute__((externally_visible));




extern word_t x86KSGPExceptReturnTo __attribute__((externally_visible));

;
;



typedef struct x86_arch_global_state {

    tss_io_t x86KStss;

    gdt_entry_t x86KSgdt[9];

    idt_entry_t x86KSidt[256];
    char padding[64 - ((sizeof(tss_io_t) + 9 *sizeof(gdt_entry_t) + 256 *sizeof(idt_entry_t)) % 64)];
} x86_arch_global_state_t;
typedef int __assert_failed_x86_arch_global_state_padded[((sizeof(x86_arch_global_state_t) % 64) == 0) ? 1 : -1] __attribute__((unused));

extern x86_arch_global_state_t x86KSGlobalState[1] __attribute__((__aligned__(64))) __attribute__((__section__(".skim.bss")));

extern asid_pool_t *x86KSASIDTable[];
extern uint32_t x86KScacheLineSizeBits;
extern user_fpu_state_t x86KSnullFpuState __attribute__((__aligned__(64)));
# 88 "/workspace/seL4-c89/preconfigured/include/arch/x86/arch/model/statedata.h"
extern x86_irq_state_t x86KSIRQState[];

extern word_t x86KSAllocatedIOPorts[(1ul << (16)) / 64];
# 12 "/workspace/seL4-c89/preconfigured/include/arch/x86/arch/64/mode/machine.h" 2
# 1 "/workspace/seL4-c89/preconfigured/include/arch/x86/arch/machine/cpu_registers.h" 1






       
# 32 "/workspace/seL4-c89/preconfigured/include/arch/x86/arch/machine/cpu_registers.h"
static unsigned long control_reg_order;

# 1 "/workspace/seL4-c89/preconfigured/include/arch/x86/arch/64/mode/machine/cpu_registers.h" 1






       

static inline unsigned long read_cr3(void)
{
    word_t cr3;
    __asm__ volatile("movq %%cr3, %0" : "=r"(cr3), "=m"(control_reg_order));
    return cr3;
}

static inline void write_cr3(unsigned long val)
{
    __asm__ volatile("movq %0, %%cr3" :: "r"(val), "m"(control_reg_order));
}

static inline unsigned long read_cr0(void)
{
    unsigned long val;
    __asm__ volatile("movq %%cr0, %0" : "=r"(val), "=m"(control_reg_order));
    return val;
}

static inline void write_cr0(unsigned long val)
{
    __asm__ volatile("movq %0, %%cr0" :: "r"(val), "m"(control_reg_order));
}

static inline unsigned long read_cr2(void)
{
    unsigned long val;
    __asm__ volatile("movq %%cr2, %0" : "=r"(val), "=m"(control_reg_order));
    return val;
}

static inline unsigned long read_cr4(void)
{
    unsigned long val;
    __asm__ volatile("movq %%cr4, %0" : "=r"(val), "=m"(control_reg_order));
    return val;
}

static inline void write_cr4(unsigned long val)
{
    __asm__ volatile("movq %0, %%cr4" :: "r"(val), "m"(control_reg_order));
}
# 35 "/workspace/seL4-c89/preconfigured/include/arch/x86/arch/machine/cpu_registers.h" 2

static inline void xsetbv(uint32_t reg, uint64_t value)
{
    __asm__ volatile("xsetbv" :: "d"((uint32_t)(value >> 32)), "a"((uint32_t)(value & 0xffffffff)), "c"(reg), "m"(control_reg_order));
}

static inline void write_xcr0(uint64_t value)
{
    xsetbv(0, value);
}
# 13 "/workspace/seL4-c89/preconfigured/include/arch/x86/arch/64/mode/machine.h" 2
# 1 "/workspace/seL4-c89/preconfigured/include/arch/x86/arch/model/smp.h" 1






       





# 1 "/workspace/seL4-c89/preconfigured/include/model/smp.h" 1






       
# 14 "/workspace/seL4-c89/preconfigured/include/arch/x86/arch/model/smp.h" 2
# 1 "/workspace/seL4-c89/preconfigured/include/arch/x86/arch/64/mode/model/smp.h" 1






       
# 15 "/workspace/seL4-c89/preconfigured/include/arch/x86/arch/model/smp.h" 2
# 14 "/workspace/seL4-c89/preconfigured/include/arch/x86/arch/64/mode/machine.h" 2
# 1 "/workspace/seL4-c89/preconfigured/include/arch/x86/arch/machine.h" 1






       




# 1 "/workspace/seL4-c89/preconfigured/include/arch/x86/arch/machine/pat.h" 1






       
# 13 "/workspace/seL4-c89/preconfigured/include/arch/x86/arch/machine.h" 2



# 1 "/workspace/seL4-c89/preconfigured/include/object/interrupt.h" 1






       




# 1 "/workspace/seL4-c89/preconfigured/include/arch/x86/arch/object/interrupt.h" 1






       






exception_t Arch_decodeIRQControlInvocation(word_t invLabel, word_t length,
                                            cte_t *srcSlot, word_t *buffer);
void Arch_irqStateInit(void);
exception_t Arch_checkIRQ(word_t irq_w);
# 13 "/workspace/seL4-c89/preconfigured/include/object/interrupt.h" 2


exception_t decodeIRQControlInvocation(word_t invLabel, word_t length,
                                       cte_t *srcSlot, word_t *buffer);
exception_t invokeIRQControl(irq_t irq, cte_t *handlerSlot, cte_t *controlSlot);
exception_t decodeIRQHandlerInvocation(word_t invLabel, irq_t irq);
void invokeIRQHandler_AckIRQ(irq_t irq);
void invokeIRQHandler_SetIRQHandler(irq_t irq, cap_t cap, cte_t *slot);
void invokeIRQHandler_ClearIRQHandler(irq_t irq);
void deletingIRQHandler(irq_t irq);
void deletedIRQHandler(irq_t irq);
void handleInterrupt(irq_t irq);
bool_t isIRQActive(irq_t irq);
void setIRQState(irq_state_t irqState, irq_t irq);
# 17 "/workspace/seL4-c89/preconfigured/include/arch/x86/arch/machine.h" 2
# 99 "/workspace/seL4-c89/preconfigured/include/arch/x86/arch/machine.h"
word_t __attribute__((__pure__)) getRestartPC(tcb_t *thread);
void setNextPC(tcb_t *thread, word_t v);

static uint64_t x86_rdmsr(const uint32_t reg)
{
    uint32_t low, high;
    uint64_t value;
    __asm__ volatile("rdmsr" : "=a"(low), "=d"(high) : "c"(reg));
    value = ((uint64_t)high << 32) | (uint64_t)low;
    return value;
}


static inline uint32_t x86_rdmsr_low(const uint32_t reg)
{
    return (uint32_t)x86_rdmsr(reg);
}

static inline uint32_t x86_rdmsr_high(const uint32_t reg)
{
    return (uint32_t)(x86_rdmsr(reg) >> 32ull);
}


static inline void x86_wrmsr_parts(const uint32_t reg, const uint32_t high, const uint32_t low)
{
    __asm__ volatile("wrmsr" :: "a"(low), "d"(high), "c"(reg));
}

static inline void x86_wrmsr(const uint32_t reg, const uint64_t val)
{
    uint32_t low = (uint32_t)val;
    uint32_t high = (uint32_t)(val >> 32);
    x86_wrmsr_parts(reg, high, low);
}


static inline uint32_t x86_cpuid_edx(uint32_t eax, uint32_t ecx)
{
    uint32_t edx, ebx;
    __asm__ volatile("cpuid"
                 : "=a"(eax),
                 "=b"(ebx),
                 "=c"(ecx),
                 "=d"(edx)
                 : "a"(eax), "c"(ecx)
                 : "memory");
    return edx;
}

static inline uint32_t x86_cpuid_eax(uint32_t eax, uint32_t ecx)
{
    uint32_t edx, ebx;
    __asm__ volatile("cpuid"
                 : "=a"(eax),
                 "=b"(ebx),
                 "=c"(ecx),
                 "=d"(edx)
                 : "a"(eax), "c"(ecx)
                 : "memory");
    return eax;
}

static inline uint32_t x86_cpuid_ecx(uint32_t eax, uint32_t ecx)
{
    uint32_t edx, ebx;
    __asm__ volatile("cpuid"
                 : "=a"(eax),
                 "=b"(ebx),
                 "=c"(ecx),
                 "=d"(edx)
                 : "a"(eax), "c"(ecx)
                 : "memory");
    return ecx;
}

static inline uint32_t x86_cpuid_ebx(uint32_t eax, uint32_t ecx)
{
    uint32_t edx, ebx;
    __asm__ volatile("cpuid"
                 : "=a"(eax),
                 "=b"(ebx),
                 "=c"(ecx),
                 "=d"(edx)
                 : "a"(eax), "c"(ecx)
                 : "memory");
    return ebx;
}

static inline uint64_t x86_rdtsc(void)
{
    uint32_t hi, lo;
    __asm__ volatile("rdtsc"
                 : "=a"(lo),
                 "=d"(hi)
                );
    return ((uint64_t) hi) << 32llu | (uint64_t) lo;
}
# 205 "/workspace/seL4-c89/preconfigured/include/arch/x86/arch/machine.h"
enum x86_vendor {
    X86_VENDOR_INTEL = 0,
    X86_VENDOR_AMD,
    X86_VENDOR_OTHER
};

typedef struct _x86_cpu_identity {
    uint8_t family, model, stepping, extended_family, extended_model;
    uint8_t brand;
} x86_cpu_identity_t;

typedef struct _cpu_identity {
    enum x86_vendor vendor;
    char vendor_string[(12) + 1];





    x86_cpu_identity_t display;
} cpu_identity_t;


__attribute__((__section__(".boot.text"))) bool_t x86_cpuid_initialize(void);




x86_cpu_identity_t *x86_cpuid_get_model_info(void);



cpu_identity_t *x86_cpuid_get_identity(void);






static inline void x86_write_fs_base_impl(word_t base);
static inline word_t x86_read_fs_base_impl(void);
static inline void x86_write_gs_base_impl(word_t base);
static inline word_t x86_read_gs_base_impl(void);
# 274 "/workspace/seL4-c89/preconfigured/include/arch/x86/arch/machine.h"
static inline void x86_write_fs_base(word_t base, cpu_id_t cpu)
{
    x86_write_fs_base_impl(base);
}

static inline void x86_write_gs_base(word_t base, cpu_id_t cpu)
{
    x86_write_gs_base_impl(base);
}

static inline word_t x86_read_fs_base(cpu_id_t cpu)
{
    return x86_read_fs_base_impl();
}

static inline word_t x86_read_gs_base(cpu_id_t cpu)
{
    return x86_read_gs_base_impl();
}
# 328 "/workspace/seL4-c89/preconfigured/include/arch/x86/arch/machine.h"
static inline void x86_load_fsgs_base(tcb_t *thread, cpu_id_t cpu)
{






    word_t fs_base = getRegister(thread, FS_BASE);
    x86_write_fs_base(fs_base, cpu);
    word_t gs_base = getRegister(thread, GS_BASE);
    x86_write_gs_base(gs_base, cpu);
}


static inline void clearMemory(void *ptr, unsigned int bits)
{
    memzero(ptr, (1ul << (bits)));
}


void init_sysenter_msrs(void);


static inline void x86_mfence(void)
{
    __asm__ volatile("mfence" ::: "memory");
}


static inline unsigned long getFaultAddr(void)
{
    return read_cr2();
}

static inline void x86_set_tls_segment_base(word_t tls_base);


static inline exception_t Arch_setTLSRegister(word_t tls_base)
{
    word_t sanitised = Mode_sanitiseRegister(TLS_BASE, tls_base);

    if (sanitised != tls_base) {
        return EXCEPTION_SYSCALL_ERROR;
    }
# 383 "/workspace/seL4-c89/preconfigured/include/arch/x86/arch/machine.h"
    x86_set_tls_segment_base(sanitised);

    return EXCEPTION_NONE;
}




static inline void x86_enable_ibrs(void)
{


    x86_wrmsr(0x48, (1ul << (0)) | (1ul << (1)));
}

static inline void x86_disable_ibrs(void)
{


    x86_wrmsr(0x48, (1ul << (1)));
}

static inline void x86_ibpb(void)
{
    x86_wrmsr(0x49, 1);
}

static inline void x86_flush_rsb(void)
{


    word_t iter = 32;
    __asm__ volatile(
        "1:\n"
        "sub $2, %[iter]\n"
        "call 2f\n"
        "pause\n"
        "jmp 1b\n"
        "2:\n"
        "call 3f\n"
        "pause\n"
        "jmp 2b\n"
        "3:\n"
        "cmp $0, %[iter]\n"
        "jne 1b\n"

        "add %[stack_amount], %%rsp\n"



        : [iter]"+r"(iter)
        : [stack_amount]"i"(sizeof(word_t) * iter)
        : "cc"
    );
}


void handle_syscall(void);


void int_00(void);

void int_01(void);

void int_02(void);

void int_03(void);

void int_04(void);

void int_05(void);

void int_06(void);

void int_07(void);

void int_08(void);

void int_09(void);

void int_0a(void);

void int_0b(void);

void int_0c(void);

void int_0d(void);

void int_0e(void);

void int_0f(void);


void int_10(void);

void int_11(void);

void int_12(void);

void int_13(void);

void int_14(void);

void int_15(void);

void int_16(void);

void int_17(void);

void int_18(void);

void int_19(void);

void int_1a(void);

void int_1b(void);

void int_1c(void);

void int_1d(void);

void int_1e(void);

void int_1f(void);


void int_20(void);

void int_21(void);

void int_22(void);

void int_23(void);

void int_24(void);

void int_25(void);

void int_26(void);

void int_27(void);

void int_28(void);

void int_29(void);

void int_2a(void);

void int_2b(void);

void int_2c(void);

void int_2d(void);

void int_2e(void);

void int_2f(void);


void int_30(void);

void int_31(void);

void int_32(void);

void int_33(void);

void int_34(void);

void int_35(void);

void int_36(void);

void int_37(void);

void int_38(void);

void int_39(void);

void int_3a(void);

void int_3b(void);

void int_3c(void);

void int_3d(void);

void int_3e(void);

void int_3f(void);


void int_40(void);

void int_41(void);

void int_42(void);

void int_43(void);

void int_44(void);

void int_45(void);

void int_46(void);

void int_47(void);

void int_48(void);

void int_49(void);

void int_4a(void);

void int_4b(void);

void int_4c(void);

void int_4d(void);

void int_4e(void);

void int_4f(void);


void int_50(void);

void int_51(void);

void int_52(void);

void int_53(void);

void int_54(void);

void int_55(void);

void int_56(void);

void int_57(void);

void int_58(void);

void int_59(void);

void int_5a(void);

void int_5b(void);

void int_5c(void);

void int_5d(void);

void int_5e(void);

void int_5f(void);


void int_60(void);

void int_61(void);

void int_62(void);

void int_63(void);

void int_64(void);

void int_65(void);

void int_66(void);

void int_67(void);

void int_68(void);

void int_69(void);

void int_6a(void);

void int_6b(void);

void int_6c(void);

void int_6d(void);

void int_6e(void);

void int_6f(void);


void int_70(void);

void int_71(void);

void int_72(void);

void int_73(void);

void int_74(void);

void int_75(void);

void int_76(void);

void int_77(void);

void int_78(void);

void int_79(void);

void int_7a(void);

void int_7b(void);

void int_7c(void);

void int_7d(void);

void int_7e(void);

void int_7f(void);


void int_80(void);

void int_81(void);

void int_82(void);

void int_83(void);

void int_84(void);

void int_85(void);

void int_86(void);

void int_87(void);

void int_88(void);

void int_89(void);

void int_8a(void);

void int_8b(void);

void int_8c(void);

void int_8d(void);

void int_8e(void);

void int_8f(void);


void int_90(void);

void int_91(void);

void int_92(void);

void int_93(void);

void int_94(void);

void int_95(void);

void int_96(void);

void int_97(void);

void int_98(void);

void int_99(void);

void int_9a(void);

void int_9b(void);

void int_9c(void);

void int_9d(void);

void int_9e(void);

void int_9f(void);


void int_a0(void);

void int_a1(void);

void int_a2(void);

void int_a3(void);

void int_a4(void);

void int_a5(void);

void int_a6(void);

void int_a7(void);

void int_a8(void);

void int_a9(void);

void int_aa(void);

void int_ab(void);

void int_ac(void);

void int_ad(void);

void int_ae(void);

void int_af(void);


void int_b0(void);

void int_b1(void);

void int_b2(void);

void int_b3(void);

void int_b4(void);

void int_b5(void);

void int_b6(void);

void int_b7(void);

void int_b8(void);

void int_b9(void);

void int_ba(void);

void int_bb(void);

void int_bc(void);

void int_bd(void);

void int_be(void);

void int_bf(void);


void int_c0(void);

void int_c1(void);

void int_c2(void);

void int_c3(void);

void int_c4(void);

void int_c5(void);

void int_c6(void);

void int_c7(void);

void int_c8(void);

void int_c9(void);

void int_ca(void);

void int_cb(void);

void int_cc(void);

void int_cd(void);

void int_ce(void);

void int_cf(void);


void int_d0(void);

void int_d1(void);

void int_d2(void);

void int_d3(void);

void int_d4(void);

void int_d5(void);

void int_d6(void);

void int_d7(void);

void int_d8(void);

void int_d9(void);

void int_da(void);

void int_db(void);

void int_dc(void);

void int_dd(void);

void int_de(void);

void int_df(void);


void int_e0(void);

void int_e1(void);

void int_e2(void);

void int_e3(void);

void int_e4(void);

void int_e5(void);

void int_e6(void);

void int_e7(void);

void int_e8(void);

void int_e9(void);

void int_ea(void);

void int_eb(void);

void int_ec(void);

void int_ed(void);

void int_ee(void);

void int_ef(void);


void int_f0(void);

void int_f1(void);

void int_f2(void);

void int_f3(void);

void int_f4(void);

void int_f5(void);

void int_f6(void);

void int_f7(void);

void int_f8(void);

void int_f9(void);

void int_fa(void);

void int_fb(void);

void int_fc(void);

void int_fd(void);

void int_fe(void);

void int_ff(void);
# 15 "/workspace/seL4-c89/preconfigured/include/arch/x86/arch/64/mode/machine.h" 2
# 32 "/workspace/seL4-c89/preconfigured/include/arch/x86/arch/64/mode/machine.h"
static inline cr3_t makeCR3(paddr_t addr, word_t pcid)
{
    return cr3_new(addr, wrap_config_set(1) ? pcid : 0);
}


static inline cr3_t getCurrentCR3(void)
{



    return cr3_new(addrFromKPPtr(x64KSKernelPML4), 0);



}

static inline cr3_t getCurrentUserCR3(void)
{



    word_t cr3_word = x64KSCurrentUserCR3;
    cr3_t cr3_ret;
    if (wrap_config_set(1)) {
        cr3_word &= ~(1ul << (63));
    }
    cr3_ret.words[0] = cr3_word;
    return cr3_ret;



}

static inline paddr_t getCurrentUserVSpaceRoot(void)
{
    return cr3_get_pml4_base_address(getCurrentUserCR3());
}

static inline void setCurrentCR3(cr3_t cr3, word_t preserve_translation)
{




    ;



    word_t cr3_word = cr3.words[0];
    if (wrap_config_set(1)) {
        if (preserve_translation) {
            cr3_word |= (1ul << (63));
        }
    } else {
        ;
    }
    write_cr3(cr3_word);
}




static inline void setCurrentUserCR3(cr3_t cr3)
{




    word_t cr3_word = cr3.words[0];
    if (wrap_config_set(1)) {
        cr3_word |= (1ul << (63));
    }
    x64KSCurrentUserCR3 = cr3_word;



}

static inline void setCurrentVSpaceRoot(paddr_t addr, word_t pcid)
{
    setCurrentCR3(makeCR3(addr, pcid), 1);
}

static inline void setCurrentUserVSpaceRoot(paddr_t addr, word_t pcid)
{

    setCurrentUserCR3(makeCR3(addr, pcid));



}


void x64_install_gdt(gdt_idt_ptr_t *gdt_idt_ptr);


void x64_install_idt(gdt_idt_ptr_t *gdt_idt_ptr);


void x64_install_ldt(uint32_t ldt_sel);


void x64_install_tss(uint32_t tss_sel);

void handle_fastsyscall(void);

void init_syscall_msrs(void);


static inline void *get_current_esp(void)
{
    word_t stack;
    void *result;
    __asm__ volatile("movq %[stack_address], %[result]" : [result] "=r"(result) : [stack_address] "r"(&stack));
    return result;
}

typedef struct invpcid_desc {
    uint64_t asid;
    uint64_t addr;
} invpcid_desc_t;






static inline void invalidateLocalPCID(word_t type, void *vaddr, asid_t asid)
{
    if (wrap_config_set(1)) {
        invpcid_desc_t desc;
        desc.asid = asid & 0xfff;
        desc.addr = (uint64_t)vaddr;
        __asm__ volatile("invpcid %1, %0" :: "r"(type), "m"(desc));
    } else {
        switch (type) {
        case 0:
            __asm__ volatile("invlpg (%[vptr])" :: [vptr] "r"(vaddr));
            break;
        case 1:
        case 3:

            setCurrentCR3(getCurrentCR3(), 0);
            break;
        case 2: {

            unsigned long cr4 = read_cr4();
            write_cr4(cr4 & ~(1ul << (7)));
            write_cr4(cr4);
        }
        break;
        }
    }
}

static inline void invalidateLocalTranslationSingle(vptr_t vptr)
{



    invalidateLocalPCID(2, (void *)0, 0);
}

static inline void invalidateLocalTranslationSingleASID(vptr_t vptr, asid_t asid)
{
    invalidateLocalPCID(0, (void *)vptr, asid);
}

static inline void invalidateLocalTranslationAll(void)
{
    invalidateLocalPCID(2, (void *)0, 0);
}

static inline void invalidateLocalPageStructureCacheASID(paddr_t root, asid_t asid)
{
    if (wrap_config_set(1)) {

        cr3_t cr3;
        cr3_t new_cr3;
        word_t new_cr3_word;
        word_t old_cr3_word;
        cr3 = getCurrentCR3();
        new_cr3 = makeCR3(root, asid);
        new_cr3_word = new_cr3.words[0];
        old_cr3_word = cr3.words[0] | (1ul << (63));


        __asm__ volatile(
            "mov %[new_cr3], %%cr3\n"
            "mov %[old_cr3], %%cr3\n"
            ::
            [new_cr3] "r"(new_cr3_word),
            [old_cr3] "r"(old_cr3_word)
        );
    } else {


        __asm__ volatile("invlpg (%[vptr])" :: [vptr] "r"(0));
    }
}

static inline void swapgs(void)
{
    __asm__ volatile("swapgs");
}

static inline rdmsr_safe_result_t x86_rdmsr_safe(const uint32_t reg)
{
    uint32_t low;
    uint32_t high;
    word_t returnto;
    word_t temp;
    rdmsr_safe_result_t result;
    __asm__ volatile(
        "movabs $1f, %[temp] \n"
        "movq %[temp], (%[returnto_addr]) \n         rdmsr \n         1: \n         movq (%[returnto_addr]), %[returnto] \n         movq $0, (%[returnto_addr])"




        : [returnto] "=&r"(returnto),
        [temp] "=&r"(temp),
        [high] "=&d"(high),
        [low] "=&a"(low)
        : [returnto_addr] "r"(&x86KSGPExceptReturnTo),
        [reg] "c"(reg)
        : "memory"
    );
    result.success = returnto != 0;
    result.value = ((uint64_t)high << 32) | (uint64_t)low;
    return result;
}



static inline void x86_write_fs_base_impl(word_t base)
{
    __asm__ volatile("wrfsbase %0"::"r"(base));
}

static inline word_t x86_read_fs_base_impl(void)
{
    word_t base = 0;
    __asm__ volatile("rdfsbase %0":"=r"(base));
    return base;
}

static inline void x86_save_fsgs_base(tcb_t *thread, cpu_id_t cpu)
{
# 293 "/workspace/seL4-c89/preconfigured/include/arch/x86/arch/64/mode/machine.h"
    word_t cur_fs_base = x86_read_fs_base(cpu);
    setRegister(thread, FS_BASE, cur_fs_base);
    word_t cur_gs_base = x86_read_gs_base(cpu);
    setRegister(thread, GS_BASE, cur_gs_base);
}
# 322 "/workspace/seL4-c89/preconfigured/include/arch/x86/arch/64/mode/machine.h"
static inline void x86_write_gs_base_impl(word_t base)
{
    __asm__ volatile("wrgsbase %0"::"r"(base));
}

static inline word_t x86_read_gs_base_impl(void)
{
    word_t base = 0;
    __asm__ volatile("rdgsbase %0":"=r"(base));
    return base;
}
# 348 "/workspace/seL4-c89/preconfigured/include/arch/x86/arch/64/mode/machine.h"
static inline void x86_set_tls_segment_base(word_t tls_base)
{
    x86_write_fs_base(tls_base, 0lu);
}
# 60 "/workspace/seL4-c89/preconfigured/include/machine.h" 2
# 11 "/workspace/seL4-c89/preconfigured/include/api/syscall.h" 2


# 1 "/workspace/seL4-c89/preconfigured/include/kernel/vspace.h" 1





       


# 1 "/workspace/seL4-c89/preconfigured/include/arch/x86/arch/kernel/vspace.h" 1






       
# 18 "/workspace/seL4-c89/preconfigured/include/arch/x86/arch/kernel/vspace.h"
struct lookupPTSlot_ret {
    exception_t status;
    pte_t *ptSlot;
};
typedef struct lookupPTSlot_ret lookupPTSlot_ret_t;

struct lookupPDSlot_ret {
    exception_t status;
    pde_t *pdSlot;
};
typedef struct lookupPDSlot_ret lookupPDSlot_ret_t;

struct findVSpaceForASID_ret {
    exception_t status;
    vspace_root_t *vspace_root;
};
typedef struct findVSpaceForASID_ret findVSpaceForASID_ret_t;

void init_boot_pd(void);
void enable_paging(void);
bool_t map_kernel_window(
    uint32_t num_ioapic,
    paddr_t *ioapic_paddrs,
    uint32_t num_drhu,
    paddr_t *drhu_list
);
bool_t map_skim_window(vptr_t skim_start, vptr_t skim_end);
bool_t map_kernel_window_devices(
    pte_t *pt,
    uint32_t num_ioapic,
    paddr_t *ioapic_paddrs,
    uint32_t num_drhu,
    paddr_t *drhu_list
);

void init_tss(tss_t *tss);
void init_gdt(gdt_entry_t *gdt, tss_t *tss);
void init_idt_entry(idt_entry_t *idt, interrupt_t interrupt, void(*handler)(void));
vspace_root_t *getValidNativeRoot(cap_t vspace_cap);
pde_t *get_boot_pd(void);
void *map_temp_boot_page(void *entry, uint32_t large_pages);
bool_t init_vm_state(void);
void init_dtrs(void);
void map_it_pt_cap(cap_t vspace_cap, cap_t pt_cap);
void map_it_pd_cap(cap_t vspace_cap, cap_t pd_cap);
void map_it_frame_cap(cap_t vspace_cap, cap_t frame_cap);
void write_it_asid_pool(cap_t it_ap_cap, cap_t it_vspace_cap);
bool_t init_pat_msr(void);
cap_t create_it_address_space(cap_t root_cnode_cap, v_region_t it_v_reg);



bool_t isVTableRoot(cap_t cap);

asid_map_t findMapForASID(asid_t asid);

lookupPTSlot_ret_t lookupPTSlot(vspace_root_t *vspace, vptr_t vptr);
lookupPDSlot_ret_t lookupPDSlot(vspace_root_t *vspace, vptr_t vptr);
void copyGlobalMappings(vspace_root_t *new_vspace);
word_t *__attribute__((__pure__)) lookupIPCBuffer(bool_t isReceiver, tcb_t *thread);
exception_t handleVMFault(tcb_t *thread, vm_fault_type_t vm_faultType);
void unmapPageDirectory(asid_t asid, vptr_t vaddr, pde_t *pd);
void unmapPageTable(asid_t, vptr_t vaddr, pte_t *pt);

exception_t performASIDPoolInvocation(asid_t asid, asid_pool_t *poolPtr, cte_t *vspaceCapSlot);
exception_t performASIDControlInvocation(void *frame, cte_t *slot, cte_t *parent, asid_t asid_base);
void hwASIDInvalidate(asid_t asid, vspace_root_t *vspace);
void deleteASIDPool(asid_t asid_base, asid_pool_t *pool);
void deleteASID(asid_t asid, vspace_root_t *vspace);
findVSpaceForASID_ret_t findVSpaceForASID(asid_t asid);

void unmapPage(vm_page_size_t page_size, asid_t asid, vptr_t vptr, void *pptr);

bool_t modeUnmapPage(vm_page_size_t page_size, vspace_root_t *vroot, vptr_t vptr, void *pptr);
exception_t decodeX86ModeMapPage(word_t invLabel, vm_page_size_t page_size, cte_t *cte, cap_t cap,
                                 vspace_root_t *vroot, vptr_t vptr, paddr_t paddr, vm_rights_t vm_rights, vm_attributes_t vm_attr);
void setVMRoot(tcb_t *tcb);
bool_t __attribute__((__const__)) isValidVTableRoot(cap_t cap);
bool_t __attribute__((__const__)) isValidNativeRoot(cap_t cap);
exception_t checkValidIPCBuffer(vptr_t vptr, cap_t cap);
vm_rights_t __attribute__((__const__)) maskVMRights(vm_rights_t vm_rights, seL4_CapRights_t cap_rights_mask);
void flushTable(vspace_root_t *vspace, word_t vptr, pte_t *pt, asid_t asid);

exception_t decodeX86MMUInvocation(word_t invLabel, word_t length, cptr_t cptr, cte_t *cte,
                                   cap_t cap, bool_t call, word_t *buffer);

exception_t decodeX86ModeMMUInvocation(word_t invLabel, word_t length, cptr_t cptr, cte_t *cte,
                                       cap_t cap, bool_t call, word_t *buffer);

exception_t decodeIA32PageDirectoryInvocation(word_t invLabel, word_t length, cte_t *cte, cap_t cap,
                                              bool_t call, word_t *buffer);


exception_t decodeX86FrameInvocation(word_t invLabel, word_t length, cte_t *cte, cap_t cap,
                                     bool_t call, word_t *buffer);

uint32_t __attribute__((__const__)) WritableFromVMRights(vm_rights_t vm_rights);
uint32_t __attribute__((__const__)) SuperUserFromVMRights(vm_rights_t vm_rights);





pte_t __attribute__((__const__)) makeUserPTE(paddr_t paddr, vm_attributes_t vm_attr, vm_rights_t vm_rights);
pte_t __attribute__((__const__)) makeUserPTEInvalid(void);
pde_t __attribute__((__const__)) makeUserPDELargePage(paddr_t paddr, vm_attributes_t vm_attr, vm_rights_t vm_rights);
pde_t __attribute__((__const__)) makeUserPDEPageTable(paddr_t paddr, vm_attributes_t vm_attr);
pde_t __attribute__((__const__)) makeUserPDEInvalid(void);






static inline bool_t checkVPAlignment(vm_page_size_t sz, word_t w)
{
    return (!((w) & ((1ul << (pageBitsForSize(sz))) - 1ul)));
}
# 10 "/workspace/seL4-c89/preconfigured/include/kernel/vspace.h" 2
# 14 "/workspace/seL4-c89/preconfigured/include/api/syscall.h" 2
# 1 "/workspace/seL4-c89/preconfigured/X64_verified/gen_headers/arch/api/syscall.h" 1
# 13 "/workspace/seL4-c89/preconfigured/X64_verified/gen_headers/arch/api/syscall.h"
       
# 34 "/workspace/seL4-c89/preconfigured/X64_verified/gen_headers/arch/api/syscall.h"
enum syscall {
    SysCall = -1,
    SysReplyRecv = -2,
    SysSend = -3,
    SysNBSend = -4,
    SysRecv = -5,
    SysReply = -6,
    SysYield = -7,
    SysNBRecv = -8,
# 84 "/workspace/seL4-c89/preconfigured/X64_verified/gen_headers/arch/api/syscall.h"
};
typedef word_t syscall_t;
# 15 "/workspace/seL4-c89/preconfigured/include/api/syscall.h" 2
# 1 "/workspace/seL4-c89/preconfigured/include/api/debug.h" 1
# 16 "/workspace/seL4-c89/preconfigured/include/api/syscall.h" 2
# 32 "/workspace/seL4-c89/preconfigured/include/api/syscall.h"
exception_t handleSyscall(syscall_t syscall);
exception_t handleInterruptEntry(void);
exception_t handleUnknownSyscall(word_t w);
exception_t handleUserLevelFault(word_t w_a, word_t w_b);
exception_t handleVMFaultEvent(vm_fault_type_t vm_faultType);

static inline word_t __attribute__((__pure__)) getSyscallArg(word_t i, word_t *ipc_buffer)
{
    if (i < n_msgRegisters) {
        return getRegister(ksCurThread, msgRegisters[i]);
    }

    ;
    return ipc_buffer[i + 1];
}

extern extra_caps_t current_extra_caps;
# 11 "/workspace/seL4-c89/preconfigured/src/api/faults.c" 2
# 1 "/workspace/seL4-c89/preconfigured/include/kernel/thread.h" 1






       
# 19 "/workspace/seL4-c89/preconfigured/include/kernel/thread.h"
static inline __attribute__((__const__)) word_t ready_queues_index(word_t dom, word_t prio)
{
    if (numDomains > 1) {
        return dom * 256 + prio;
    } else {
        ;
        return prio;
    }
}

static inline __attribute__((__const__)) word_t prio_to_l1index(word_t prio)
{
    return (prio >> 6);
}

static inline __attribute__((__const__)) word_t l1index_to_prio(word_t l1index)
{
    return (l1index << 6);
}

static inline bool_t __attribute__((__pure__)) isRunnable(const tcb_t *thread)
{
    switch (thread_state_get_tsType(thread->tcbState)) {
    case ThreadState_Running:
    case ThreadState_Restart:



        return true;

    default:
        return false;
    }
}

static inline __attribute__((__const__)) word_t invert_l1index(word_t l1index)
{
    word_t inverted = (((256 + (1 << 6) - 1) / (1 << 6)) - 1 - l1index);
    ;
    return inverted;
}

static inline prio_t getHighestPrio(word_t dom)
{
    word_t l1index;
    word_t l2index;
    word_t l1index_inverted;


    ;

    l1index = (1 << 6) - 1 - clzl(ksReadyQueuesL1Bitmap[dom]);
    l1index_inverted = invert_l1index(l1index);
    ;
    l2index = (1 << 6) - 1 - clzl(ksReadyQueuesL2Bitmap[dom][l1index_inverted]);
    return (l1index_to_prio(l1index) | l2index);
}

static inline bool_t isHighestPrio(word_t dom, prio_t prio)
{
    return ksReadyQueuesL1Bitmap[dom] == 0 ||
           prio >= getHighestPrio(dom);
}

static inline bool_t __attribute__((__pure__)) isBlocked(const tcb_t *thread)
{
    switch (thread_state_get_tsType(thread->tcbState)) {
    case ThreadState_BlockedOnReceive:
    case ThreadState_BlockedOnSend:
    case ThreadState_BlockedOnNotification:
    case ThreadState_BlockedOnReply:
        return true;

    default:
        return false;
    }
}

static inline bool_t __attribute__((__pure__)) isStopped(const tcb_t *thread)
{
    switch (thread_state_get_tsType(thread->tcbState)) {
    case ThreadState_Inactive:
    case ThreadState_BlockedOnReceive:
    case ThreadState_BlockedOnSend:
    case ThreadState_BlockedOnNotification:
    case ThreadState_BlockedOnReply:
        return true;

    default:
        return false;
    }
}
# 163 "/workspace/seL4-c89/preconfigured/include/kernel/thread.h"
void Arch_switchToThread(tcb_t *tcb);
void Arch_switchToIdleThread(void);
void Arch_configureIdleThread(tcb_t *tcb);
void Arch_activateIdleThread(tcb_t *tcb);

void idle_thread(void);

void configureIdleThread(tcb_t *tcb);
void activateThread(void);
void suspend(tcb_t *target);
void restart(tcb_t *target);
void doIPCTransfer(tcb_t *sender, endpoint_t *endpoint,
                   word_t badge, bool_t grant, tcb_t *receiver);



void doReplyTransfer(tcb_t *sender, tcb_t *receiver, cte_t *slot, bool_t grant);
void timerTick(void);

void doNormalTransfer(tcb_t *sender, word_t *sendBuffer, endpoint_t *endpoint,
                      word_t badge, bool_t canGrant, tcb_t *receiver,
                      word_t *receiveBuffer);
void doFaultTransfer(word_t badge, tcb_t *sender, tcb_t *receiver,
                     word_t *receiverIPCBuffer);
void doNBRecvFailedTransfer(tcb_t *thread);
void schedule(void);
void chooseThread(void);
void switchToThread(tcb_t *thread);
void switchToIdleThread(void);
void prepareSetDomain(tcb_t *tptr, dom_t dom);
void setDomain(tcb_t *tptr, dom_t dom);
void setPriority(tcb_t *tptr, prio_t prio);
void setMCPriority(tcb_t *tptr, prio_t mcp);
void scheduleTCB(tcb_t *tptr);
void possibleSwitchTo(tcb_t *tptr);
void setThreadState(tcb_t *tptr, _thread_state_t ts);
void rescheduleRequired(void);




void Arch_postModifyRegisters(tcb_t *tptr);





static inline void updateRestartPC(tcb_t *tcb)
{
    setRegister(tcb, FaultIP, getRegister(tcb, NextIP));
}
# 12 "/workspace/seL4-c89/preconfigured/src/api/faults.c" 2
# 1 "/workspace/seL4-c89/preconfigured/include/arch/x86/arch/kernel/thread.h" 1






       

# 1 "/workspace/seL4-c89/preconfigured/include/object.h" 1






       


# 1 "/workspace/seL4-c89/preconfigured/include/object/objecttype.h" 1






       





# 1 "/workspace/seL4-c89/preconfigured/include/plat/pc99/plat/machine/hardware.h" 1






       

# 1 "/workspace/seL4-c89/preconfigured/include/plat/pc99/plat/machine/interrupt.h" 1






       







# 1 "/workspace/seL4-c89/preconfigured/include/arch/x86/arch/kernel/apic.h" 1






       




# 1 "/workspace/seL4-c89/preconfigured/include/arch/x86/arch/kernel/xapic.h" 1






       





typedef enum _apic_reg_t {
    APIC_ID = 0x020,
    APIC_VERSION = 0x030,
    APIC_TASK_PRIO = 0x080,
    APIC_ARBITR_PRIO = 0x090,
    APIC_PROC_PRIO = 0x0A0,
    APIC_EOI = 0x0B0,
    APIC_LOGICAL_DEST = 0x0D0,
    APIC_DEST_FORMAT = 0x0E0,
    APIC_SVR = 0x0F0,
    APIC_ISR_BASE = 0x100,
    APIC_TMR_BASE = 0x180,
    APIC_IRR_BASE = 0x200,
    APIC_ERR_STATUS = 0x280,
    APIC_ICR1 = 0x300,
    APIC_ICR2 = 0x310,
    APIC_LVT_TIMER = 0x320,
    APIC_LVT_THERMAL = 0x330,
    APIC_LVT_PERF_CNTR = 0x340,
    APIC_LVT_LINT0 = 0x350,
    APIC_LVT_LINT1 = 0x360,
    APIC_LVT_ERROR = 0x370,
    APIC_TIMER_COUNT = 0x380,
    APIC_TIMER_CURRENT = 0x390,
    APIC_TIMER_DIVIDE = 0x3E0
} apic_reg_t;




static inline uint32_t apic_read_reg(apic_reg_t reg)
{
    return *(volatile uint32_t *)(0xffffffffc0000000ul + reg);
}

static inline void apic_write_reg(apic_reg_t reg, uint32_t val)
{
    *(volatile uint32_t *)(0xffffffffc0000000ul + reg) = val;
}

static inline logical_id_t apic_get_logical_id(void)
{
    return apic_read_reg(APIC_LOGICAL_DEST) >> 24;
}

static inline word_t apic_get_cluster(logical_id_t logical_id)
{
    return 0;
}

static inline void apic_write_icr(word_t high, word_t low)
{
    apic_write_reg(APIC_ICR2, high);
    apic_write_reg(APIC_ICR1, low);
}
# 13 "/workspace/seL4-c89/preconfigured/include/arch/x86/arch/kernel/apic.h" 2
# 1 "/workspace/seL4-c89/preconfigured/include/arch/x86/arch/kernel/x2apic.h" 1






       




__attribute__((__section__(".boot.text"))) bool_t x2apic_is_enabled(void);
# 14 "/workspace/seL4-c89/preconfigured/include/arch/x86/arch/kernel/apic.h" 2

__attribute__((__section__(".boot.text"))) bool_t apic_enable(void);
__attribute__((__section__(".boot.text"))) void apic_send_init_ipi(cpu_id_t cpu_id);
__attribute__((__section__(".boot.text"))) void apic_send_startup_ipi(cpu_id_t cpu_id, paddr_t startup_addr);
__attribute__((__section__(".boot.text"))) paddr_t apic_get_base_paddr(void);
__attribute__((__section__(".boot.text"))) bool_t apic_init(bool_t mask_legacy_irqs);

uint32_t apic_read_reg(apic_reg_t reg);
void apic_write_reg(apic_reg_t reg, uint32_t val);
void apic_write_icr(word_t high, word_t low);

logical_id_t apic_get_logical_id(void);
word_t apic_get_cluster(logical_id_t logical_id);
void apic_ack_active_interrupt(void);
bool_t apic_is_interrupt_pending(void);

void apic_send_ipi_core(irq_t vector, cpu_id_t cpu_id);
void apic_send_ipi_cluster(irq_t vector, word_t mda);
# 16 "/workspace/seL4-c89/preconfigured/include/plat/pc99/plat/machine/interrupt.h" 2

# 1 "/workspace/seL4-c89/preconfigured/include/plat/pc99/plat/machine/acpi.h" 1






       





enum acpi_size {
    ACPI_V1_SIZE = 20,
    ACPI_V2_SIZE = 36
};


typedef struct acpi_header {
    char signature[4];
    uint32_t length;
    uint8_t revision;
    uint8_t checksum;
    char oem_id[6];
    char oem_table_id[8];
    uint32_t oem_revision;
    char creater_id[4];
    uint32_t creater_revision;
} __attribute__((packed)) acpi_header_t;


typedef struct acpi_rsdp {
    char signature[8];
    uint8_t checksum;
    char oem_id[6];
    uint8_t revision;
    uint32_t rsdt_address;
    uint32_t length;
    uint64_t xsdt_address;
    uint8_t extended_checksum;
    char reserved[3];
} __attribute__((packed)) acpi_rsdp_t;
typedef int __assert_failed_acpi_rsdp_packed[(sizeof(acpi_rsdp_t) == ACPI_V2_SIZE) ? 1 : -1] __attribute__((unused));


typedef struct acpi_rsdt {
    acpi_header_t header;
    uint32_t entry[1];
} __attribute__((packed)) acpi_rsdt_t;



bool_t acpi_init(acpi_rsdp_t *rsdp_data);


__attribute__((__section__(".boot.text"))) bool_t acpi_validate_rsdp(acpi_rsdp_t *acpi_rsdp);

uint32_t acpi_madt_scan(
    acpi_rsdp_t *acpi_rsdp,
    cpu_id_t *cpu_list,
    uint32_t *num_ioapic,
    paddr_t *ioapic_addrs
);

typedef struct acpi_rmrr_entry {
    dev_id_t device;
    uint32_t base;
    uint32_t limit;
} acpi_rmrr_entry_t;

typedef struct acpi_rmrr_list {
    acpi_rmrr_entry_t entries[1];
    int num;
} acpi_rmrr_list_t;

void acpi_dmar_scan(
    acpi_rsdp_t *acpi_rsdp,
    paddr_t *drhu_list,
    uint32_t *num_drhu,
    uint32_t max_dhru_list_len,
    acpi_rmrr_list_t *rmrr_list
);

bool_t acpi_fadt_scan(
    acpi_rsdp_t *acpi_rsdp
);
# 18 "/workspace/seL4-c89/preconfigured/include/plat/pc99/plat/machine/interrupt.h" 2
# 1 "/workspace/seL4-c89/preconfigured/include/plat/pc99/plat/machine/ioapic.h" 1






       





void ioapic_init(uint32_t num_nodes, cpu_id_t *cpu_list, uint32_t num_ioapic);
void ioapic_mask(bool_t mask, uint32_t ioapic, uint32_t pin);



exception_t ioapic_decode_map_pin_to_vector(word_t ioapic, word_t pin, word_t level, word_t polarity, word_t vector);


void ioapic_map_pin_to_vector(word_t ioapic, word_t pin, word_t level, word_t polarity, word_t vector);
# 19 "/workspace/seL4-c89/preconfigured/include/plat/pc99/plat/machine/interrupt.h" 2
# 1 "/workspace/seL4-c89/preconfigured/include/plat/pc99/plat/machine/pic.h" 1






       






void pic_remap_irqs(interrupt_t vector);
void pic_disable(void);

void pic_mask_irq(bool_t mask, irq_t irq);
bool_t pic_is_irq_pending(void);
void pic_ack_active_irq(void);
# 20 "/workspace/seL4-c89/preconfigured/include/plat/pc99/plat/machine/interrupt.h" 2
# 1 "/workspace/seL4-c89/preconfigured/include/plat/pc99/plat/machine/intel-vtd.h" 1






       
# 21 "/workspace/seL4-c89/preconfigured/include/plat/pc99/plat/machine/interrupt.h" 2

static inline void handleReservedIRQ(irq_t irq)
{
# 34 "/workspace/seL4-c89/preconfigured/include/plat/pc99/plat/machine/interrupt.h"
}

static inline void receivePendingIRQ(void)
{
    ;
    __asm__ volatile("sti\n"
                 "nop\n"
                 "cli\n"
                 : "=m"(x86KSPendingInterrupt));
}

static inline interrupt_t servicePendingIRQ(void)
{
    ;
    ;
    interrupt_t ret = x86KSPendingInterrupt;
    x86KSPendingInterrupt = int_invalid;
    return ret;
}


static inline irq_t getActiveIRQ(void)
{
    if (x86KScurInterrupt == int_invalid) {







        if (x86KSPendingInterrupt == int_invalid) {
            receivePendingIRQ();

            if (x86KSPendingInterrupt == int_invalid) {
                return irqInvalid;
            }
        }

        x86KScurInterrupt = servicePendingIRQ();
    }
    return x86KScurInterrupt - 0x20;
}


static inline bool_t isIRQPending(void)
{
    if (apic_is_interrupt_pending()) {
        return true;
    }

    if (wrap_config_set(0) && pic_is_irq_pending()) {
        return true;
    }

    return false;
}

static inline void ackInterrupt(irq_t irq)
{
    if (wrap_config_set(0) && irq <= irq_isa_max) {
        pic_ack_active_irq();
    } else {
        apic_ack_active_interrupt();
    }

    x86KScurInterrupt = int_invalid;
}

static inline void handleSpuriousIRQ(void)
{

}

static void inline updateIRQState(irq_t irq, x86_irq_state_t state)
{
    ;
    x86KSIRQState[irq] = state;
}

static inline void maskInterrupt(bool_t disable, irq_t irq)
{
    if (irq >= irq_isa_min && irq <= irq_isa_max) {
        if (wrap_config_set(0)) {
            pic_mask_irq(disable, irq);
        } else {


        }
    } else if (irq >= irq_user_min && irq <= irq_user_max) {
        x86_irq_state_t state = x86KSIRQState[irq];
        switch (x86_irq_state_get_irqType(state)) {
        case x86_irq_state_irq_ioapic: {
            uint32_t ioapic = x86_irq_state_irq_ioapic_get_id(state);
            uint32_t pin = x86_irq_state_irq_ioapic_get_pin(state);
            ioapic_mask(disable, ioapic, pin);
            state = x86_irq_state_irq_ioapic_set_masked(state, disable);
            updateIRQState(irq, state);
        }
        break;
        case x86_irq_state_irq_msi:

            break;
        case x86_irq_state_irq_free:



            break;
        }
    } else {


    }
}
# 10 "/workspace/seL4-c89/preconfigured/include/plat/pc99/plat/machine/hardware.h" 2




bool_t platAddDevices(void);
# 14 "/workspace/seL4-c89/preconfigured/include/object/objecttype.h" 2
# 1 "/workspace/seL4-c89/preconfigured/include/object/cap.h" 1






       

struct deriveCap_ret {
    exception_t status;
    cap_t cap;
};
typedef struct deriveCap_ret deriveCap_ret_t;

struct finaliseCap_ret {
    cap_t remainder;


    cap_t cleanupInfo;
};
typedef struct finaliseCap_ret finaliseCap_ret_t;
# 15 "/workspace/seL4-c89/preconfigured/include/object/objecttype.h" 2
# 1 "/workspace/seL4-c89/preconfigured/include/arch/x86/arch/object/objecttype.h" 1






       







deriveCap_ret_t Arch_deriveCap(cte_t *slot, cap_t cap);
cap_t __attribute__((__const__)) Arch_updateCapData(bool_t preserve, word_t data, cap_t cap);
cap_t __attribute__((__const__)) Arch_maskCapRights(seL4_CapRights_t cap_rights_mask, cap_t cap);
finaliseCap_ret_t Arch_finaliseCap(cap_t cap, bool_t final);
bool_t __attribute__((__const__)) Arch_sameRegionAs(cap_t cap_a, cap_t cap_b);
bool_t __attribute__((__const__)) Arch_sameObjectAs(cap_t cap_a, cap_t cap_b);
bool_t __attribute__((__const__)) Arch_isFrameType(word_t type);
cap_t Arch_createObject(object_t t, void *regionBase, word_t userSize, bool_t deviceMemory);
exception_t Arch_decodeInvocation(word_t invLabel, word_t length, cptr_t cptr, cte_t *slot, cap_t cap,
                                  bool_t call, word_t *buffer);
void Arch_prepareThreadDelete(tcb_t *thread);
word_t Arch_getObjectSize(word_t t);



deriveCap_ret_t Mode_deriveCap(cte_t *slot, cap_t cap);
finaliseCap_ret_t Mode_finaliseCap(cap_t cap, bool_t final);
bool_t __attribute__((__const__)) Mode_sameRegionAs(cap_t cap_a, cap_t cap_b);
cap_t Mode_createObject(object_t t, void *regionBase, word_t userSize, bool_t deviceMemory);
exception_t Mode_decodeInvocation(word_t invLabel, word_t length, cptr_t cptr, cte_t *slot, cap_t cap,
                                  bool_t call, word_t *buffer);
word_t Mode_getObjectSize(word_t t);

void Arch_postCapDeletion(cap_t cap);




static inline __attribute__((__const__)) bool_t Arch_isIRQControlDescendant(cap_t cap)
{
    return false;
}




static inline __attribute__((__const__)) bool_t Arch_isMDBParentOf(cap_t cap_a, cap_t cap_b, bool_t firstBadged)
{
    return true;
}
# 16 "/workspace/seL4-c89/preconfigured/include/object/objecttype.h" 2


deriveCap_ret_t deriveCap(cte_t *slot, cap_t cap);
finaliseCap_ret_t finaliseCap(cap_t cap, bool_t final, bool_t exposed);
bool_t __attribute__((__const__)) hasCancelSendRights(cap_t cap);
bool_t __attribute__((__const__)) sameRegionAs(cap_t cap_a, cap_t cap_b);
bool_t __attribute__((__const__)) sameObjectAs(cap_t cap_a, cap_t cap_b);
cap_t __attribute__((__const__)) updateCapData(bool_t preserve, word_t newData, cap_t cap);
cap_t __attribute__((__const__)) maskCapRights(seL4_CapRights_t seL4_CapRights, cap_t cap);
cap_t createObject(object_t t, void *regionBase, word_t, bool_t deviceMemory);
void createNewObjects(object_t t, cte_t *parent,
                      cte_t *destCNode, word_t destOffset, word_t destLength,
                      void *regionBase, word_t userSize, bool_t deviceMemory);
# 41 "/workspace/seL4-c89/preconfigured/include/object/objecttype.h"
exception_t decodeInvocation(word_t invLabel, word_t length,
                             cptr_t capIndex, cte_t *slot, cap_t cap,
                             bool_t block, bool_t call, word_t *buffer);
exception_t performInvocation_Endpoint(endpoint_t *ep, word_t badge,
                                       bool_t canGrant, bool_t canGrantReply,
                                       bool_t block, bool_t call);
exception_t performInvocation_Notification(notification_t *ntfn,
                                           word_t badge);
exception_t performInvocation_Reply(tcb_t *thread, cte_t *slot, bool_t canGrant);

word_t getObjectSize(word_t t, word_t userObjSize);

static inline void postCapDeletion(cap_t cap)
{
    if (cap_get_capType(cap) == cap_irq_handler_cap) {
        irq_t irq = (cap_irq_handler_cap_get_capIRQ(cap));
        deletedIRQHandler(irq);
    } else if (isArchCap(cap)) {
        Arch_postCapDeletion(cap);
    }
}

word_t __attribute__((__const__)) cap_get_capSizeBits(cap_t cap);
bool_t __attribute__((__const__)) cap_get_capIsPhysical(cap_t cap);
void *__attribute__((__const__)) cap_get_capPtr(cap_t cap);
bool_t __attribute__((__const__)) isCapRevocable(cap_t derivedCap, cap_t srcCap);
# 11 "/workspace/seL4-c89/preconfigured/include/object.h" 2
# 1 "/workspace/seL4-c89/preconfigured/include/object/notification.h" 1






       




void sendSignal(notification_t *ntfnPtr, word_t badge);
void receiveSignal(tcb_t *thread, cap_t cap, bool_t isBlocking);
void cancelAllSignals(notification_t *ntfnPtr);
void cancelSignal(tcb_t *threadPtr, notification_t *ntfnPtr);
void completeSignal(notification_t *ntfnPtr, tcb_t *tcb);
void unbindMaybeNotification(notification_t *ntfnPtr);
void unbindNotification(tcb_t *tcb);
void bindNotification(tcb_t *tcb, notification_t *ntfnPtr);
# 39 "/workspace/seL4-c89/preconfigured/include/object/notification.h"
static inline void ntfn_set_active(notification_t *ntfnPtr, word_t badge)
{
    notification_ptr_set_state(ntfnPtr, NtfnState_Active);
    notification_ptr_set_ntfnMsgIdentifier(ntfnPtr, badge);
}
# 12 "/workspace/seL4-c89/preconfigured/include/object.h" 2

# 1 "/workspace/seL4-c89/preconfigured/include/object/endpoint.h" 1






       




static inline tcb_queue_t __attribute__((__pure__)) ep_ptr_get_queue(endpoint_t *epptr)
{
    tcb_queue_t queue;

    queue.head = (tcb_t *)endpoint_ptr_get_epQueue_head(epptr);
    queue.end = (tcb_t *)endpoint_ptr_get_epQueue_tail(epptr);

    return queue;
}

static inline void ep_ptr_set_queue(endpoint_t *epptr, tcb_queue_t queue)
{
    endpoint_ptr_set_epQueue_head(epptr, (word_t)queue.head);
    endpoint_ptr_set_epQueue_tail(epptr, (word_t)queue.end);
}
# 35 "/workspace/seL4-c89/preconfigured/include/object/endpoint.h"
void sendIPC(bool_t blocking, bool_t do_call, word_t badge,
             bool_t canGrant, bool_t canGrantReply, tcb_t *thread,
             endpoint_t *epptr);
void receiveIPC(tcb_t *thread, cap_t cap, bool_t isBlocking);

void cancelIPC(tcb_t *tptr);
void cancelAllIPC(endpoint_t *epptr);
void cancelBadgedSends(endpoint_t *epptr, word_t badge);
void replyFromKernel_error(tcb_t *thread);
void replyFromKernel_success_empty(tcb_t *thread);
# 14 "/workspace/seL4-c89/preconfigured/include/object.h" 2



# 1 "/workspace/seL4-c89/preconfigured/include/object/untyped.h" 1






       
# 30 "/workspace/seL4-c89/preconfigured/include/object/untyped.h"
exception_t decodeUntypedInvocation(word_t invLabel, word_t length,
                                    cte_t *slot, cap_t cap,
                                    bool_t call, word_t *buffer);
exception_t invokeUntyped_Retype(cte_t *srcSlot, bool_t reset,
                                 void *retypeBase, object_t newType, word_t userSize,
                                 cte_t *destCNode, word_t destOffset, word_t destLength,
                                 bool_t deviceMemory);
# 18 "/workspace/seL4-c89/preconfigured/include/object.h" 2
# 10 "/workspace/seL4-c89/preconfigured/include/arch/x86/arch/kernel/thread.h" 2

word_t sanitiseRegister(register_t reg, word_t v, bool_t archInfo);

static inline bool_t __attribute__((__const__)) Arch_getSanitiseRegisterInfo(tcb_t *thread)
{
    return 0;
}

void Mode_postModifyRegisters(tcb_t *tptr);
# 13 "/workspace/seL4-c89/preconfigured/src/api/faults.c" 2
# 1 "/workspace/seL4-c89/preconfigured/include/machine/debug.h" 1






       
# 14 "/workspace/seL4-c89/preconfigured/src/api/faults.c" 2






typedef int __assert_failed_InvalidRoot[(lookup_fault_invalid_root + 1 == seL4_InvalidRoot) ? 1 : -1] __attribute__((unused));
typedef int __assert_failed_MissingCapability[(lookup_fault_missing_capability + 1 == seL4_MissingCapability) ? 1 : -1] __attribute__((unused));
typedef int __assert_failed_DepthMismatch[(lookup_fault_depth_mismatch + 1 == seL4_DepthMismatch) ? 1 : -1] __attribute__((unused));
typedef int __assert_failed_GuardMismatch[(lookup_fault_guard_mismatch + 1 == seL4_GuardMismatch) ? 1 : -1] __attribute__((unused));
typedef int __assert_failed_seL4_UnknownSyscall_Syscall[((word_t) n_syscallMessage == seL4_UnknownSyscall_Syscall) ? 1 : -1] __attribute__((unused));
typedef int __assert_failed_seL4_UserException_Number[((word_t) n_exceptionMessage == seL4_UserException_Number) ? 1 : -1] __attribute__((unused));
typedef int __assert_failed_seL4_UserException_Code[((word_t) n_exceptionMessage + 1 == seL4_UserException_Code) ? 1 : -1] __attribute__((unused));

static inline unsigned int
setMRs_lookup_failure(tcb_t *receiver, word_t *receiveIPCBuffer,
                      lookup_fault_t luf, unsigned int offset)
{
    word_t lufType = lookup_fault_get_lufType(luf);
    word_t i;

    i = setMR(receiver, receiveIPCBuffer, offset, lufType + 1);


    if (offset == seL4_CapFault_LookupFailureType) {
        ;
        ;
        ;
        ;
    } else {
        ;
    }

    switch (lufType) {
    case lookup_fault_invalid_root:
        return i;

    case lookup_fault_missing_capability:
        return setMR(receiver, receiveIPCBuffer, offset + 1,
                     lookup_fault_missing_capability_get_bitsLeft(luf));

    case lookup_fault_depth_mismatch:
        setMR(receiver, receiveIPCBuffer, offset + 1,
              lookup_fault_depth_mismatch_get_bitsLeft(luf));
        return setMR(receiver, receiveIPCBuffer, offset + 2,
                     lookup_fault_depth_mismatch_get_bitsFound(luf));

    case lookup_fault_guard_mismatch:
        setMR(receiver, receiveIPCBuffer, offset + 1,
              lookup_fault_guard_mismatch_get_bitsLeft(luf));
        setMR(receiver, receiveIPCBuffer, offset + 2,
              lookup_fault_guard_mismatch_get_guardFound(luf));
        return setMR(receiver, receiveIPCBuffer, offset + 3,
                     lookup_fault_guard_mismatch_get_bitsFound(luf));

    default:
        halt();
    }
}

static inline void copyMRsFaultReply(tcb_t *sender, tcb_t *receiver, MessageID_t id, word_t length)
{
    word_t i;
    bool_t archInfo;

    archInfo = Arch_getSanitiseRegisterInfo(receiver);

    for (i = 0; i < (((length)<(n_msgRegisters))?(length):(n_msgRegisters)); i++) {
        register_t r = fault_messages[id][i];
        word_t v = getRegister(sender, msgRegisters[i]);
        setRegister(receiver, r, sanitiseRegister(r, v, archInfo));
    }

    if (i < length) {
        word_t *sendBuf = lookupIPCBuffer(false, sender);
        if (sendBuf) {
            for (; i < length; i++) {
                register_t r = fault_messages[id][i];
                word_t v = sendBuf[i + 1];
                setRegister(receiver, r, sanitiseRegister(r, v, archInfo));
            }
        }
    }
}

static inline void copyMRsFault(tcb_t *sender, tcb_t *receiver, MessageID_t id,
                                word_t length, word_t *receiveIPCBuffer)
{
    word_t i;
    for (i = 0; i < (((length)<(n_msgRegisters))?(length):(n_msgRegisters)); i++) {
        setRegister(receiver, msgRegisters[i], getRegister(sender, fault_messages[id][i]));
    }

    if (receiveIPCBuffer) {
        for (; i < length; i++) {
            receiveIPCBuffer[i + 1] = getRegister(sender, fault_messages[id][i]);
        }
    }
}

bool_t handleFaultReply(tcb_t *receiver, tcb_t *sender)
{

    seL4_MessageInfo_t tag = messageInfoFromWord(getRegister(sender, msgInfoRegister));
    word_t label = seL4_MessageInfo_get_label(tag);
    word_t length = seL4_MessageInfo_get_length(tag);
    seL4_Fault_t fault = receiver->tcbFault;

    switch (seL4_Fault_get_seL4_FaultType(fault)) {
    case seL4_Fault_CapFault:
        return true;

    case seL4_Fault_UnknownSyscall:
        copyMRsFaultReply(sender, receiver, MessageID_Syscall, (((length)<(n_syscallMessage))?(length):(n_syscallMessage)));
        return (label == 0);

    case seL4_Fault_UserException:
        copyMRsFaultReply(sender, receiver, MessageID_Exception, (((length)<(n_exceptionMessage))?(length):(n_exceptionMessage)));
        return (label == 0);
# 186 "/workspace/seL4-c89/preconfigured/src/api/faults.c"
    default:
        return Arch_handleFaultReply(receiver, sender, seL4_Fault_get_seL4_FaultType(fault));
    }
}

word_t setMRs_fault(tcb_t *sender, tcb_t *receiver, word_t *receiveIPCBuffer)
{
    switch (seL4_Fault_get_seL4_FaultType(sender->tcbFault)) {
    case seL4_Fault_CapFault:
        setMR(receiver, receiveIPCBuffer, seL4_CapFault_IP, getRestartPC(sender));
        setMR(receiver, receiveIPCBuffer, seL4_CapFault_Addr,
              seL4_Fault_CapFault_get_address(sender->tcbFault));
        setMR(receiver, receiveIPCBuffer, seL4_CapFault_InRecvPhase,
              seL4_Fault_CapFault_get_inReceivePhase(sender->tcbFault));
        return setMRs_lookup_failure(receiver, receiveIPCBuffer,
                                     sender->tcbLookupFailure, seL4_CapFault_LookupFailureType);

    case seL4_Fault_UnknownSyscall: {
        copyMRsFault(sender, receiver, MessageID_Syscall, n_syscallMessage,
                     receiveIPCBuffer);

        return setMR(receiver, receiveIPCBuffer, n_syscallMessage,
                     seL4_Fault_UnknownSyscall_get_syscallNumber(sender->tcbFault));
    }

    case seL4_Fault_UserException: {
        copyMRsFault(sender, receiver, MessageID_Exception,
                     n_exceptionMessage, receiveIPCBuffer);
        setMR(receiver, receiveIPCBuffer, n_exceptionMessage,
              seL4_Fault_UserException_get_number(sender->tcbFault));
        return setMR(receiver, receiveIPCBuffer, n_exceptionMessage + 1u,
                     seL4_Fault_UserException_get_code(sender->tcbFault));
    }
# 257 "/workspace/seL4-c89/preconfigured/src/api/faults.c"
    default:
        return Arch_setMRs_fault(sender, receiver, receiveIPCBuffer,
                                 seL4_Fault_get_seL4_FaultType(sender->tcbFault));
    }
}
# 1 "/workspace/seL4-c89/preconfigured/src/api/syscall.c"
# 9 "/workspace/seL4-c89/preconfigured/src/api/syscall.c"
# 1 "/workspace/seL4-c89/preconfigured/include/benchmark/benchmark.h" 1






       


# 1 "/workspace/seL4-c89/preconfigured/include/arch/x86/arch/benchmark.h" 1






       
# 11 "/workspace/seL4-c89/preconfigured/include/benchmark/benchmark.h" 2



# 1 "/workspace/seL4-c89/preconfigured/libsel4/include/sel4/benchmark_tracepoints_types.h" 1






       
# 15 "/workspace/seL4-c89/preconfigured/include/benchmark/benchmark.h" 2
# 10 "/workspace/seL4-c89/preconfigured/src/api/syscall.c" 2

# 1 "/workspace/seL4-c89/preconfigured/include/benchmark/benchmark_track.h" 1






       



# 1 "/workspace/seL4-c89/preconfigured/libsel4/include/sel4/benchmark_track_types.h" 1






       
# 12 "/workspace/seL4-c89/preconfigured/include/benchmark/benchmark_track.h" 2


# 1 "/workspace/seL4-c89/preconfigured/include/kernel/cspace.h" 1






       






struct lookupCap_ret {
    exception_t status;
    cap_t cap;
};
typedef struct lookupCap_ret lookupCap_ret_t;

struct lookupCapAndSlot_ret {
    exception_t status;
    cap_t cap;
    cte_t *slot;
};
typedef struct lookupCapAndSlot_ret lookupCapAndSlot_ret_t;

struct lookupSlot_raw_ret {
    exception_t status;
    cte_t *slot;
};
typedef struct lookupSlot_raw_ret lookupSlot_raw_ret_t;

struct lookupSlot_ret {
    exception_t status;
    cte_t *slot;
};
typedef struct lookupSlot_ret lookupSlot_ret_t;

struct resolveAddressBits_ret {
    exception_t status;
    cte_t *slot;
    word_t bitsRemaining;
};
typedef struct resolveAddressBits_ret resolveAddressBits_ret_t;

lookupCap_ret_t lookupCap(tcb_t *thread, cptr_t cPtr);
lookupCapAndSlot_ret_t lookupCapAndSlot(tcb_t *thread, cptr_t cPtr);
lookupSlot_raw_ret_t lookupSlot(tcb_t *thread, cptr_t capptr);
lookupSlot_ret_t lookupSlotForCNodeOp(bool_t isSource,
                                      cap_t root, cptr_t capptr,
                                      word_t depth);
lookupSlot_ret_t lookupSourceSlot(cap_t root, cptr_t capptr,
                                  word_t depth);
lookupSlot_ret_t lookupTargetSlot(cap_t root, cptr_t capptr,
                                  word_t depth);
lookupSlot_ret_t lookupPivotSlot(cap_t root, cptr_t capptr,
                                 word_t depth);
resolveAddressBits_ret_t resolveAddressBits(cap_t nodeCap,
                                            cptr_t capptr,
                                            word_t n_bits);
# 15 "/workspace/seL4-c89/preconfigured/include/benchmark/benchmark_track.h" 2
# 12 "/workspace/seL4-c89/preconfigured/src/api/syscall.c" 2
# 1 "/workspace/seL4-c89/preconfigured/include/benchmark/benchmark_utilisation.h" 1






       



# 1 "/workspace/seL4-c89/preconfigured/libsel4/include/sel4/benchmark_utilisation_types.h" 1






       
# 12 "/workspace/seL4-c89/preconfigured/include/benchmark/benchmark_utilisation.h" 2
# 13 "/workspace/seL4-c89/preconfigured/src/api/syscall.c" 2




# 1 "/workspace/seL4-c89/preconfigured/include/kernel/faulthandler.h" 1






       
# 22 "/workspace/seL4-c89/preconfigured/include/kernel/faulthandler.h"
exception_t sendFaultIPC(tcb_t *tptr);
void handleDoubleFault(tcb_t *tptr, seL4_Fault_t ex1);

void handleFault(tcb_t *tptr);
# 18 "/workspace/seL4-c89/preconfigured/src/api/syscall.c" 2






# 1 "/workspace/seL4-c89/preconfigured/include/string.h" 1






       



word_t strnlen(const char *s, word_t maxlen);
word_t strlcpy(char *dest, const char *src, word_t size);
word_t strlcat(char *dest, const char *src, word_t size);
# 25 "/workspace/seL4-c89/preconfigured/src/api/syscall.c" 2
# 1 "/workspace/seL4-c89/preconfigured/include/kernel/traps.h" 1






       



# 1 "/workspace/seL4-c89/preconfigured/include/arch/x86/arch/kernel/traps.h" 1






       




static inline void arch_c_entry_hook(void)
{

    tcb_t *tcb = ksCurThread;
    x86_save_fsgs_base(tcb, 0lu);

}

static inline void arch_c_exit_hook(void)
{

    tcb_t *tcb = ksCurThread;
    x86_load_fsgs_base(tcb, 0lu);
}




void c_handle_syscall(word_t cptr, word_t msgInfo, syscall_t syscall)

__attribute__((externally_visible)) __attribute__((__noreturn__));

void restore_user_context(void)
__attribute__((externally_visible)) __attribute__((__noreturn__));

void c_nested_interrupt(int irq)
__attribute__((externally_visible));

void c_handle_interrupt(int irq, int syscall)
__attribute__((externally_visible)) __attribute__((__noreturn__));

void c_handle_vmexit(void)
__attribute__((externally_visible)) __attribute__((__noreturn__));
# 12 "/workspace/seL4-c89/preconfigured/include/kernel/traps.h" 2
# 1 "/workspace/seL4-c89/preconfigured/include/smp/lock.h" 1






       






# 1 "/workspace/seL4-c89/preconfigured/include/smp/ipi.h" 1






       




# 1 "/workspace/seL4-c89/preconfigured/include/arch/x86/arch/smp/ipi.h" 1






       
# 13 "/workspace/seL4-c89/preconfigured/include/smp/ipi.h" 2
# 15 "/workspace/seL4-c89/preconfigured/include/smp/lock.h" 2
# 13 "/workspace/seL4-c89/preconfigured/include/kernel/traps.h" 2




static inline void c_entry_hook(void)
{
    arch_c_entry_hook();



}





static inline void c_exit_hook(void)
{
# 44 "/workspace/seL4-c89/preconfigured/include/kernel/traps.h"
    arch_c_exit_hook();
}
# 26 "/workspace/seL4-c89/preconfigured/src/api/syscall.c" 2
# 40 "/workspace/seL4-c89/preconfigured/src/api/syscall.c"
exception_t handleInterruptEntry(void)
{
    irq_t irq;
# 51 "/workspace/seL4-c89/preconfigured/src/api/syscall.c"
    irq = getActiveIRQ();
    if ((irq) != (irqInvalid)) {
        handleInterrupt(irq);
    } else {



        handleSpuriousIRQ();
    }




        schedule();
        activateThread();




    return EXCEPTION_NONE;
}

exception_t handleUnknownSyscall(word_t w)
{
# 210 "/workspace/seL4-c89/preconfigured/src/api/syscall.c"
    { { current_fault = seL4_Fault_UnknownSyscall_new(w); handleFault(ksCurThread); } }
# 227 "/workspace/seL4-c89/preconfigured/src/api/syscall.c"
    schedule();
    activateThread();

    return EXCEPTION_NONE;
}

exception_t handleUserLevelFault(word_t w_a, word_t w_b)
{
    { { current_fault = seL4_Fault_UserException_new(w_a, w_b); handleFault(ksCurThread); } }



    schedule();
    activateThread();

    return EXCEPTION_NONE;
}

exception_t handleVMFaultEvent(vm_fault_type_t vm_faultType)
{
    { { exception_t status = handleVMFault(ksCurThread, vm_faultType); if (status != EXCEPTION_NONE) { handleFault(ksCurThread); } } }
# 256 "/workspace/seL4-c89/preconfigured/src/api/syscall.c"
    schedule();
    activateThread();

    return EXCEPTION_NONE;
}




static exception_t handleInvocation(bool_t isCall, bool_t isBlocking)

{
    seL4_MessageInfo_t info;
    lookupCapAndSlot_ret_t lu_ret;
    word_t *buffer;
    exception_t status;
    word_t length;
    tcb_t *thread;

    thread = ksCurThread;

    info = messageInfoFromWord(getRegister(thread, msgInfoRegister));

    cptr_t cptr = getRegister(thread, capRegister);



    lu_ret = lookupCapAndSlot(thread, cptr);

    if (__builtin_expect(!!(lu_ret.status != EXCEPTION_NONE), 0)) {
        ;
        current_fault = seL4_Fault_CapFault_new(cptr, false);

        if (isBlocking) {
            handleFault(thread);
        }

        return EXCEPTION_NONE;
    }

    buffer = lookupIPCBuffer(false, thread);

    status = lookupExtraCaps(thread, buffer, info);

    if (__builtin_expect(!!(status != EXCEPTION_NONE), 0)) {
        ;
        if (isBlocking) {
            handleFault(thread);
        }
        return EXCEPTION_NONE;
    }


    length = seL4_MessageInfo_get_length(info);
    if (__builtin_expect(!!(length > n_msgRegisters && !buffer), 0)) {
        length = n_msgRegisters;
    }






    status = decodeInvocation(seL4_MessageInfo_get_label(info), length,
                              cptr, lu_ret.slot, lu_ret.cap,
                              isBlocking, isCall, buffer);


    if (__builtin_expect(!!(status == EXCEPTION_PREEMPTED), 0)) {
        return status;
    }

    if (__builtin_expect(!!(status == EXCEPTION_SYSCALL_ERROR), 0)) {
        if (isCall) {
            replyFromKernel_error(thread);
        }
        return EXCEPTION_NONE;
    }

    if (__builtin_expect(!!(thread_state_get_tsType(thread->tcbState) == ThreadState_Restart), 0)
                                                                             ) {
        if (isCall) {
            replyFromKernel_success_empty(thread);
        }
        setThreadState(thread, ThreadState_Running);
    }

    return EXCEPTION_NONE;
}
# 369 "/workspace/seL4-c89/preconfigured/src/api/syscall.c"
static void handleReply(void)
{
    cte_t *callerSlot;
    cap_t callerCap;

    callerSlot = (((cte_t *)((word_t)(ksCurThread)&~((1ul << (11)) - 1ul)))+(tcbCaller));
    callerCap = callerSlot->cap;

    switch (cap_get_capType(callerCap)) {
    case cap_reply_cap: {
        tcb_t *caller;

        if (cap_reply_cap_get_capReplyMaster(callerCap)) {
            break;
        }
        caller = ((tcb_t *)(cap_reply_cap_get_capTCBPtr(callerCap)));


        ;
        doReplyTransfer(ksCurThread, caller, callerSlot,
                        cap_reply_cap_get_capReplyCanGrant(callerCap));
        return;
    }

    case cap_null_cap:

        return;

    default:
        break;
    }

    halt();
}





static void handleRecv(bool_t isBlocking)

{
    word_t epCPtr;
    lookupCap_ret_t lu_ret;

    epCPtr = getRegister(ksCurThread, capRegister);

    lu_ret = lookupCap(ksCurThread, epCPtr);

    if (__builtin_expect(!!(lu_ret.status != EXCEPTION_NONE), 0)) {

        current_fault = seL4_Fault_CapFault_new(epCPtr, true);
        handleFault(ksCurThread);
        return;
    }

    switch (cap_get_capType(lu_ret.cap)) {
    case cap_endpoint_cap:
        if (__builtin_expect(!!(!cap_endpoint_cap_get_capCanReceive(lu_ret.cap)), 0)) {
            current_lookup_fault = lookup_fault_missing_capability_new(0);
            current_fault = seL4_Fault_CapFault_new(epCPtr, true);
            handleFault(ksCurThread);
            break;
        }
# 447 "/workspace/seL4-c89/preconfigured/src/api/syscall.c"
        deleteCallerCap(ksCurThread);
        receiveIPC(ksCurThread, lu_ret.cap, isBlocking);

        break;

    case cap_notification_cap: {
        notification_t *ntfnPtr;
        tcb_t *boundTCB;
        ntfnPtr = ((notification_t *)(cap_notification_cap_get_capNtfnPtr(lu_ret.cap)));
        boundTCB = (tcb_t *)notification_ptr_get_ntfnBoundTCB(ntfnPtr);
        if (__builtin_expect(!!(!cap_notification_cap_get_capNtfnCanReceive(lu_ret.cap) || (boundTCB && boundTCB != ksCurThread)), 0)
                                                                          ) {
            current_lookup_fault = lookup_fault_missing_capability_new(0);
            current_fault = seL4_Fault_CapFault_new(epCPtr, true);
            handleFault(ksCurThread);
            break;
        }

        receiveSignal(ksCurThread, lu_ret.cap, isBlocking);
        break;
    }
    default:
        current_lookup_fault = lookup_fault_missing_capability_new(0);
        current_fault = seL4_Fault_CapFault_new(epCPtr, true);
        handleFault(ksCurThread);
        break;
    }
}
# 502 "/workspace/seL4-c89/preconfigured/src/api/syscall.c"
static void handleYield(void)
{
# 512 "/workspace/seL4-c89/preconfigured/src/api/syscall.c"
    tcbSchedDequeue(ksCurThread);
    tcbSchedAppend(ksCurThread);
    rescheduleRequired();

}

exception_t handleSyscall(syscall_t syscall)
{
    exception_t ret;
    irq_t irq;
    { { switch (syscall) { case SysSend: ret = handleInvocation(false, true); if (__builtin_expect(!!(ret != EXCEPTION_NONE), 0)) { ; irq = getActiveIRQ(); if ((irq) != (irqInvalid)) { handleInterrupt(irq); } } break; case SysNBSend: ret = handleInvocation(false, false); if (__builtin_expect(!!(ret != EXCEPTION_NONE), 0)) { ; irq = getActiveIRQ(); if ((irq) != (irqInvalid)) { handleInterrupt(irq); } } break; case SysCall: ret = handleInvocation(true, true); if (__builtin_expect(!!(ret != EXCEPTION_NONE), 0)) { ; irq = getActiveIRQ(); if ((irq) != (irqInvalid)) { handleInterrupt(irq); } } break; case SysRecv: handleRecv(true); break; case SysReply: handleReply(); break; case SysReplyRecv: handleReply(); handleRecv(true); break; case SysNBRecv: handleRecv(false); break; case SysYield: handleYield(); break; default: halt(); } } }
# 631 "/workspace/seL4-c89/preconfigured/src/api/syscall.c"
    schedule();
    activateThread();

    return EXCEPTION_NONE;
}
# 1 "/workspace/seL4-c89/preconfigured/src/arch/x86/64/c_traps.c"
# 9 "/workspace/seL4-c89/preconfigured/src/arch/x86/64/c_traps.c"
# 1 "/workspace/seL4-c89/preconfigured/include/machine/fpu.h" 1






       




# 1 "/workspace/seL4-c89/preconfigured/include/arch/x86/arch/machine/fpu.h" 1






       
# 19 "/workspace/seL4-c89/preconfigured/include/arch/x86/arch/machine/fpu.h"
bool_t Arch_initFpu(void);


void Arch_initFpuContext(user_context_t *context);

static inline uint32_t xsave_features_high(void)
{
    uint64_t features = 3;
    return (uint32_t)(features >> 32);
}

static inline uint32_t xsave_features_low(void)
{
    uint64_t features = 3;
    return (uint32_t)(features & 0xffffffff);
}


static inline void saveFpuState(tcb_t *thread)
{
    user_fpu_state_t *dest = &thread->tcbArch.tcbContext.fpuState;







    if (wrap_config_set(0)) {
        __asm__ volatile("fxsave %[dest]" : [dest] "=m"(*dest));
    } else if (wrap_config_set(0)) {
        __asm__ volatile("xsaveopt %[dest]" : [dest] "=m"(*dest) : "d"(xsave_features_high()), "a"(xsave_features_low()));
    } else if (wrap_config_set(1)) {
        __asm__ volatile("xsave %[dest]" : [dest] "=m"(*dest) : "d"(xsave_features_high()), "a"(xsave_features_low()));
    } else if (wrap_config_set(0)) {
        __asm__ volatile("xsavec %[dest]" : [dest] "=m"(*dest) : "d"(xsave_features_high()), "a"(xsave_features_low()));
    } else if (wrap_config_set(0)) {
        __asm__ volatile("xsaves %[dest]" : [dest] "=m"(*dest) : "d"(xsave_features_high()), "a"(xsave_features_low()));
    }
}


static inline void loadFpuState(const tcb_t *thread)
{
    const user_fpu_state_t *src = &thread->tcbArch.tcbContext.fpuState;







    if (wrap_config_set(0)) {
        __asm__ volatile("fxrstor %[src]" :: [src] "m"(*src));
    } else if (wrap_config_set(1)) {
        if (wrap_config_set(0)) {
            __asm__ volatile("xrstors %[src]" :: [src] "m"(*src), "d"(xsave_features_high()), "a"(xsave_features_low()));
        } else {
            __asm__ volatile("xrstor %[src]" :: [src] "m"(*src), "d"(xsave_features_high()), "a"(xsave_features_low()));
        }
    }
}


static inline void finit(void)
{
    __asm__ volatile("finit" :: "m"(control_reg_order));
}







static inline void enableFpu(void)
{
    __asm__ volatile("clts" :: "m"(control_reg_order));
}




static inline void disableFpu(void)
{
    write_cr0(read_cr0() | (1ul << (3)));
}
# 13 "/workspace/seL4-c89/preconfigured/include/machine/fpu.h" 2




void fpuRelease(tcb_t *thread);

void switchLocalFpuOwner(tcb_t *new_owner);


void switchFpuOwner(tcb_t *new_owner, word_t cpu);


static inline bool_t nativeThreadUsingFPU(tcb_t *thread)
{
    return thread == ksCurFPUOwner;
}

static inline void __attribute__((always_inline)) lazyFPURestore(tcb_t *thread)
{
    if (thread->tcbFlags & seL4_TCBFlag_fpuDisabled) {
        disableFpu();
    } else if (nativeThreadUsingFPU(thread)) {
        enableFpu();
    } else {
        switchLocalFpuOwner(thread);
    }
}
# 10 "/workspace/seL4-c89/preconfigured/src/arch/x86/64/c_traps.c" 2

# 1 "/workspace/seL4-c89/preconfigured/include/arch/x86/arch/machine/debug.h" 1






       
# 12 "/workspace/seL4-c89/preconfigured/src/arch/x86/64/c_traps.c" 2
# 1 "/workspace/seL4-c89/preconfigured/include/kernel/stack.h" 1






       



# 1 "/workspace/seL4-c89/preconfigured/include/arch/x86/arch/64/mode/kernel/stack.h" 1






       
# 12 "/workspace/seL4-c89/preconfigured/include/kernel/stack.h" 2






extern char kernel_stack_alloc[1][(1ul << (12))];
# 13 "/workspace/seL4-c89/preconfigured/src/arch/x86/64/c_traps.c" 2
# 208 "/workspace/seL4-c89/preconfigured/src/arch/x86/64/c_traps.c"
void __attribute__((externally_visible)) __attribute__((__noreturn__)) restore_user_context(void)
{
    c_exit_hook();

    do {} while (0);



    if (x86KSPendingInterrupt != int_invalid) {
        interrupt_t irq = servicePendingIRQ();

        __asm__ volatile(
            "movq %[stack_top], %%rsp\n"
            "movq %[syscall], %%rsi\n"
            "movq %[irq], %%rdi\n"
            "call c_handle_interrupt"
            :
            : [stack_top] "r"(&(kernel_stack_alloc[0lu][(1ul << (12))])),
            [syscall] "i"(0),
            [irq] "r"((seL4_Word)irq)
            : "memory");
        __builtin_unreachable();
    }

    tcb_t *cur_thread = ksCurThread;
    word_t *irqstack = x64KSIRQStack[0lu];
# 255 "/workspace/seL4-c89/preconfigured/src/arch/x86/64/c_traps.c"
    if (wrap_config_set(0)) {
        x86_disable_ibrs();
    }




    if (__builtin_expect(!!(cur_thread->tcbArch.tcbContext.registers[Error] == -1), 1) &&
        (!wrap_config_set(0) || !wrap_config_set(0)
         || ((cur_thread->tcbArch.tcbContext.registers[FLAGS] & (1ul << (8))) == 0))) {
        if (wrap_config_set(1)) {
# 274 "/workspace/seL4-c89/preconfigured/src/arch/x86/64/c_traps.c"
            irqstack[0] = 0;
            irqstack[1] = 0;
            irqstack[2] = 0;
            irqstack[3] = 0;
            irqstack[4] = 0;
            irqstack[5] = 0;
        }
        if (wrap_config_set(0)) {
            cur_thread->tcbArch.tcbContext.registers[FLAGS] &= ~(1ul << (9));



            __asm__ volatile(

                "movq %0, %%rsp\n"
                "popq %%rdi\n"
                "popq %%rsi\n"
                "popq %%rax\n"
                "popq %%rbx\n"
                "popq %%rbp\n"
                "popq %%r12\n"
                "popq %%r13\n"
                "popq %%r14\n"

                "addq $8, %%rsp\n"
                "popq %%r10\n"
                "popq %%r8\n"
                "popq %%r9\n"
                "popq %%r15\n"

                "popfq\n"

                "orq %[IF], -8(%%rsp)\n"

                "popq %%rdx\n"

                "addq $8, %%rsp\n"

                "popq %%rcx\n"

                "addq $8, %%rsp\n"





                "popq %%r11\n"

                "movq (x64KSCurrentUserCR3), %%rsp\n"
                "movq %%rsp, %%cr3\n"




                "sti\n"
                "rex.w sysexit" "\n"
                :
                : "r"(&cur_thread->tcbArch.tcbContext.registers[RDI]),



                [IF] "i"((1ul << (9)))


                : "memory"
            );
        } else {
            __asm__ volatile(

                "movq %0, %%rsp\n"
                "popq %%rdi\n"
                "popq %%rsi\n"
                "popq %%rax\n"
                "popq %%rbx\n"
                "popq %%rbp\n"
                "popq %%r12\n"
                "popq %%r13\n"
                "popq %%r14\n"
                "popq %%rdx\n"
                "popq %%r10\n"
                "popq %%r8\n"
                "popq %%r9\n"
                "popq %%r15\n"

                "popq %%r11\n"






                "popq %%rcx\n"

                "movq (x64KSCurrentUserCR3), %%rsp\n"
                "movq %%rsp, %%cr3\n"



                "xor %%rsp, %%rsp\n"


                "sysretq\n"
                :
                : "r"(&cur_thread->tcbArch.tcbContext.registers[RDI])





                : "memory"
            );
        }
    } else {



        irqstack[0] = 0;

        irqstack[1] = getRegister(cur_thread, NextIP);
        irqstack[2] = getRegister(cur_thread, CS);
        irqstack[3] = getRegister(cur_thread, FLAGS);
        irqstack[4] = getRegister(cur_thread, RSP);
        irqstack[5] = getRegister(cur_thread, SS);
        __asm__ volatile(

            "movq %0, %%rsp\n"
            "popq %%rdi\n"
            "popq %%rsi\n"
            "popq %%rax\n"
            "popq %%rbx\n"
            "popq %%rbp\n"
            "popq %%r12\n"
            "popq %%r13\n"
            "popq %%r14\n"
            "popq %%rdx\n"
            "popq %%r10\n"
            "popq %%r8\n"
            "popq %%r9\n"
            "popq %%r15\n"

            "addq $40, %%rsp\n"
            "popq %%r11\n"






            "popq %%rcx\n"
# 446 "/workspace/seL4-c89/preconfigured/src/arch/x86/64/c_traps.c"
            "movq (x64KSCurrentUserCR3), %%rsp\n"
            "movq %%rsp, %%cr3\n"

            "leaq x64KSIRQStack + 8, %%rsp\n"

            "iretq\n"
            :
            : "r"(&cur_thread->tcbArch.tcbContext.registers[RDI])






            : "memory"
        );
    }
    __builtin_unreachable();
}

void __attribute__((externally_visible)) __attribute__((__noreturn__)) c_x64_handle_interrupt(int irq, int syscall);
void __attribute__((externally_visible)) __attribute__((__noreturn__)) c_x64_handle_interrupt(int irq, int syscall)
{
    if (wrap_config_set(0)) {
        x86_enable_ibrs();
    }
    word_t *irq_stack = x64KSIRQStack[0lu];
    setRegister(ksCurThread, Error, irq_stack[0]);




    setRegister(ksCurThread, NextIP, irq_stack[1]);
    setRegister(ksCurThread, FaultIP, irq_stack[1]);
    setRegister(ksCurThread, FLAGS, irq_stack[3]);
    setRegister(ksCurThread, RSP, irq_stack[4]);
    c_handle_interrupt(irq, syscall);
    __builtin_unreachable();
}
# 1 "/workspace/seL4-c89/preconfigured/src/arch/x86/64/kernel/elf.c"






# 1 "/workspace/seL4-c89/preconfigured/include/arch/x86/arch/kernel/elf.h" 1






       


# 1 "/workspace/seL4-c89/preconfigured/include/arch/x86/arch/64/mode/kernel/elf.h" 1






       




typedef struct Elf64_Header {
    unsigned char e_ident[16];
    uint16_t e_type;
    uint16_t e_machine;
    uint32_t e_version;
    uint64_t e_entry;
    uint64_t e_phoff;
    uint64_t e_shoff;
    uint32_t e_flags;
    uint16_t e_ehsize;
    uint16_t e_phentsize;
    uint16_t e_phnum;
    uint16_t e_shentsize;
    uint16_t e_shnum;
    uint16_t e_shstrndx;
} Elf64_Header_t, Elf_Header_t;

typedef struct Elf64_Phdr {
    uint32_t p_type;
    uint32_t p_flags;
    uint64_t p_offset;
    uint64_t p_vaddr;
    uint64_t p_paddr;
    uint64_t p_filesz;
    uint64_t p_memsz;
    uint64_t p_align;
} Elf64_Phdr_t, Elf_Phdr_t;
# 11 "/workspace/seL4-c89/preconfigured/include/arch/x86/arch/kernel/elf.h" 2


bool_t elf_checkFile(Elf_Header_t *elfFile);
v_region_t elf_getMemoryBounds(Elf_Header_t *elfFile);
void elf_load(Elf_Header_t *elfFile, seL4_Word offset);
# 8 "/workspace/seL4-c89/preconfigured/src/arch/x86/64/kernel/elf.c" 2


__attribute__((__section__(".boot.text"))) bool_t elf_checkFile(Elf64_Header_t *elf)
{
    return (
               elf->e_ident[0] == '\177' &&
               elf->e_ident[1] == 'E' &&
               elf->e_ident[2] == 'L' &&
               elf->e_ident[3] == 'F' &&
               elf->e_ident[4] == 2
           );
}


__attribute__((__section__(".boot.text"))) v_region_t elf_getMemoryBounds(Elf64_Header_t *elf)
{
    v_region_t elf_reg;
    vptr_t sect_start;
    vptr_t sect_end;
    uint32_t i;
    Elf64_Phdr_t *phdr = (Elf64_Phdr_t *)((paddr_t)elf + elf->e_phoff);

    elf_reg.start = 0x7fffffffffffffffUL;
    elf_reg.end = 0;

    for (i = 0; i < elf->e_phnum; i++) {
        if (phdr[i].p_memsz > 0) {
            sect_start = phdr[i].p_vaddr;
            sect_end = sect_start + phdr[i].p_memsz;
            if (sect_start < elf_reg.start) {
                elf_reg.start = sect_start;
            }
            if (sect_end > elf_reg.end) {
                elf_reg.end = sect_end;
            }
        }
    }

    return elf_reg;
}

__attribute__((__section__(".boot.text"))) void elf_load(Elf64_Header_t *elf, seL4_Word offset)
{
    paddr_t src;
    paddr_t dst;
    uint64_t len;
    uint32_t i;
    Elf64_Phdr_t *phdr = (Elf64_Phdr_t *)((paddr_t)elf + elf->e_phoff);

    for (i = 0; i < elf->e_phnum; i++) {
        src = (paddr_t)elf + phdr[i].p_offset;
        dst = phdr[i].p_vaddr + offset;
        len = phdr[i].p_filesz;
        memcpy((void *)dst, (char *)src, len);
        dst += len;
        memset((void *)dst, 0, phdr[i].p_memsz - len);
    }
}
# 1 "/workspace/seL4-c89/preconfigured/src/arch/x86/64/kernel/thread.c"
# 14 "/workspace/seL4-c89/preconfigured/src/arch/x86/64/kernel/thread.c"
void Arch_switchToThread(tcb_t *tcb)
{

    setVMRoot(tcb);






    if (wrap_config_set(0)) {
        x86_ibpb();
    }

    if (wrap_config_set(0)) {
        x86_flush_rsb();
    }
}

__attribute__((__section__(".boot.text"))) void Arch_configureIdleThread(tcb_t *tcb)
{
    setRegister(tcb, FLAGS, (1ul << (9)) | (1ul << (1)));
    setRegister(tcb, NextIP, (word_t)&idle_thread);
    setRegister(tcb, CS, (1 << 3));
    setRegister(tcb, SS, (2 << 3));





    setRegister(tcb, RSP, 0);
}

void Arch_switchToIdleThread(void)
{
    tcb_t *tcb = ksIdleThread;

    setVMRoot(tcb);






}

void Arch_activateIdleThread(tcb_t *tcb)
{

}

void Mode_postModifyRegisters(tcb_t *tptr)
{



    if (tptr != ksCurThread) {
        setRegister(tptr, Error, 0);
    }
}
# 1 "/workspace/seL4-c89/preconfigured/src/arch/x86/64/kernel/vspace.c"
# 10 "/workspace/seL4-c89/preconfigured/src/arch/x86/64/kernel/vspace.c"
# 1 "/workspace/seL4-c89/preconfigured/include/kernel/boot.h" 1






       



# 1 "/workspace/seL4-c89/preconfigured/include/bootinfo.h" 1






       



# 1 "/workspace/seL4-c89/preconfigured/libsel4/include/sel4/bootinfo_types.h" 1






       






enum seL4_RootCNodeCapSlots {
    seL4_CapNull = 0,
    seL4_CapInitThreadTCB = 1,
    seL4_CapInitThreadCNode = 2,
    seL4_CapInitThreadVSpace = 3,
    seL4_CapIRQControl = 4,
    seL4_CapASIDControl = 5,
    seL4_CapInitThreadASIDPool = 6,
    seL4_CapIOPortControl = 7,
    seL4_CapIOSpace = 8,
    seL4_CapBootInfoFrame = 9,
    seL4_CapInitThreadIPCBuffer = 10,
    seL4_CapDomain = 11,
    seL4_CapSMMUSIDControl = 12,
    seL4_CapSMMUCBControl = 13,
    seL4_CapInitThreadSC = 14,
    seL4_CapSMC = 15,
    seL4_NumInitialCaps = 16
};






typedef seL4_Word seL4_SlotPos;

typedef struct seL4_SlotRegion {
    seL4_SlotPos start;
    seL4_SlotPos end;
} seL4_SlotRegion;

typedef struct seL4_UntypedDesc {
    seL4_Word paddr;
    seL4_Uint8 sizeBits;
    seL4_Uint8 isDevice;
    seL4_Uint8 padding[sizeof(seL4_Word) - 2 * sizeof(seL4_Uint8)];
} seL4_UntypedDesc;

_Static_assert(sizeof(seL4_UntypedDesc) == 2 * sizeof(seL4_Word), "invalid_seL4_UntypedDesc");

                                                      ;

typedef struct seL4_BootInfo {
    seL4_Word extraLen;
    seL4_NodeId nodeID;
    seL4_Word numNodes;
    seL4_Word numIOPTLevels;
    seL4_IPCBuffer *ipcBuffer;
    seL4_SlotRegion empty;
    seL4_SlotRegion sharedFrames;
    seL4_SlotRegion userImageFrames;
    seL4_SlotRegion userImagePaging;
    seL4_SlotRegion ioSpaceCaps;
    seL4_SlotRegion extraBIPages;
    seL4_Word initThreadCNodeSizeBits;
    seL4_Domain initThreadDomain;



    seL4_SlotRegion untyped;
    seL4_UntypedDesc untypedList[50];


} seL4_BootInfo;
# 87 "/workspace/seL4-c89/preconfigured/libsel4/include/sel4/bootinfo_types.h"
_Static_assert(sizeof(seL4_BootInfo) <= (1ul<<(12)), "invalid_seL4_BootInfoFrameSize");
# 101 "/workspace/seL4-c89/preconfigured/libsel4/include/sel4/bootinfo_types.h"
typedef enum {
    SEL4_BOOTINFO_HEADER_PADDING = 0,
    SEL4_BOOTINFO_HEADER_X86_VBE = 1,
    SEL4_BOOTINFO_HEADER_X86_MBMMAP = 2,
    SEL4_BOOTINFO_HEADER_X86_ACPI_RSDP = 3,
    SEL4_BOOTINFO_HEADER_X86_FRAMEBUFFER = 4,
    SEL4_BOOTINFO_HEADER_X86_TSC_FREQ = 5,
    SEL4_BOOTINFO_HEADER_FDT = 6,

    SEL4_BOOTINFO_HEADER_NUM,
    _enum_pad_seL4_BootInfoID = ((1ULL << ((sizeof(long)*8) - 1)) - 1)
} seL4_BootInfoID;


typedef struct seL4_BootInfoHeader {
    seL4_Word id;
    seL4_Word len;
} seL4_BootInfoHeader;

_Static_assert(sizeof(seL4_BootInfoHeader) == 2 * sizeof(seL4_Word), "invalid_seL4_BootInfoHeader");

                                                         ;
# 12 "/workspace/seL4-c89/preconfigured/include/bootinfo.h" 2
# 12 "/workspace/seL4-c89/preconfigured/include/kernel/boot.h" 2
# 1 "/workspace/seL4-c89/preconfigured/include/arch/x86/arch/bootinfo.h" 1






       
# 13 "/workspace/seL4-c89/preconfigured/include/kernel/boot.h" 2





typedef cte_t slot_t;
typedef cte_t *slot_ptr_t;





typedef struct ndks_boot {
    p_region_t reserved[(16 + 1 + ((-((0xffffffffc0000000ul + (1ul << (12))) + (1ul << (12)) * 1)) >> 12) + 2)];
    word_t resv_count;
    region_t freemem[16];
    seL4_BootInfo *bi_frame;
    seL4_SlotPos slot_pos_cur;
} ndks_boot_t;

extern ndks_boot_t ndks_boot;



static inline bool_t is_reg_empty(region_t reg)
{
    return reg.start == reg.end;
}

p_region_t get_p_reg_kernel_img_boot(void);
p_region_t get_p_reg_kernel_img(void);
bool_t init_freemem(word_t n_available, const p_region_t *available,
                    word_t n_reserved, const region_t *reserved,
                    v_region_t it_v_reg, word_t extra_bi_size_bits);
bool_t reserve_region(p_region_t reg);
void write_slot(slot_ptr_t slot_ptr, cap_t cap);
cap_t create_root_cnode(void);
bool_t provide_cap(cap_t root_cnode_cap, cap_t cap);
cap_t create_it_asid_pool(cap_t root_cnode_cap);
void write_it_pd_pts(cap_t root_cnode_cap, cap_t it_pd_cap);
void create_idle_thread(void);
bool_t create_untypeds(cap_t root_cnode_cap);
void bi_finalise(void);
void create_domain_cap(cap_t root_cnode_cap);

cap_t create_ipcbuf_frame_cap(cap_t root_cnode_cap, cap_t pd_cap, vptr_t vptr);
word_t calculate_extra_bi_size_bits(word_t extra_size);
void populate_bi_frame(node_id_t node_id, word_t num_nodes, vptr_t ipcbuf_vptr,
                       word_t extra_bi_size);
void create_bi_frame_cap(cap_t root_cnode_cap, cap_t pd_cap, vptr_t vptr);





typedef struct create_frames_of_region_ret {
    seL4_SlotRegion region;
    bool_t success;
} create_frames_of_region_ret_t;

create_frames_of_region_ret_t
create_frames_of_region(
    cap_t root_cnode_cap,
    cap_t pd_cap,
    region_t reg,
    bool_t do_map,
    sword_t pv_offset
);

cap_t
create_it_pd_pts(
    cap_t root_cnode_cap,
    v_region_t ui_v_reg,
    vptr_t ipcbuf_vptr,
    vptr_t bi_frame_vptr
);

tcb_t *
create_initial_thread(
    cap_t root_cnode_cap,
    cap_t it_pd_cap,
    vptr_t ui_v_entry,
    vptr_t bi_frame_vptr,
    vptr_t ipcbuf_vptr,
    cap_t ipcbuf_cap
);

void init_core_state(tcb_t *scheduler_action);


typedef struct {
    pptr_t cnode;
    pptr_t vspace;
    pptr_t asid_pool;
    pptr_t ipc_buf;
    pptr_t boot_info;
    pptr_t extra_bi;
    pptr_t tcb;



    region_t paging;
} rootserver_mem_t;

extern rootserver_mem_t rootserver;




static inline __attribute__((__section__(".boot.text"))) word_t get_n_paging(v_region_t v_reg, word_t bits)
{
    vptr_t start = (((v_reg.start) >> (bits)) << (bits));
    vptr_t end = (((((v_reg.end) - 1ul) >> (bits)) + 1ul) << (bits));
    return (end - start) / (1ul << (bits));
}


static inline __attribute__((__section__(".boot.text"))) pptr_t it_alloc_paging(void)
{
    pptr_t allocated = rootserver.paging.start;
    rootserver.paging.start += (1ul << (12));
    ;
    return allocated;
}


word_t arch_get_n_paging(v_region_t it_veg);
# 11 "/workspace/seL4-c89/preconfigured/src/arch/x86/64/kernel/vspace.c" 2


# 1 "/workspace/seL4-c89/preconfigured/include/arch/x86/arch/kernel/boot.h" 1






       





# 1 "/workspace/seL4-c89/preconfigured/libsel4/arch_include/x86/sel4/arch/bootinfo_types.h" 1






       




typedef struct seL4_VBEInfoBlock {
    char signature[4];
    seL4_Uint16 version;
    seL4_Uint32 oemStringPtr;
    seL4_Uint32 capabilities;
    seL4_Uint32 modeListPtr;
    seL4_Uint16 totalMemory;
    seL4_Uint16 oemSoftwareRev;
    seL4_Uint32 oemVendorNamePtr;
    seL4_Uint32 oemProductNamePtr;
    seL4_Uint32 oemProductRevPtr;
    seL4_Uint8 reserved[222];
    seL4_Uint8 oemData[256];
} __attribute__((packed)) seL4_VBEInfoBlock_t;


typedef struct seL4_VBEModeInfoCommon {
    seL4_Uint16 modeAttr;
    seL4_Uint8 winAAttr;
    seL4_Uint8 winBAttr;
    seL4_Uint16 winGranularity;
    seL4_Uint16 winSize;
    seL4_Uint16 winASeg;
    seL4_Uint16 winBSeg;
    seL4_Uint32 winFuncPtr;
    seL4_Uint16 bytesPerScanLine;
} __attribute__((packed)) seL4_VBEModeInfoCommon_t;

typedef struct seL4_VBEInfo12Part1 {
    seL4_Uint16 xRes;
    seL4_Uint16 yRes;
    seL4_Uint8 xCharSize;
    seL4_Uint8 yCharSize;
    seL4_Uint8 planes;
    seL4_Uint8 bitsPerPixel;
    seL4_Uint8 banks;
    seL4_Uint8 memoryModel;
    seL4_Uint8 bankSize;
    seL4_Uint8 imagePages;
    seL4_Uint8 reserved1;
} __attribute__((packed)) seL4_VBEInfo12Part1_t;

typedef struct seL4_VBEInfo12Part2 {
    seL4_Uint8 redLen;
    seL4_Uint8 redOff;
    seL4_Uint8 greenLen;
    seL4_Uint8 greenOff;
    seL4_Uint8 blueLen;
    seL4_Uint8 blueOff;
    seL4_Uint8 rsvdLen;
    seL4_Uint8 rsvdOff;
    seL4_Uint8 directColorInfo;
} __attribute__((packed)) seL4_VBEInfo12Part2_t;

typedef struct seL4_VBEInfo20 {
    seL4_Uint32 physBasePtr;
    seL4_Uint8 reserved2[6];
} __attribute__((packed)) seL4_VBEInfo20_t;

typedef struct seL4_VBEInfo30 {
    seL4_Uint16 linBytesPerScanLine;
    seL4_Uint8 bnkImagePages;
    seL4_Uint8 linImagePages;
    seL4_Uint8 linRedLen;
    seL4_Uint8 linRedOff;
    seL4_Uint8 linGreenLen;
    seL4_Uint8 linGreenOff;
    seL4_Uint8 linBlueLen;
    seL4_Uint8 linBlueOff;
    seL4_Uint8 linRsvdLen;
    seL4_Uint8 linRsvdOff;
    seL4_Uint32 maxPixelClock;
    seL4_Uint16 modeId;
    seL4_Uint8 depth;
} __attribute__((packed)) seL4_VBEInfo30_t;

typedef struct seL4_VBEModeInfoBlock {

    seL4_VBEModeInfoCommon_t vbe_common;

    seL4_VBEInfo12Part1_t vbe12_part1;
    seL4_VBEInfo12Part2_t vbe12_part2;


    seL4_VBEInfo20_t vbe20;


    seL4_VBEInfo30_t vbe30;

    seL4_Uint8 reserved3[187];
} __attribute__((packed)) seL4_VBEModeInfoBlock_t;

typedef struct _seL4_X86_BootInfo_VBE {
    seL4_BootInfoHeader header;
    seL4_VBEInfoBlock_t vbeInfoBlock;
    seL4_VBEModeInfoBlock_t vbeModeInfoBlock;
    seL4_Uint32 vbeMode;
    seL4_Uint32 vbeInterfaceSeg;
    seL4_Uint32 vbeInterfaceOff;
    seL4_Uint32 vbeInterfaceLen;
} __attribute__((packed)) seL4_X86_BootInfo_VBE;





typedef struct seL4_X86_mb_mmap {
    uint32_t size;
    uint64_t base_addr;
    uint64_t length;
    uint32_t type;
} __attribute__((packed)) seL4_X86_mb_mmap_t;

typedef struct seL4_X86_BootInfo_mmap {
    seL4_BootInfoHeader header;
    seL4_Uint32 mmap_length;
    seL4_X86_mb_mmap_t mmap[50];
} __attribute__((packed)) seL4_X86_BootInfo_mmap_t;

typedef struct multiboot2_fb seL4_X86_BootInfo_fb_t;
# 14 "/workspace/seL4-c89/preconfigured/include/arch/x86/arch/kernel/boot.h" 2

typedef struct mem_p_regs {
    word_t count;
    p_region_t list[16];
} mem_p_regs_t;

typedef struct ui_info {
    p_region_t p_reg;
    sword_t pv_offset;
    vptr_t v_entry;
} ui_info_t;

cap_t create_unmapped_it_frame_cap(pptr_t pptr, bool_t use_large);
cap_t create_mapped_it_frame_cap(cap_t pd_cap, pptr_t pptr, vptr_t vptr, asid_t asid, bool_t use_large,
                                 bool_t executable);

bool_t init_sys_state(
    cpu_id_t cpu_id,
    mem_p_regs_t *mem_p_regs,
    ui_info_t ui_info,

    uint32_t num_drhu,
    paddr_t *drhu_list,
    acpi_rmrr_list_t *rmrr_list,
    acpi_rsdp_t *acpi_rsdp,
    seL4_X86_BootInfo_VBE *vbe,
    seL4_X86_BootInfo_mmap_t *mb_mmap,
    seL4_X86_BootInfo_fb_t *fb_info
);

bool_t init_cpu(
    bool_t mask_legacy_irqs
);

bool_t add_allocated_p_region(p_region_t reg);
void init_allocated_p_regions(void);
# 14 "/workspace/seL4-c89/preconfigured/src/arch/x86/64/kernel/vspace.c" 2
# 1 "/workspace/seL4-c89/preconfigured/include/arch/x86/arch/kernel/boot_sys.h" 1






       

# 1 "/workspace/seL4-c89/preconfigured/include/arch/x86/arch/kernel/multiboot.h" 1






       
# 16 "/workspace/seL4-c89/preconfigured/include/arch/x86/arch/kernel/multiboot.h"
typedef struct multiboot_module {
    uint32_t start;
    uint32_t end;
    uint32_t name;
    uint32_t reserved;
} __attribute__((packed)) multiboot_module_t;

typedef struct multiboot_mmap {
    uint32_t size;
    uint64_t base_addr;
    uint64_t length;
    uint32_t type;
} __attribute__((packed)) multiboot_mmap_t;

typedef struct multiboot_info {

    struct multiboot_part1 {
        uint32_t flags;
        uint32_t mem_lower;
        uint32_t mem_upper;
        uint32_t boot_device;
        uint32_t cmdline;
        uint32_t mod_count;
        uint32_t mod_list;
    } part1;



    struct multiboot_part2 {
        uint32_t syms[4];
        uint32_t mmap_length;
        uint32_t mmap_addr;
        uint32_t drives_length;
        uint32_t drives_addr;
        uint32_t config_table;
        uint32_t boot_loader_name;
        uint32_t apm_table;
        uint32_t vbe_control_info;
        uint32_t vbe_mode_info;
        uint16_t vbe_mode;
        uint16_t vbe_interface_seg;
        uint16_t vbe_interface_off;
        uint16_t vbe_interface_len;
    } part2;
} __attribute__((packed)) multiboot_info_t;
# 10 "/workspace/seL4-c89/preconfigured/include/arch/x86/arch/kernel/boot_sys.h" 2
# 1 "/workspace/seL4-c89/preconfigured/include/arch/x86/arch/kernel/multiboot2.h" 1






       





typedef struct multiboot2_header {
    uint32_t total_size;
    uint32_t unknown;
} __attribute__((packed)) multiboot2_header_t;

typedef struct multiboot2_tag {
    uint32_t type;
    uint32_t size;
} __attribute__((packed)) multiboot2_tag_t;

typedef struct multiboot2_memory {
    uint64_t addr;
    uint64_t size;
    uint32_t type;
    uint32_t reserved;
} __attribute__((packed)) multiboot2_memory_t;

typedef struct multiboot2_module {
    uint32_t start;
    uint32_t end;
    char string [1];
} __attribute__((packed)) multiboot2_module_t;

typedef struct multiboot2_fb {
    uint64_t addr;
    uint32_t pitch;
    uint32_t width;
    uint32_t height;
    uint8_t bpp;
    uint8_t type;
} __attribute__((packed)) multiboot2_fb_t;

enum multiboot2_tags {
    MULTIBOOT2_TAG_END = 0,
    MULTIBOOT2_TAG_CMDLINE = 1,
    MULTIBOOT2_TAG_MODULE = 3,
    MULTIBOOT2_TAG_MEMORY = 6,
    MULTIBOOT2_TAG_FB = 8,
    MULTIBOOT2_TAG_ACPI_1 = 14,
    MULTIBOOT2_TAG_ACPI_2 = 15,
};
# 11 "/workspace/seL4-c89/preconfigured/include/arch/x86/arch/kernel/boot_sys.h" 2


typedef struct boot_state {
    p_region_t avail_p_reg;
    p_region_t ki_p_reg;
    ui_info_t ui_info;
    uint32_t num_ioapic;
    paddr_t ioapic_paddr[1];
    uint32_t num_drhu;
    paddr_t drhu_list[((-((0xffffffffc0000000ul + (1ul << (12))) + (1ul << (12)) * 1)) >> 12)];
    acpi_rmrr_list_t rmrr_list;
    acpi_rsdp_t acpi_rsdp;
    paddr_t mods_end_paddr;
    paddr_t boot_module_start;
    uint32_t num_cpus;
    uint32_t mem_lower;
    cpu_id_t cpus[1];
    mem_p_regs_t mem_p_regs;
    seL4_X86_BootInfo_VBE vbe_info;
    seL4_X86_BootInfo_mmap_t mb_mmap_info;
    seL4_X86_BootInfo_fb_t fb_info;
} boot_state_t;

extern boot_state_t boot_state;

void boot_sys(
    unsigned long multiboot_magic,
    void *multiboot
);
# 15 "/workspace/seL4-c89/preconfigured/src/arch/x86/64/kernel/vspace.c" 2
# 1 "/workspace/seL4-c89/preconfigured/X64_verified/gen_headers/arch/api/invocation.h" 1
# 12 "/workspace/seL4-c89/preconfigured/X64_verified/gen_headers/arch/api/invocation.h"
       
# 1 "/workspace/seL4-c89/preconfigured/X64_verified/gen_headers/arch/api/sel4_invocation.h" 1
# 12 "/workspace/seL4-c89/preconfigured/X64_verified/gen_headers/arch/api/sel4_invocation.h"
       
# 1 "/workspace/seL4-c89/preconfigured/X64_verified/gen_headers/api/invocation.h" 1
# 12 "/workspace/seL4-c89/preconfigured/X64_verified/gen_headers/api/invocation.h"
       

enum invocation_label {
    InvalidInvocation,
    UntypedRetype,
    TCBReadRegisters,
    TCBWriteRegisters,
    TCBCopyRegisters,

    TCBConfigure,




    TCBSetPriority,
    TCBSetMCPriority,

    TCBSetSchedParams,







    TCBSetIPCBuffer,

    TCBSetSpace,




    TCBSuspend,
    TCBResume,
    TCBBindNotification,
    TCBUnbindNotification,
# 63 "/workspace/seL4-c89/preconfigured/X64_verified/gen_headers/api/invocation.h"
    TCBSetTLSBase,
    TCBSetFlags,
    CNodeRevoke,
    CNodeDelete,
    CNodeCancelBadgedSends,
    CNodeCopy,
    CNodeMint,
    CNodeMove,
    CNodeMutate,
    CNodeRotate,

    CNodeSaveCaller,

    IRQIssueIRQHandler,
    IRQAckIRQ,
    IRQSetIRQHandler,
    IRQClearIRQHandler,
    DomainSetSet,
# 99 "/workspace/seL4-c89/preconfigured/X64_verified/gen_headers/api/invocation.h"
    nInvocationLabels
};
# 14 "/workspace/seL4-c89/preconfigured/X64_verified/gen_headers/arch/api/sel4_invocation.h" 2

enum sel4_arch_invocation_label {
    X86PDPTMap = nInvocationLabels,
    X86PDPTUnmap,






    nSeL4ArchInvocationLabels
};
# 14 "/workspace/seL4-c89/preconfigured/X64_verified/gen_headers/arch/api/invocation.h" 2

enum arch_invocation_label {
    X86PageDirectoryMap = nSeL4ArchInvocationLabels,
    X86PageDirectoryUnmap,



    X86PageTableMap,
    X86PageTableUnmap,






    X86PageMap,
    X86PageUnmap,



    X86PageGetAddress,



    X86ASIDControlMakePool,
    X86ASIDPoolAssign,
    X86IOPortControlIssue,
    X86IOPortIn8,
    X86IOPortIn16,
    X86IOPortIn32,
    X86IOPortOut8,
    X86IOPortOut16,
    X86IOPortOut32,
    X86IRQIssueIRQHandlerIOAPIC,
    X86IRQIssueIRQHandlerMSI,
# 88 "/workspace/seL4-c89/preconfigured/X64_verified/gen_headers/arch/api/invocation.h"
    nArchInvocationLabels
};
# 16 "/workspace/seL4-c89/preconfigured/src/arch/x86/64/kernel/vspace.c" 2
# 1 "/workspace/seL4-c89/preconfigured/include/arch/x86/arch/64/mode/kernel/tlb.h" 1






       


# 1 "/workspace/seL4-c89/preconfigured/include/arch/x86/arch/kernel/tlb.h" 1






       

# 1 "/workspace/seL4-c89/preconfigured/include/arch/x86/arch/smp/ipi_inline.h" 1






       
# 10 "/workspace/seL4-c89/preconfigured/include/arch/x86/arch/kernel/tlb.h" 2

static inline void invalidatePageStructureCacheASID(paddr_t root, asid_t asid, word_t mask)
{
    invalidateLocalPageStructureCacheASID(root, asid);
    ;
}

static inline void invalidateTranslationSingle(vptr_t vptr, word_t mask)
{
    invalidateLocalTranslationSingle(vptr);
    ;
}

static inline void invalidateTranslationSingleASID(vptr_t vptr, asid_t asid, word_t mask)
{
    invalidateLocalTranslationSingleASID(vptr, asid);
    ;
}

static inline void invalidateTranslationAll(word_t mask)
{
    invalidateLocalTranslationAll();
    ;
}
# 11 "/workspace/seL4-c89/preconfigured/include/arch/x86/arch/64/mode/kernel/tlb.h" 2
# 1 "/workspace/seL4-c89/preconfigured/include/arch/x86/arch/64/mode/smp/ipi.h" 1






       
# 12 "/workspace/seL4-c89/preconfigured/include/arch/x86/arch/64/mode/kernel/tlb.h" 2
# 1 "/workspace/seL4-c89/preconfigured/include/arch/x86/arch/kernel/tlb_bitmap.h" 1






       






# 1 "/workspace/seL4-c89/preconfigured/include/arch/x86/arch/64/mode/kernel/vspace.h" 1






       



struct lookupPDPTSlot_ret {
    exception_t status;
    pdpte_t *pdptSlot;
};
typedef struct lookupPDPTSlot_ret lookupPDPTSlot_ret_t;

static inline pte_t x86_make_device_pte(paddr_t phys)
{
    return pte_new(
               0,
               phys,
               1,
               0,
               0,
               0,
               1,
               1,
               0,
               1,
               1
           );
}

static inline pte_t x86_make_empty_pte(void)
{
    return pte_new(
               0,
               0,
               0,
               0,
               0,
               0,
               0,
               0,
               0,
               0,
               0
           );
}

static inline __attribute__((__const__)) pml4e_t x86_make_empty_root_mapping(void)
{
    return pml4e_new(
               0,
               0,
               0,
               0,
               0,
               0,
               0,
               0
           );
}
# 15 "/workspace/seL4-c89/preconfigured/include/arch/x86/arch/kernel/tlb_bitmap.h" 2
# 13 "/workspace/seL4-c89/preconfigured/include/arch/x86/arch/64/mode/kernel/tlb.h" 2






static inline void invalidateLocalASID(vspace_root_t *vspace, asid_t asid)
{
    invalidateLocalPCID(1, (void *)0, asid);





}

static inline void invalidatePCID(word_t type, void *vaddr, asid_t asid, word_t mask)
{
    invalidateLocalPCID(type, vaddr, asid);
    ;
}

static inline void invalidateASID(vspace_root_t *vspace, asid_t asid, word_t mask)
{
    invalidateLocalASID(vspace, asid);
    ;
}
# 17 "/workspace/seL4-c89/preconfigured/src/arch/x86/64/kernel/vspace.c" 2
# 33 "/workspace/seL4-c89/preconfigured/src/arch/x86/64/kernel/vspace.c"
pml4e_t boot_pml4[(1ul << (9))] __attribute__((__aligned__((1ul << (12))))) __attribute__((externally_visible)) __attribute__((__section__(".phys.bss")));
pdpte_t boot_pdpt[(1ul << (9))] __attribute__((__aligned__((1ul << (12))))) __attribute__((externally_visible)) __attribute__((__section__(".phys.bss")));




gdt_idt_ptr_t gdt_idt_ptr;

__attribute__((__section__(".boot.text"))) bool_t map_kernel_window(
    uint32_t num_ioapic,
    paddr_t *ioapic_paddrs,
    uint32_t num_drhu,
    paddr_t *drhu_list
)
{

    uint64_t paddr;
    uint64_t vaddr;





    ;


    ;
    ;
    ;
    ;
    ;

    x64KSKernelPML4[( ((0xffffff8000000000ul) >> (((((12) + 9) + 9) + 9))) & ((1ul << (9)) - 1ul))] = pml4e_new(
                                                     0,
                                                     addrFromKPPtr(x64KSKernelPDPT),
                                                     0,
                                                     0,
                                                     0,
                                                     0,
                                                     1,
                                                     1
                                                 );

    x64KSKernelPDPT[( (((0xffffffff80000000ul + 0x00100000ul)) >> ((((12) + 9) + 9))) & ((1ul << (9)) - 1ul))] = pdpte_pdpte_1g_new(
                                                           0,
                                                           0x00000000ul,
                                                           0,
                                                           (wrap_config_set(1) ? 0 : 1),
                                                           0,
                                                           0,
                                                           0,
                                                           0,
                                                           0,
                                                           1,
                                                           1
                                                       );

    paddr = 0;
    vaddr = 0xffffff8000000000ul;
    for (paddr = 0; paddr < (0xffffffff80000000ul - (0xffffff8000000000ul - 0x00000000ul));
         paddr += (1ul << (30))) {

        int pdpte_index = ( ((vaddr) >> ((((12) + 9) + 9))) & ((1ul << (9)) - 1ul));
        x64KSKernelPDPT[pdpte_index] = pdpte_pdpte_1g_new(
                                           0,
                                           paddr,
                                           0,
                                           (wrap_config_set(1) ? 0 : 1),
                                           0,
                                           0,
                                           0,
                                           0,
                                           0,
                                           1,
                                           1
                                       );

        vaddr += (1ul << (30));
    }


    x64KSKernelPDPT[( ((0xffffffffc0000000ul) >> ((((12) + 9) + 9))) & ((1ul << (9)) - 1ul))] = pdpte_pdpte_pd_new(
                                                     0,
                                                     addrFromKPPtr(x64KSKernelPD),
                                                     0,
                                                     0,
                                                     0,
                                                     0,
                                                     1,
                                                     1
                                                 );

    x64KSKernelPD[0] = pde_pde_pt_new(
                           0,
                           addrFromKPPtr(x64KSKernelPT),
                           0,
                           0,
                           0,
                           0,
                           1,
                           1
                       );
# 244 "/workspace/seL4-c89/preconfigured/src/arch/x86/64/kernel/vspace.c"
    if (!map_kernel_window_devices(x64KSKernelPT, num_ioapic, ioapic_paddrs, num_drhu, drhu_list)) {
        return false;
    }







    invalidateLocalTranslationAll();
    ((void)(0));
    return true;
}


__attribute__((__section__(".boot.text"))) bool_t map_skim_window(vptr_t skim_start, vptr_t skim_end)
{

    x64KSSKIMPML4[( ((0xffffff8000000000ul) >> (((((12) + 9) + 9) + 9))) & ((1ul << (9)) - 1ul))] = pml4e_new(
                                                   0,
                                                   addrFromKPPtr(x64KSSKIMPDPT),
                                                   0,
                                                   0,
                                                   0,
                                                   0,
                                                   1,
                                                   1
                                               );

    x64KSSKIMPDPT[( (((0xffffffff80000000ul + 0x00100000ul)) >> ((((12) + 9) + 9))) & ((1ul << (9)) - 1ul))] = pdpte_pdpte_pd_new(
                                                         0,
                                                         addrFromKPPtr(x64KSSKIMPD),
                                                         0,
                                                         0,
                                                         0,
                                                         0,
                                                         1,
                                                         1
                                                     );

    ;
    ;
    uint64_t paddr = addrFromKPPtr((void *)skim_start);
    for (int i = ( ((skim_start) >> (((12) + 9))) & ((1ul << (9)) - 1ul)); i < ( ((skim_end) >> (((12) + 9))) & ((1ul << (9)) - 1ul)); i++) {
        x64KSSKIMPD[i] = pde_pde_large_new(
                             0,
                             paddr,
                             0,
                             (wrap_config_set(1) ? 0 : 1),
                             0,
                             0,
                             0,
                             0,
                             0,
                             1,
                             1
                         );
        paddr += (1ul << (21));
    }
    return true;
}


__attribute__((__section__(".boot.text"))) void init_tss(tss_t *tss)
{
    word_t base = (word_t)&x64KSIRQStack[0lu][6];
    *tss = tss_new(
               sizeof(*tss),
               0, 0,
               0, 0,
               0, 0,
               0, 0,
               0, 0,
               0, 0,

               base >> 32, base & 0xffffffff,
               0, 0,
               0, 0,
               0, 0
           );

    memset(&x86KSGlobalState[0lu].x86KStss.io_map[0], 0xff,
           sizeof(x86KSGlobalState[0lu].x86KStss.io_map));
}

__attribute__((__section__(".boot.text"))) void init_syscall_msrs(void)
{
    x86_wrmsr(0xC0000082, (uint64_t)&handle_fastsyscall);



    x86_wrmsr(0xC0000084, (1ul << (8)) | (1ul << (9)));
    x86_wrmsr(0xC0000081, ((uint64_t)(1 << 3) << 32) | ((uint64_t)((5 << 3) | 3) << 48));
}

__attribute__((__section__(".boot.text"))) void init_gdt(gdt_entry_t *gdt, tss_t *tss)
{

    uint64_t tss_base = (uint64_t)tss;
    gdt_tss_t gdt_tss;

    gdt[0] = gdt_entry_gdt_null_new();

    gdt[1] = gdt_entry_gdt_code_new(
                        0,
                        1,
                        0,
                        1,
                        0,
                        0xf,
                        1,
                        0,
                        1,
                        0,
                        0,
                        0xffff
                    );

    gdt[2] = gdt_entry_gdt_data_new(
                        0,
                        1,
                        1,
                        0,
                        0xf,
                        1,
                        0,
                        1,
                        0,
                        0,
                        0xffff
                    );

    gdt[5] = gdt_entry_gdt_code_new(
                        0,
                        1,
                        0,
                        1,
                        0,
                        0xf,
                        1,
                        3,
                        1,
                        0,
                        0,
                        0xffff
                    );

    gdt[6] = gdt_entry_gdt_data_new(
                        0,
                        1,
                        1,
                        0,
                        0xf,
                        1,
                        3,
                        1,
                        0,
                        0,
                        0xffff
                    );

    gdt[7] = gdt_entry_gdt_data_new(
                      0,
                      1,
                      1,
                      0,
                      0xf,
                      1,
                      3,
                      1,
                      0,
                      0,
                      0xffff
                  );

    gdt[8] = gdt_entry_gdt_data_new(
                      0,
                      1,
                      1,
                      0,
                      0xf,
                      1,
                      3,
                      1,
                      0,
                      0,
                      0xffff
                  );

    gdt_tss = gdt_tss_new(
                  tss_base >> 32,
                  (tss_base & 0xff000000UL) >> 24,
                  1,
                  0,
                  0,
                  1,
                  0,
                  9,
                  (tss_base & 0xff0000UL) >> 16,
                  (tss_base & 0xffffUL),
                  sizeof(tss_io_t) - 1
              );

    gdt[3].words[0] = gdt_tss.words[0];
    gdt[3 + 1].words[0] = gdt_tss.words[1];
}

__attribute__((__section__(".boot.text"))) void init_idt_entry(idt_entry_t *idt, interrupt_t interrupt, void(*handler)(void))
{
    uint64_t handler_addr = (uint64_t)handler;
    uint64_t dpl = 3;

    if (interrupt < int_trap_min && interrupt != int_software_break_request) {
        dpl = 0;
    }

    idt[interrupt] = idt_entry_interrupt_gate_new(
                         handler_addr >> 32,
                         ((handler_addr >> 16) & 0xffff),
                         1,
                         dpl,
                         1,
                         (1 << 3),
                         (handler_addr & 0xffff)
                     );
}

void setVMRoot(tcb_t *tcb)
{
    cap_t threadRoot;
    asid_t asid;
    pml4e_t *pml4;
    findVSpaceForASID_ret_t find_ret;
    cr3_t cr3;

    threadRoot = (((cte_t *)((word_t)(tcb)&~((1ul << (11)) - 1ul)))+(tcbVTable))->cap;

    if (cap_get_capType(threadRoot) != cap_pml4_cap ||
        !cap_pml4_cap_get_capPML4IsMapped(threadRoot)) {
        setCurrentUserVSpaceRoot(addrFromKPPtr(x64KSSKIMPML4), 0);
        return;
    }

    pml4 = ((pml4e_t *)(cap_pml4_cap_get_capPML4BasePtr(threadRoot)));
    asid = cap_pml4_cap_get_capPML4MappedASID(threadRoot);
    find_ret = findVSpaceForASID(asid);
    if (__builtin_expect(!!(find_ret.status != EXCEPTION_NONE || find_ret.vspace_root != pml4), 0)) {
        setCurrentUserVSpaceRoot(addrFromKPPtr(x64KSSKIMPML4), 0);
        return;
    }
    cr3 = makeCR3(addrFromPPtr(pml4), asid);
    if (getCurrentUserCR3().words[0] != cr3.words[0]) {
       
        setCurrentUserCR3(cr3);
    }
}


__attribute__((__section__(".boot.text"))) void init_dtrs(void)
{
    gdt_idt_ptr.limit = (sizeof(gdt_entry_t) * 9) - 1;
    gdt_idt_ptr.base = (uint64_t)x86KSGlobalState[0lu].x86KSgdt;





    swapgs();
    x64_install_gdt(&gdt_idt_ptr);
    swapgs();

    gdt_idt_ptr.limit = (sizeof(idt_entry_t) * (int_max + 1)) - 1;
    gdt_idt_ptr.base = (uint64_t)x86KSGlobalState[0lu].x86KSidt;
    x64_install_idt(&gdt_idt_ptr);

    x64_install_ldt(0);

    x64_install_tss((3 << 3));
}

__attribute__((__section__(".boot.text"))) void map_it_frame_cap(cap_t pd_cap, cap_t frame_cap)
{
    pml4e_t *pml4 = ((pml4e_t *)(((pptr_t)cap_get_capPtr(pd_cap))));
    pdpte_t *pdpt;
    pde_t *pd;
    pte_t *pt;
    vptr_t vptr = cap_frame_cap_get_capFMappedAddress(frame_cap);
    void *pptr = (void *)cap_frame_cap_get_capFBasePtr(frame_cap);

    ;
    ;
    pml4 += ( ((vptr) >> (((((12) + 9) + 9) + 9))) & ((1ul << (9)) - 1ul));
    ;
    pdpt = ptrFromPAddr(pml4e_ptr_get_pdpt_base_address(pml4));
    pdpt += ( ((vptr) >> ((((12) + 9) + 9))) & ((1ul << (9)) - 1ul));
    ;
    pd = ptrFromPAddr(pdpte_pdpte_pd_ptr_get_pd_base_address(pdpt));
    pd += ( ((vptr) >> (((12) + 9))) & ((1ul << (9)) - 1ul));
    ;
    pt = ptrFromPAddr(pde_pde_pt_ptr_get_pt_base_address(pd));
    *(pt + ( ((vptr) >> ((12))) & ((1ul << (9)) - 1ul))) = pte_new(
                                     0,
                                     addrFromPPtr(pptr),
                                     0,
                                     0,
                                     0,
                                     0,
                                     0,
                                     0,
                                     1,
                                     1,
                                     1
                                 );
}

static __attribute__((__section__(".boot.text"))) void map_it_pdpt_cap(cap_t vspace_cap, cap_t pdpt_cap)
{
    pml4e_t *pml4 = ((pml4e_t *)(((pptr_t)cap_get_capPtr(vspace_cap))));
    pdpte_t *pdpt = ((pdpte_t *)(cap_pdpt_cap_get_capPDPTBasePtr(pdpt_cap)));
    vptr_t vptr = cap_pdpt_cap_get_capPDPTMappedAddress(pdpt_cap);

    ;
    *(pml4 + ( ((vptr) >> (((((12) + 9) + 9) + 9))) & ((1ul << (9)) - 1ul))) = pml4e_new(
                                         0,
                                         addrFromPPtr(pdpt),
                                         0,
                                         0,
                                         0,
                                         1,
                                         1,
                                         1
                                     );
}

__attribute__((__section__(".boot.text"))) void map_it_pd_cap(cap_t vspace_cap, cap_t pd_cap)
{
    pml4e_t *pml4 = ((pml4e_t *)(((pptr_t)cap_get_capPtr(vspace_cap))));
    pdpte_t *pdpt;
    pde_t *pd = ((pde_t *)(cap_page_directory_cap_get_capPDBasePtr(pd_cap)));
    vptr_t vptr = cap_page_directory_cap_get_capPDMappedAddress(pd_cap);

    ;
    pml4 += ( ((vptr) >> (((((12) + 9) + 9) + 9))) & ((1ul << (9)) - 1ul));
    ;
    pdpt = ptrFromPAddr(pml4e_ptr_get_pdpt_base_address(pml4));
    *(pdpt + ( ((vptr) >> ((((12) + 9) + 9))) & ((1ul << (9)) - 1ul))) = pdpte_pdpte_pd_new(
                                         0,
                                         addrFromPPtr(pd),
                                         0,
                                         0,
                                         0,
                                         1,
                                         1,
                                         1
                                     );
}

__attribute__((__section__(".boot.text"))) void map_it_pt_cap(cap_t vspace_cap, cap_t pt_cap)
{
    pml4e_t *pml4 = ((pml4e_t *)(((pptr_t)cap_get_capPtr(vspace_cap))));
    pdpte_t *pdpt;
    pde_t *pd;
    pte_t *pt = ((pte_t *)(cap_page_table_cap_get_capPTBasePtr(pt_cap)));
    vptr_t vptr = cap_page_table_cap_get_capPTMappedAddress(pt_cap);

    ;
    pml4 += ( ((vptr) >> (((((12) + 9) + 9) + 9))) & ((1ul << (9)) - 1ul));
    ;
    pdpt = ptrFromPAddr(pml4e_ptr_get_pdpt_base_address(pml4));
    pdpt += ( ((vptr) >> ((((12) + 9) + 9))) & ((1ul << (9)) - 1ul));
    ;
    pd = ptrFromPAddr(pdpte_pdpte_pd_ptr_get_pd_base_address(pdpt));
    *(pd + ( ((vptr) >> (((12) + 9))) & ((1ul << (9)) - 1ul))) = pde_pde_pt_new(
                                     0,
                                     addrFromPPtr(pt),
                                     0,
                                     0,
                                     0,
                                     1,
                                     1,
                                     1
                                 );
}

__attribute__((__section__(".boot.text"))) void *map_temp_boot_page(void *entry, uint32_t large_pages)
{




    ;
    return entry;
}

static __attribute__((__section__(".boot.text"))) cap_t create_it_pdpt_cap(cap_t vspace_cap, pptr_t pptr, vptr_t vptr, asid_t asid)
{
    cap_t cap;
    cap = cap_pdpt_cap_new(
              asid,
              pptr,
              1,
              vptr
          );
    map_it_pdpt_cap(vspace_cap, cap);
    return cap;
}

static __attribute__((__section__(".boot.text"))) cap_t create_it_pd_cap(cap_t vspace_cap, pptr_t pptr, vptr_t vptr, asid_t asid)
{
    cap_t cap;
    cap = cap_page_directory_cap_new(
              asid,
              pptr,
              1,
              vptr
          );
    map_it_pd_cap(vspace_cap, cap);
    return cap;
}

static __attribute__((__section__(".boot.text"))) cap_t create_it_pt_cap(cap_t vspace_cap, pptr_t pptr, vptr_t vptr, asid_t asid)
{
    cap_t cap;
    cap = cap_page_table_cap_new(
              asid,
              pptr,
              1,
              vptr
          );
    map_it_pt_cap(vspace_cap, cap);
    return cap;
}


__attribute__((__section__(".boot.text"))) word_t arch_get_n_paging(v_region_t it_v_reg)
{
    word_t n = get_n_paging(it_v_reg, ((12) + 9));
    n += get_n_paging(it_v_reg, (((12) + 9) + 9));
    n += get_n_paging(it_v_reg, ((((12) + 9) + 9) + 9));



    return n;
}

__attribute__((__section__(".boot.text"))) cap_t create_it_address_space(cap_t root_cnode_cap, v_region_t it_v_reg)
{
    cap_t vspace_cap;
    vptr_t vptr;
    seL4_SlotPos slot_pos_before;
    seL4_SlotPos slot_pos_after;

    slot_pos_before = ndks_boot.slot_pos_cur;
    copyGlobalMappings(((pml4e_t *)(rootserver.vspace)));
    vspace_cap = cap_pml4_cap_new(
                     1,
                     rootserver.vspace,
                     1
                 );


    write_slot((((slot_ptr_t)(((pptr_t)cap_get_capPtr(root_cnode_cap)))) + (seL4_CapInitThreadVSpace)), vspace_cap);


    for (vptr = (((it_v_reg.start) >> (((((12) + 9) + 9) + 9))) << (((((12) + 9) + 9) + 9)));
         vptr < it_v_reg.end;
         vptr += (1ul << (((((12) + 9) + 9) + 9)))) {
        if (!provide_cap(root_cnode_cap,
                         create_it_pdpt_cap(vspace_cap, it_alloc_paging(), vptr, 1))
           ) {
            return cap_null_cap_new();
        }
    }


    for (vptr = (((it_v_reg.start) >> ((((12) + 9) + 9))) << ((((12) + 9) + 9)));
         vptr < it_v_reg.end;
         vptr += (1ul << ((((12) + 9) + 9)))) {
        if (!provide_cap(root_cnode_cap,
                         create_it_pd_cap(vspace_cap, it_alloc_paging(), vptr, 1))
           ) {
            return cap_null_cap_new();
        }
    }


    for (vptr = (((it_v_reg.start) >> (((12) + 9))) << (((12) + 9)));
         vptr < it_v_reg.end;
         vptr += (1ul << (((12) + 9)))) {
        if (!provide_cap(root_cnode_cap,
                         create_it_pt_cap(vspace_cap, it_alloc_paging(), vptr, 1))
           ) {
            return cap_null_cap_new();
        }
    }

    slot_pos_after = ndks_boot.slot_pos_cur;
    ndks_boot.bi_frame->userImagePaging = (seL4_SlotRegion) {
        slot_pos_before, slot_pos_after
    };
    return vspace_cap;
}

void copyGlobalMappings(vspace_root_t *new_vspace)
{
    unsigned long i;
    pml4e_t *vspace = (pml4e_t *)new_vspace;





    for (i = ( (((0xffffff8000000000ul - (0 * (1ul << (((((12) + 9) + 9) + 9)))))) >> (((((12) + 9) + 9) + 9))) & ((1ul << (9)) - 1ul)); i < (1ul << (9)); i++) {
        vspace[i] = x64KSSKIMPML4[i];
    }
}

static __attribute__((__section__(".boot.text"))) cap_t create_it_frame_cap(pptr_t pptr, vptr_t vptr, asid_t asid, bool_t use_large, seL4_Word map_type)
{
    vm_page_size_t frame_size;

    if (use_large) {
        frame_size = X86_LargePage;
    } else {
        frame_size = X86_SmallPage;
    }

    return
        cap_frame_cap_new(
            asid,
            pptr,
            frame_size,
            map_type,
            vptr,
            wordFromVMRights(VMReadWrite),
            0
        );
}

__attribute__((__section__(".boot.text"))) cap_t create_unmapped_it_frame_cap(pptr_t pptr, bool_t use_large)
{
    return create_it_frame_cap(pptr, 0, asidInvalid, use_large, X86_MappingNone);
}

__attribute__((__section__(".boot.text"))) cap_t create_mapped_it_frame_cap(cap_t vspace_cap, pptr_t pptr, vptr_t vptr, asid_t asid, bool_t use_large,
                                           bool_t executable __attribute__((unused)))
{
    cap_t cap = create_it_frame_cap(pptr, vptr, asid, use_large, X86_MappingVSpace);
    map_it_frame_cap(vspace_cap, cap);
    return cap;
}





exception_t performASIDPoolInvocation(asid_t asid, asid_pool_t *poolPtr, cte_t *vspaceCapSlot)
{
    asid_map_t asid_map;







    {
        ;
        cap_pml4_cap_ptr_set_capPML4MappedASID(&vspaceCapSlot->cap, asid);
        cap_pml4_cap_ptr_set_capPML4IsMapped(&vspaceCapSlot->cap, 1);
        asid_map = asid_map_asid_map_vspace_new(cap_pml4_cap_get_capPML4BasePtr(vspaceCapSlot->cap));
    }
    poolPtr->array[asid & ((1ul << (asidLowBits)) - 1ul)] = asid_map;
    return EXCEPTION_NONE;
}

bool_t __attribute__((__const__)) isVTableRoot(cap_t cap)
{
    return cap_get_capType(cap) == cap_pml4_cap;
}

bool_t __attribute__((__const__)) isValidNativeRoot(cap_t cap)
{
    return isVTableRoot(cap) &&
           cap_pml4_cap_get_capPML4IsMapped(cap);
}

static pml4e_t __attribute__((__const__)) makeUserPML4E(paddr_t paddr, vm_attributes_t vm_attr)
{
    return pml4e_new(
               0,
               paddr,
               0,
               vm_attributes_get_x86PCDBit(vm_attr),
               vm_attributes_get_x86PWTBit(vm_attr),
               1,
               1,
               1
           );
}

static pml4e_t __attribute__((__const__)) makeUserPML4EInvalid(void)
{
    return pml4e_new(
               0,
               0,
               0,
               0,
               0,
               0,
               0,
               0
           );
}

static pdpte_t __attribute__((__const__)) makeUserPDPTEHugePage(paddr_t paddr, vm_attributes_t vm_attr, vm_rights_t vm_rights)
{
    return pdpte_pdpte_1g_new(
               0,
               paddr,
               0,
               0,
               0,
               0,
               vm_attributes_get_x86PCDBit(vm_attr),
               vm_attributes_get_x86PWTBit(vm_attr),
               SuperUserFromVMRights(vm_rights),
               WritableFromVMRights(vm_rights),
               1
           );
}

static pdpte_t __attribute__((__const__)) makeUserPDPTEPageDirectory(paddr_t paddr, vm_attributes_t vm_attr)
{
    return pdpte_pdpte_pd_new(
               0,
               paddr,
               0,
               vm_attributes_get_x86PCDBit(vm_attr),
               vm_attributes_get_x86PWTBit(vm_attr),
               1,
               1,
               1
           );
}

static pdpte_t __attribute__((__const__)) makeUserPDPTEInvalid(void)
{
    return pdpte_pdpte_pd_new(
               0,
               0,
               0,
               0,
               0,
               0,
               0,
               0
           );
}

pde_t __attribute__((__const__)) makeUserPDELargePage(paddr_t paddr, vm_attributes_t vm_attr, vm_rights_t vm_rights)
{
    return pde_pde_large_new(
               0,
               paddr,
               vm_attributes_get_x86PATBit(vm_attr),
               0,
               0,
               0,
               vm_attributes_get_x86PCDBit(vm_attr),
               vm_attributes_get_x86PWTBit(vm_attr),
               SuperUserFromVMRights(vm_rights),
               WritableFromVMRights(vm_rights),
               1
           );
}

pde_t __attribute__((__const__)) makeUserPDEPageTable(paddr_t paddr, vm_attributes_t vm_attr)
{

    return pde_pde_pt_new(
                0,
                paddr,
                0,
                vm_attributes_get_x86PCDBit(vm_attr),
                vm_attributes_get_x86PWTBit(vm_attr),
                1,
                1,
                1
            );
}

pde_t __attribute__((__const__)) makeUserPDEInvalid(void)
{



    return pde_pde_pt_new(
               0,
               0,
               0,
               0,
               0,
               0,
               0,
               0
           );
}

pte_t __attribute__((__const__)) makeUserPTE(paddr_t paddr, vm_attributes_t vm_attr, vm_rights_t vm_rights)
{
    return pte_new(
               0,
               paddr,
               0,
               vm_attributes_get_x86PATBit(vm_attr),
               0,
               0,
               vm_attributes_get_x86PCDBit(vm_attr),
               vm_attributes_get_x86PWTBit(vm_attr),
               SuperUserFromVMRights(vm_rights),
               WritableFromVMRights(vm_rights),
               1
           );
}

pte_t __attribute__((__const__)) makeUserPTEInvalid(void)
{
    return pte_new(
               0,
               0,
               0,
               0,
               0,
               0,
               0,
               0,
               0,
               0,
               0
           );
}


static pml4e_t *lookupPML4Slot(vspace_root_t *pml4, vptr_t vptr)
{
    pml4e_t *pml4e = ((pml4e_t *)(pml4));
    word_t pml4Index = ( ((vptr) >> (((((12) + 9) + 9) + 9))) & ((1ul << (9)) - 1ul));
    return pml4e + pml4Index;
}

static lookupPDPTSlot_ret_t lookupPDPTSlot(vspace_root_t *pml4, vptr_t vptr)
{
    pml4e_t *pml4Slot = lookupPML4Slot(pml4, vptr);
    lookupPDPTSlot_ret_t ret;

    if (!pml4e_ptr_get_present(pml4Slot)) {
        current_lookup_fault = lookup_fault_missing_capability_new(((((12) + 9) + 9) + 9));

        ret.pdptSlot = ((void *)0);
        ret.status = EXCEPTION_LOOKUP_FAULT;
        return ret;
    } else {
        pdpte_t *pdpt;
        pdpte_t *pdptSlot;
        word_t pdptIndex = ( ((vptr) >> ((((12) + 9) + 9))) & ((1ul << (9)) - 1ul));
        pdpt = ptrFromPAddr(pml4e_ptr_get_pdpt_base_address(pml4Slot));
        pdptSlot = pdpt + pdptIndex;

        ret.status = EXCEPTION_NONE;
        ret.pdptSlot = pdptSlot;
        return ret;
    }
}

lookupPDSlot_ret_t lookupPDSlot(vspace_root_t *pml4, vptr_t vptr)
{
    lookupPDPTSlot_ret_t pdptSlot;
    lookupPDSlot_ret_t ret;

    pdptSlot = lookupPDPTSlot(pml4, vptr);

    if (pdptSlot.status != EXCEPTION_NONE) {
        ret.pdSlot = ((void *)0);
        ret.status = pdptSlot.status;
        return ret;
    }
    if ((pdpte_ptr_get_page_size(pdptSlot.pdptSlot) != pdpte_pdpte_pd) ||
        !pdpte_pdpte_pd_ptr_get_present(pdptSlot.pdptSlot)) {
        current_lookup_fault = lookup_fault_missing_capability_new((((12) + 9) + 9));

        ret.pdSlot = ((void *)0);
        ret.status = EXCEPTION_LOOKUP_FAULT;
        return ret;
    } else {
        pde_t *pd;
        pde_t *pdSlot;
        word_t pdIndex = ( ((vptr) >> (((12) + 9))) & ((1ul << (9)) - 1ul));
        pd = ptrFromPAddr(pdpte_pdpte_pd_ptr_get_pd_base_address(pdptSlot.pdptSlot));
        pdSlot = pd + pdIndex;

        ret.status = EXCEPTION_NONE;
        ret.pdSlot = pdSlot;
        return ret;
    }
}

static void flushPD(vspace_root_t *vspace, word_t vptr, pde_t *pd, asid_t asid)
{




    invalidateASID(vspace, asid, 0);

}

static void flushPDPT(vspace_root_t *vspace, word_t vptr, pdpte_t *pdpt, asid_t asid)
{

    invalidateASID(vspace, asid, 0);
    return;
}

void hwASIDInvalidate(asid_t asid, vspace_root_t *vspace)
{
    invalidateASID(vspace, asid, 0);
}

void unmapPageDirectory(asid_t asid, vptr_t vaddr, pde_t *pd)
{
    findVSpaceForASID_ret_t find_ret;
    lookupPDPTSlot_ret_t lu_ret;

    find_ret = findVSpaceForASID(asid);
    if (find_ret.status != EXCEPTION_NONE) {
        return;
    }

    lu_ret = lookupPDPTSlot(find_ret.vspace_root, vaddr);
    if (lu_ret.status != EXCEPTION_NONE) {
        return;
    }


    if (!(pdpte_ptr_get_page_size(lu_ret.pdptSlot) == pdpte_pdpte_pd &&
          pdpte_pdpte_pd_ptr_get_present(lu_ret.pdptSlot) &&
          (pdpte_pdpte_pd_ptr_get_pd_base_address(lu_ret.pdptSlot) == addrFromPPtr(pd)))) {
        return;
    }

    flushPD(find_ret.vspace_root, vaddr, pd, asid);

    *lu_ret.pdptSlot = makeUserPDPTEInvalid();

    invalidatePageStructureCacheASID(addrFromPPtr(find_ret.vspace_root), asid,
                                     0);
}


static exception_t performX64PageDirectoryInvocationUnmap(cap_t cap, cte_t *ctSlot)
{

    if (cap_page_directory_cap_get_capPDIsMapped(cap)) {
        pde_t *pd = ((pde_t *)(cap_page_directory_cap_get_capPDBasePtr(cap)));
        unmapPageDirectory(
            cap_page_directory_cap_get_capPDMappedASID(cap),
            cap_page_directory_cap_get_capPDMappedAddress(cap),
            pd
        );
        clearMemory((void *)pd, cap_get_capSizeBits(cap));
    }

    cap_page_directory_cap_ptr_set_capPDIsMapped(&(ctSlot->cap), 0);

    return EXCEPTION_NONE;
}

static exception_t performX64PageDirectoryInvocationMap(cap_t cap, cte_t *ctSlot, pdpte_t pdpte, pdpte_t *pdptSlot,
                                                        vspace_root_t *vspace)
{
    ctSlot->cap = cap;
    *pdptSlot = pdpte;
    invalidatePageStructureCacheASID(addrFromPPtr(vspace), cap_page_directory_cap_get_capPDMappedASID(cap),
                                     0);
    return EXCEPTION_NONE;
}


static exception_t decodeX64PageDirectoryInvocation(
    word_t label,
    word_t length,
    cte_t *cte,
    cap_t cap,
    word_t *buffer
)
{
    word_t vaddr;
    vm_attributes_t vm_attr;
    cap_t vspaceCap;
    vspace_root_t *vspace;
    pdpte_t pdpte;
    paddr_t paddr;
    asid_t asid;
    lookupPDPTSlot_ret_t pdptSlot;

    if (label == X86PageDirectoryUnmap) {
        if (!isFinalCapability(cte)) {
            current_syscall_error.type = seL4_RevokeFirst;
            ;
            return EXCEPTION_SYSCALL_ERROR;
        }
        setThreadState(ksCurThread, ThreadState_Restart);

        return performX64PageDirectoryInvocationUnmap(cap, cte);
    }

    if (label != X86PageDirectoryMap) {
        ;
        current_syscall_error.type = seL4_IllegalOperation;
        return EXCEPTION_SYSCALL_ERROR;
    }

    if (length < 2 || current_extra_caps.excaprefs[0] == ((void *)0)) {
        ;
        current_syscall_error.type = seL4_TruncatedMessage;
        return EXCEPTION_SYSCALL_ERROR;
    }

    if (cap_page_directory_cap_get_capPDIsMapped(cap)) {
        ;
        current_syscall_error.type = seL4_InvalidCapability;
        current_syscall_error.invalidCapNumber = 0;

        return EXCEPTION_SYSCALL_ERROR;
    }

    vaddr = getSyscallArg(0, buffer) & (~((1ul << ((((12) + 9) + 9))) - 1ul));
    vm_attr = vmAttributesFromWord(getSyscallArg(1, buffer));
    vspaceCap = current_extra_caps.excaprefs[0]->cap;

    if (!isValidNativeRoot(vspaceCap)) {
        current_syscall_error.type = seL4_InvalidCapability;
        current_syscall_error.invalidCapNumber = 1;

        return EXCEPTION_SYSCALL_ERROR;
    }

    vspace = (vspace_root_t *)((pptr_t)cap_get_capPtr(vspaceCap));
    asid = cap_get_capMappedASID(vspaceCap);

    if (vaddr > 0x7FFFFFFFFFFFul) {
        ;
        current_syscall_error.type = seL4_InvalidArgument;
        current_syscall_error.invalidArgumentNumber = 0;

        return EXCEPTION_SYSCALL_ERROR;
    }

    findVSpaceForASID_ret_t find_ret;

    find_ret = findVSpaceForASID(asid);
    if (find_ret.status != EXCEPTION_NONE) {
        current_syscall_error.type = seL4_FailedLookup;
        current_syscall_error.failedLookupWasSource = false;

        return EXCEPTION_SYSCALL_ERROR;
    }

    if (find_ret.vspace_root != vspace) {
        current_syscall_error.type = seL4_InvalidCapability;
        current_syscall_error.invalidCapNumber = 1;

        return EXCEPTION_SYSCALL_ERROR;
    }

    pdptSlot = lookupPDPTSlot(vspace, vaddr);
    if (pdptSlot.status != EXCEPTION_NONE) {
        current_syscall_error.type = seL4_FailedLookup;
        current_syscall_error.failedLookupWasSource = false;

        return EXCEPTION_SYSCALL_ERROR;
    }

    if ((pdpte_ptr_get_page_size(pdptSlot.pdptSlot) == pdpte_pdpte_pd &&
         pdpte_pdpte_pd_ptr_get_present(pdptSlot.pdptSlot)) ||
        (pdpte_ptr_get_page_size(pdptSlot.pdptSlot) == pdpte_pdpte_1g
         && pdpte_pdpte_1g_ptr_get_present(pdptSlot.pdptSlot))) {
        current_syscall_error.type = seL4_DeleteFirst;

        return EXCEPTION_SYSCALL_ERROR;
    }

    paddr = addrFromPPtr(((pde_t *)(cap_page_directory_cap_get_capPDBasePtr(cap))));
    pdpte = makeUserPDPTEPageDirectory(paddr, vm_attr);

    cap = cap_page_directory_cap_set_capPDIsMapped(cap, 1);
    cap = cap_page_directory_cap_set_capPDMappedASID(cap, asid);
    cap = cap_page_directory_cap_set_capPDMappedAddress(cap, vaddr);

    setThreadState(ksCurThread, ThreadState_Restart);
    return performX64PageDirectoryInvocationMap(cap, cte, pdpte, pdptSlot.pdptSlot, vspace);
}

static void unmapPDPT(asid_t asid, vptr_t vaddr, pdpte_t *pdpt)
{
    findVSpaceForASID_ret_t find_ret;
    pml4e_t *pml4Slot;

    find_ret = findVSpaceForASID(asid);
    if (find_ret.status != EXCEPTION_NONE) {
        return;
    }

    pml4Slot = lookupPML4Slot(find_ret.vspace_root, vaddr);


    if (!(pml4e_ptr_get_present(pml4Slot) &&
          pml4e_ptr_get_pdpt_base_address(pml4Slot) == addrFromPPtr(pdpt))) {
        return;
    }

    flushPDPT(find_ret.vspace_root, vaddr, pdpt, asid);

    *pml4Slot = makeUserPML4EInvalid();
}

static exception_t performX64PDPTInvocationUnmap(cap_t cap, cte_t *ctSlot)
{
    if (cap_pdpt_cap_get_capPDPTIsMapped(cap)) {
        pdpte_t *pdpt = ((pdpte_t *)(cap_pdpt_cap_get_capPDPTBasePtr(cap)));
        unmapPDPT(cap_pdpt_cap_get_capPDPTMappedASID(cap),
                  cap_pdpt_cap_get_capPDPTMappedAddress(cap),
                  pdpt);
        clearMemory((void *)pdpt, cap_get_capSizeBits(cap));
    }

    cap_pdpt_cap_ptr_set_capPDPTIsMapped(&(ctSlot->cap), 0);

    return EXCEPTION_NONE;
}

static exception_t performX64PDPTInvocationMap(cap_t cap, cte_t *ctSlot, pml4e_t pml4e, pml4e_t *pml4Slot,
                                               vspace_root_t *vspace)
{
    ctSlot->cap = cap;
    *pml4Slot = pml4e;
    invalidatePageStructureCacheASID(addrFromPPtr(vspace), cap_pdpt_cap_get_capPDPTMappedASID(cap),
                                     0);

    return EXCEPTION_NONE;
}

static exception_t decodeX64PDPTInvocation(
    word_t label,
    word_t length,
    cte_t *cte,
    cap_t cap,
    word_t *buffer)
{
    word_t vaddr;
    vm_attributes_t attr;
    pml4e_t *pml4Slot;
    cap_t vspaceCap;
    vspace_root_t *vspace;
    pml4e_t pml4e;
    paddr_t paddr;
    asid_t asid;

    if (label == X86PDPTUnmap) {
        if (!isFinalCapability(cte)) {
            current_syscall_error.type = seL4_RevokeFirst;
            ;
            return EXCEPTION_SYSCALL_ERROR;
        }

        setThreadState(ksCurThread, ThreadState_Restart);

        return performX64PDPTInvocationUnmap(cap, cte);
    }

    if (label != X86PDPTMap) {
        ;
        current_syscall_error.type = seL4_IllegalOperation;
        return EXCEPTION_SYSCALL_ERROR;
    }

    if (length < 2 || current_extra_caps.excaprefs[0] == ((void *)0)) {
        ;
        current_syscall_error.type = seL4_TruncatedMessage;
        return EXCEPTION_SYSCALL_ERROR;
    }

    if (cap_pdpt_cap_get_capPDPTIsMapped(cap)) {
        ;
        current_syscall_error.type = seL4_InvalidCapability;
        current_syscall_error.invalidCapNumber = 0;

        return EXCEPTION_SYSCALL_ERROR;
    }

    vaddr = getSyscallArg(0, buffer) & (~((1ul << (((((12) + 9) + 9) + 9))) - 1ul));
    attr = vmAttributesFromWord(getSyscallArg(1, buffer));
    vspaceCap = current_extra_caps.excaprefs[0]->cap;

    if (!isValidNativeRoot(vspaceCap)) {
        current_syscall_error.type = seL4_InvalidCapability;
        current_syscall_error.invalidCapNumber = 1;

        return EXCEPTION_SYSCALL_ERROR;
    }

    vspace = (vspace_root_t *)((pptr_t)cap_get_capPtr(vspaceCap));
    asid = cap_get_capMappedASID(vspaceCap);

    if (vaddr > 0x7FFFFFFFFFFFul) {
        ;
        current_syscall_error.type = seL4_InvalidArgument;
        current_syscall_error.invalidArgumentNumber = 0;

        return EXCEPTION_SYSCALL_ERROR;
    }

    findVSpaceForASID_ret_t find_ret;

    find_ret = findVSpaceForASID(asid);
    if (find_ret.status != EXCEPTION_NONE) {
        current_syscall_error.type = seL4_FailedLookup;
        current_syscall_error.failedLookupWasSource = false;

        return EXCEPTION_SYSCALL_ERROR;
    }

    if (find_ret.vspace_root != vspace) {
        current_syscall_error.type = seL4_InvalidCapability;
        current_syscall_error.invalidCapNumber = 1;

        return EXCEPTION_SYSCALL_ERROR;
    }

    pml4Slot = lookupPML4Slot(vspace, vaddr);

    if (pml4e_ptr_get_present(pml4Slot)) {
        current_syscall_error.type = seL4_DeleteFirst;

        return EXCEPTION_SYSCALL_ERROR;
    }

    paddr = addrFromPPtr(((pdpte_t *)((cap_pdpt_cap_get_capPDPTBasePtr(cap)))));
    pml4e = makeUserPML4E(paddr, attr);

    cap = cap_pdpt_cap_set_capPDPTIsMapped(cap, 1);
    cap = cap_pdpt_cap_set_capPDPTMappedASID(cap, asid);
    cap = cap_pdpt_cap_set_capPDPTMappedAddress(cap, vaddr);

    setThreadState(ksCurThread, ThreadState_Restart);
    return performX64PDPTInvocationMap(cap, cte, pml4e, pml4Slot, vspace);
}

exception_t decodeX86ModeMMUInvocation(
    word_t label,
    word_t length,
    cptr_t cptr,
    cte_t *cte,
    cap_t cap,
    bool_t call,
    word_t *buffer
)
{
    switch (cap_get_capType(cap)) {

    case cap_pml4_cap:
        current_syscall_error.type = seL4_IllegalOperation;
        return EXCEPTION_SYSCALL_ERROR;

    case cap_pdpt_cap:
        return decodeX64PDPTInvocation(label, length, cte, cap, buffer);

    case cap_page_directory_cap:
        return decodeX64PageDirectoryInvocation(label, length, cte, cap, buffer);

    default:
        halt();
    }
}

bool_t modeUnmapPage(vm_page_size_t page_size, vspace_root_t *vroot, vptr_t vaddr, void *pptr)
{
    if (wrap_config_set(1) && page_size == X64_HugePage) {
        pdpte_t *pdpte;
        lookupPDPTSlot_ret_t pdpt_ret = lookupPDPTSlot(vroot, vaddr);
        if (pdpt_ret.status != EXCEPTION_NONE) {
            return false;
        }
        pdpte = pdpt_ret.pdptSlot;


        if (!(pdpte_ptr_get_page_size(pdpte) == pdpte_pdpte_1g
              && pdpte_pdpte_1g_ptr_get_present(pdpte)
              && (pdpte_pdpte_1g_ptr_get_page_base_address(pdpte)
                  == addrFromPPtr(pptr)))) {
            return false;
        }

        *pdpte = makeUserPDPTEInvalid();
        return true;
    }
    halt();
    return false;
}

static exception_t updatePDPTE(asid_t asid, pdpte_t pdpte, pdpte_t *pdptSlot, vspace_root_t *vspace)
{
    *pdptSlot = pdpte;
    invalidatePageStructureCacheASID(addrFromPPtr(vspace), asid,
                                     0);
    return EXCEPTION_NONE;
}

static exception_t performX64ModeMap(cap_t cap, cte_t *ctSlot, pdpte_t pdpte, pdpte_t *pdptSlot, vspace_root_t *vspace)
{
    ctSlot->cap = cap;
    return updatePDPTE(cap_frame_cap_get_capFMappedASID(cap), pdpte, pdptSlot, vspace);
}

struct create_mapping_pdpte_return {
    exception_t status;
    pdpte_t pdpte;
    pdpte_t *pdptSlot;
};
typedef struct create_mapping_pdpte_return create_mapping_pdpte_return_t;

static create_mapping_pdpte_return_t createSafeMappingEntries_PDPTE(paddr_t base, word_t vaddr, vm_rights_t vmRights,
                                                                    vm_attributes_t attr,
                                                                    vspace_root_t *vspace)
{
    create_mapping_pdpte_return_t ret;
    lookupPDPTSlot_ret_t lu_ret;

    lu_ret = lookupPDPTSlot(vspace, vaddr);
    if (lu_ret.status != EXCEPTION_NONE) {
        current_syscall_error.type = seL4_FailedLookup;
        current_syscall_error.failedLookupWasSource = false;
        ret.status = EXCEPTION_SYSCALL_ERROR;

        return ret;
    }
    ret.pdptSlot = lu_ret.pdptSlot;


    if ((pdpte_ptr_get_page_size(ret.pdptSlot) == pdpte_pdpte_pd) &&
        (pdpte_pdpte_pd_ptr_get_present(ret.pdptSlot))) {
        current_syscall_error.type = seL4_DeleteFirst;
        ret.status = EXCEPTION_SYSCALL_ERROR;
        return ret;
    }

    ret.pdpte = makeUserPDPTEHugePage(base, attr, vmRights);
    ret.status = EXCEPTION_NONE;
    return ret;
}

exception_t decodeX86ModeMapPage(word_t label, vm_page_size_t page_size, cte_t *cte, cap_t cap,
                                 vspace_root_t *vroot, vptr_t vaddr, paddr_t paddr, vm_rights_t vm_rights, vm_attributes_t vm_attr)
{
    if (wrap_config_set(1) && page_size == X64_HugePage) {
        create_mapping_pdpte_return_t map_ret;

        map_ret = createSafeMappingEntries_PDPTE(paddr, vaddr, vm_rights, vm_attr, vroot);
        if (map_ret.status != EXCEPTION_NONE) {
            return map_ret.status;
        }

        setThreadState(ksCurThread, ThreadState_Restart);

        switch (label) {
        case X86PageMap:
            return performX64ModeMap(cap, cte, map_ret.pdpte, map_ret.pdptSlot, vroot);

        default:
            current_syscall_error.type = seL4_IllegalOperation;
            return EXCEPTION_SYSCALL_ERROR;
        }
    }
    halt();
}
# 1 "/workspace/seL4-c89/preconfigured/src/arch/x86/64/machine/capdl.c"
# 1 "/workspace/seL4-c89/preconfigured/src/arch/x86/64/machine/registerset.c"
# 12 "/workspace/seL4-c89/preconfigured/src/arch/x86/64/machine/registerset.c"
const register_t msgRegisters[] = {
    R10, R8, R9, R15
};
typedef int __assert_failed_consistent_message_registers[(sizeof(msgRegisters) / sizeof(msgRegisters[0]) == n_msgRegisters) ? 1 : -1] __attribute__((unused));


 ;

const register_t frameRegisters[] = {
    FaultIP, RSP, FLAGS, RAX, RBX, RCX, RDX, RSI, RDI, RBP,
    R8, R9, R10, R11, R12, R13, R14, R15
};
typedef int __assert_failed_consistent_frame_registers[(sizeof(frameRegisters) / sizeof(frameRegisters[0]) == n_frameRegisters) ? 1 : -1] __attribute__((unused));


 ;

const register_t gpRegisters[] = {
    FS_BASE, GS_BASE
};
typedef int __assert_failed_consistent_gp_registers[(sizeof(gpRegisters) / sizeof(gpRegisters[0]) == n_gpRegisters) ? 1 : -1] __attribute__((unused));


 ;

void Mode_initContext(user_context_t *context)
{
    context->registers[RAX] = 0;
    context->registers[RBX] = 0;
    context->registers[RCX] = 0;
    context->registers[RDX] = 0;
    context->registers[RSI] = 0;
    context->registers[RDI] = 0;
    context->registers[RBP] = 0;
    context->registers[R8] = 0;
    context->registers[R9] = 0;
    context->registers[R10] = 0;
    context->registers[R11] = 0;
    context->registers[R12] = 0;
    context->registers[R13] = 0;
    context->registers[R14] = 0;
    context->registers[R15] = 0;
    context->registers[RSP] = 0;
}

word_t Mode_sanitiseRegister(register_t reg, word_t v)
{
    if (reg == FaultIP || reg == NextIP || reg == FS_BASE || reg == GS_BASE) {

        if (v > 0x00007fffffffffff && v < 0xffff800000000000) {

            v = 0;
        }
    }
    return v;
}
# 1 "/workspace/seL4-c89/preconfigured/src/arch/x86/64/model/smp.c"
# 1 "/workspace/seL4-c89/preconfigured/src/arch/x86/64/model/statedata.c"
# 10 "/workspace/seL4-c89/preconfigured/src/arch/x86/64/model/statedata.c"
pml4e_t x64KSKernelPML4[(1ul << (9))] __attribute__((__aligned__((1ul << (12))))) __attribute__((externally_visible));
pdpte_t x64KSKernelPDPT[(1ul << (9))] __attribute__((__aligned__((1ul << (12)))));

pde_t x64KSKernelPD[(1ul << (9))] __attribute__((__aligned__((1ul << (12)))));



pte_t x64KSKernelPT[(1ul << (9))] __attribute__((__aligned__((1ul << (12)))));


pml4e_t x64KSSKIMPML4[(1ul << (9))] __attribute__((__aligned__((1ul << (12)))));
pdpte_t x64KSSKIMPDPT[(1ul << (9))] __attribute__((__aligned__((1ul << (12)))));
pde_t x64KSSKIMPD[(1ul << (9))] __attribute__((__aligned__((1ul << (12)))));



word_t x64KSCurrentUserCR3;




word_t x64KSIRQStack[1][6 + 2] __attribute__((__aligned__(64))) __attribute__((externally_visible)) __attribute__((__section__(".skim.bss")));
# 1 "/workspace/seL4-c89/preconfigured/src/arch/x86/64/object/objecttype.c"
# 17 "/workspace/seL4-c89/preconfigured/src/arch/x86/64/object/objecttype.c"
# 1 "/workspace/seL4-c89/preconfigured/include/arch/x86/arch/kernel/ept.h" 1






       
# 18 "/workspace/seL4-c89/preconfigured/src/arch/x86/64/object/objecttype.c" 2





bool_t Arch_isFrameType(word_t type)
{
    switch (type) {
    case seL4_X86_4K:
        return true;
    case seL4_X86_LargePageObject:
        return true;
    case seL4_X64_HugePageObject:
        return true;
    default:
        return false;
    }
}

deriveCap_ret_t Mode_deriveCap(cte_t *slot, cap_t cap)
{
    deriveCap_ret_t ret;

    switch (cap_get_capType(cap)) {
    case cap_pml4_cap:
        if (cap_pml4_cap_get_capPML4IsMapped(cap)) {
            ret.cap = cap;
            ret.status = EXCEPTION_NONE;
        } else {
            ;
            current_syscall_error.type = seL4_IllegalOperation;
            ret.cap = cap_null_cap_new();
            ret.status = EXCEPTION_SYSCALL_ERROR;
        }
        return ret;

    case cap_pdpt_cap:
        if (cap_pdpt_cap_get_capPDPTIsMapped(cap)) {
            ret.cap = cap;
            ret.status = EXCEPTION_NONE;
        } else {
            ;
            current_syscall_error.type = seL4_IllegalOperation;
            ret.cap = cap_null_cap_new();
            ret.status = EXCEPTION_SYSCALL_ERROR;
        }
        return ret;

    case cap_frame_cap:
        cap = cap_frame_cap_set_capFMapType(cap, X86_MappingNone);
        ret.cap = cap_frame_cap_set_capFMappedASID(cap, asidInvalid);
        ret.status = EXCEPTION_NONE;
        return ret;

    default:
        halt();
    }
}

finaliseCap_ret_t Mode_finaliseCap(cap_t cap, bool_t final)
{
    finaliseCap_ret_t fc_ret;

    switch (cap_get_capType(cap)) {

    case cap_pml4_cap:
        if (final && cap_pml4_cap_get_capPML4IsMapped(cap)) {
            deleteASID(
                cap_pml4_cap_get_capPML4MappedASID(cap),
                ((pml4e_t *)(cap_pml4_cap_get_capPML4BasePtr(cap)))
            );
        }
        break;

    case cap_pdpt_cap:
        if (final && cap_pdpt_cap_get_capPDPTIsMapped(cap)) {
            unmapPDPT(
                cap_pdpt_cap_get_capPDPTMappedASID(cap),
                cap_pdpt_cap_get_capPDPTMappedAddress(cap),
                ((pdpte_t *)(cap_pdpt_cap_get_capPDPTBasePtr(cap)))
            );
        }
        break;

    case cap_frame_cap:
        if (cap_frame_cap_get_capFMappedASID(cap)) {
            switch (cap_frame_cap_get_capFMapType(cap)) {
# 120 "/workspace/seL4-c89/preconfigured/src/arch/x86/64/object/objecttype.c"
            case X86_MappingVSpace:
                unmapPage(
                    cap_frame_cap_get_capFSize(cap),
                    cap_frame_cap_get_capFMappedASID(cap),
                    cap_frame_cap_get_capFMappedAddress(cap),
                    (void *)cap_frame_cap_get_capFBasePtr(cap)
                );
                break;
            default:
                halt();
            }
        }
        break;

    default:
        halt();
    }

    fc_ret.remainder = cap_null_cap_new();
    fc_ret.cleanupInfo = cap_null_cap_new();
    return fc_ret;
}

bool_t __attribute__((__const__)) Mode_sameRegionAs(cap_t cap_a, cap_t cap_b)
{
    switch (cap_get_capType(cap_a)) {

    case cap_pdpt_cap:
        if (cap_get_capType(cap_b) == cap_pdpt_cap) {
            return cap_pdpt_cap_get_capPDPTBasePtr(cap_a) ==
                   cap_pdpt_cap_get_capPDPTBasePtr(cap_b);
        }
        return false;

    case cap_pml4_cap:
        if (cap_get_capType(cap_b) == cap_pml4_cap) {
            return cap_pml4_cap_get_capPML4BasePtr(cap_a) ==
                   cap_pml4_cap_get_capPML4BasePtr(cap_b);
        }
        return false;
    default:
        return false;
    }
}

word_t Mode_getObjectSize(word_t t)
{
    switch (t) {
    case seL4_X64_PML4Object:
        return 12;

    case seL4_X64_HugePageObject:
        return pageBitsForSize(X64_HugePage);

    default:
        halt();
        return 0;
    }
}

cap_t Mode_createObject(object_t t, void *regionBase, word_t userSize, bool_t deviceMemory)
{
    switch (t) {

    case seL4_X86_4K:
        if (deviceMemory) {





        } else {





        }
        return cap_frame_cap_new(
                   asidInvalid,
                   (word_t)regionBase,
                   X86_SmallPage,
                   X86_MappingNone,
                   0,
                   VMReadWrite,
                   deviceMemory
               );

    case seL4_X86_LargePageObject:
        if (deviceMemory) {





        } else {





        }
        return cap_frame_cap_new(
                   asidInvalid,
                   (word_t)regionBase,
                   X86_LargePage,
                   X86_MappingNone,
                   0,
                   VMReadWrite,
                   deviceMemory
               );

    case seL4_X64_HugePageObject:
        if (deviceMemory) {





        } else {





        }
        return cap_frame_cap_new(
                   asidInvalid,
                   (word_t)regionBase,
                   X64_HugePage,
                   X86_MappingNone,
                   0,
                   VMReadWrite,
                   deviceMemory
               );

    case seL4_X86_PageTableObject:


        return cap_page_table_cap_new(
                   asidInvalid,
                   (word_t)regionBase,
                   0,
                   0
               );

    case seL4_X86_PageDirectoryObject:


        return cap_page_directory_cap_new(
                   asidInvalid,
                   (word_t)regionBase,
                   0,
                   0
               );

    case seL4_X86_PDPTObject:


        return cap_pdpt_cap_new(
                   asidInvalid,
                   (word_t)regionBase,
                   0,
                   0
               );

    case seL4_X64_PML4Object:


        copyGlobalMappings(((pml4e_t *)(regionBase)));
        return cap_pml4_cap_new(
                   asidInvalid,
                   (word_t)regionBase,
                   0
               );
# 307 "/workspace/seL4-c89/preconfigured/src/arch/x86/64/object/objecttype.c"
    default:





        halt();
    }
}

exception_t Mode_decodeInvocation(
    word_t label,
    word_t length,
    cptr_t cptr,
    cte_t *slot,
    cap_t cap,
    bool_t call,
    word_t *buffer
)
{
    switch (cap_get_capType(cap)) {
    case cap_pml4_cap:
    case cap_pdpt_cap:
    case cap_page_directory_cap:
    case cap_page_table_cap:
    case cap_frame_cap:
        return decodeX86MMUInvocation(label, length, cptr, slot, cap, call, buffer);

    default:
        current_syscall_error.type = seL4_InvalidCapability;
        current_syscall_error.invalidCapNumber = 0;
        return EXCEPTION_SYSCALL_ERROR;
    }
}
# 1 "/workspace/seL4-c89/preconfigured/src/arch/x86/64/smp/ipi.c"
# 1 "/workspace/seL4-c89/preconfigured/src/arch/x86/api/faults.c"
# 13 "/workspace/seL4-c89/preconfigured/src/arch/x86/api/faults.c"
bool_t Arch_handleFaultReply(tcb_t *receiver, tcb_t *sender, word_t faultType)
{
    switch (faultType) {
    case seL4_Fault_VMFault:
        return true;

    default:
        halt();
    }
}

word_t Arch_setMRs_fault(tcb_t *sender, tcb_t *receiver, word_t *receiveIPCBuffer, word_t faultType)
{
    switch (faultType) {
    case seL4_Fault_VMFault: {
        setMR(receiver, receiveIPCBuffer, seL4_VMFault_IP, getRestartPC(sender));
        setMR(receiver, receiveIPCBuffer, seL4_VMFault_Addr,
              seL4_Fault_VMFault_get_address(sender->tcbFault));
        setMR(receiver, receiveIPCBuffer, seL4_VMFault_PrefetchFault,
              seL4_Fault_VMFault_get_instructionFault(sender->tcbFault));
        return setMR(receiver, receiveIPCBuffer, seL4_VMFault_FSR,
                     seL4_Fault_VMFault_get_FSR(sender->tcbFault));
    }
    default:
        halt();
    }
}

word_t handleKernelException(
    word_t vector,
    word_t errcode,
    word_t ip,
    word_t sp,
    word_t flags,
    word_t cr0,
    word_t cr2,
    word_t cr3,
    word_t cr4
);

__attribute__((externally_visible))
word_t handleKernelException(
    word_t vector,
    word_t errcode,
    word_t ip,
    word_t sp,
    word_t flags,
    word_t cr0,
    word_t cr2,
    word_t cr3,
    word_t cr4
)
{
    word_t i;


    if (vector == int_gp_fault && x86KSGPExceptReturnTo != 0) {
        word_t ret = x86KSGPExceptReturnTo;
        x86KSGPExceptReturnTo = 0;
        return ret;
    }
    ((void)(0));
    ((void)(0));
    ((void)(0));
    ((void)(0));
    ((void)(0));
    ((void)(0));
    ((void)(0));
    ((void)(0));
    ((void)(0));
    ((void)(0));
    ((void)(0));
    for (i = 0; i < 20; i++) {
        word_t __attribute__((unused)) stack = sp + i * sizeof(word_t);
        ((void)(0));
    }
    ((void)(0));
    halt();
    __builtin_unreachable();
}
# 1 "/workspace/seL4-c89/preconfigured/src/arch/x86/benchmark/benchmark.c"
# 1 "/workspace/seL4-c89/preconfigured/src/arch/x86/c_traps.c"
# 10 "/workspace/seL4-c89/preconfigured/src/arch/x86/c_traps.c"
# 1 "/workspace/seL4-c89/preconfigured/include/arch/x86/arch/fastpath/fastpath.h" 1






       

# 1 "/workspace/seL4-c89/preconfigured/include/arch/x86/arch/64/mode/fastpath/fastpath.h" 1






       
# 21 "/workspace/seL4-c89/preconfigured/include/arch/x86/arch/64/mode/fastpath/fastpath.h"
static inline tcb_t *endpoint_ptr_get_epQueue_tail_fp(endpoint_t *ep_ptr)
{
    uint64_t ret = ep_ptr->words[0] & 0xfffffffffffcull;
    return __builtin_expect(!!(ret), 0) ? ((tcb_t *)(ret | 0xffffff8000000000ul)) : ((void *)0);
}

static inline vspace_root_t *cap_vtable_cap_get_vspace_root_fp(cap_t vtable_cap)
{
    return ((pml4e_t *)(vtable_cap.words[1]));
}

static inline word_t cap_pml4_cap_get_capPML4MappedASID_fp(cap_t vtable_cap)
{
    return (uint32_t)vtable_cap.words[0];
}

static inline void __attribute__((always_inline)) switchToThread_fp(tcb_t *thread, vspace_root_t *vroot, pde_t stored_hw_asid)
{
    word_t new_vroot = addrFromPPtr(vroot);

    asid_t asid = (asid_t)(stored_hw_asid.words[0] & 0xfff);
    cr3_t next_cr3 = makeCR3(new_vroot, asid);
    if (__builtin_expect(!!(getCurrentUserCR3().words[0] != next_cr3.words[0]), 1)) {
       
        setCurrentUserCR3(next_cr3);
    }
# 55 "/workspace/seL4-c89/preconfigured/include/arch/x86/arch/64/mode/fastpath/fastpath.h"
    lazyFPURestore(thread);

    if (wrap_config_set(0)) {
        x86_ibpb();
    }

    if (wrap_config_set(0)) {
        x86_flush_rsb();
    }





    ksCurThread = thread;
}


static inline void thread_state_ptr_set_blockingIPCDiminish_np(thread_state_t *ts_ptr, word_t dim)
{
    ts_ptr->words[1] = (ts_ptr->words[1] & 1) | dim;
}

static inline void mdb_node_ptr_mset_mdbNext_mdbRevocable_mdbFirstBadged(
    mdb_node_t *node_ptr, word_t mdbNext,
    word_t mdbRevocable, word_t mdbFirstBadged)
{
    node_ptr->words[1] = mdbNext | (mdbRevocable << 1) | mdbFirstBadged;
}

static inline void mdb_node_ptr_set_mdbPrev_np(mdb_node_t *node_ptr, word_t mdbPrev)
{
    node_ptr->words[0] = mdbPrev;
}


static inline bool_t isValidVTableRoot_fp(cap_t vspace_root_cap)
{


    return (vspace_root_cap.words[0] >> (64 - 6)) == ((cap_pml4_cap << 1) | 0x1);
}

static inline void fastpath_copy_mrs(word_t length, tcb_t *src, tcb_t *dest)
{
    word_t i;
    register_t reg;


    for (i = 0; i < length; i ++) {

        reg = msgRegisters[0] + i;
        setRegister(dest, reg, getRegister(src, reg));
    }
}






typedef int __assert_failed_n_msgRegisters_eq_4[(n_msgRegisters == 4) ? 1 : -1] __attribute__((unused));
static inline int
fastpath_mi_check(word_t msgInfo)
{
    return ((msgInfo & ((1ul << (seL4_MsgLengthBits + seL4_MsgExtraCapBits)) - 1ul))
            + 3) & ~((1ul << (3)) - 1ul);
}

static inline void __attribute__((__noreturn__)) __attribute__((always_inline)) fastpath_restore(word_t badge, word_t msgInfo, tcb_t *cur_thread)
{
    if (wrap_config_set(0) && wrap_config_set(0)
        && ((getRegister(ksCurThread, FLAGS) & (1ul << (8))) != 0)) {




        restore_user_context();
    }
    do {} while (0);
    c_exit_hook();

    if (wrap_config_set(1)) {

        word_t *irqstack = x64KSIRQStack[0lu];
        irqstack[0] = 0;
        irqstack[1] = 0;
        irqstack[2] = 0;
        irqstack[3] = 0;
        irqstack[4] = 0;
        irqstack[5] = 0;
    }
# 159 "/workspace/seL4-c89/preconfigured/include/arch/x86/arch/64/mode/fastpath/fastpath.h"
    if (wrap_config_set(0)) {
        x86_disable_ibrs();
    }

    if (wrap_config_set(0)) {
        cur_thread->tcbArch.tcbContext.registers[FLAGS] &= ~(1ul << (9));




        __asm__ volatile(
            "movq %%rcx, %%rsp\n"
            "popq %%rax\n"
            "popq %%rbx\n"
            "popq %%rbp\n"
            "popq %%r12\n"
            "popq %%r13\n"
            "popq %%r14\n"

            "addq $8, %%rsp\n"
            "popq %%r10\n"
            "popq %%r8\n"
            "popq %%r9\n"
            "popq %%r15\n"

            "popfq\n"

            "orq %[IF], -8(%%rsp)\n"

            "popq %%rdx\n"

            "addq $8, %%rsp\n"

            "popq %%rcx\n"

            "addq $8, %%rsp\n"





            "popq %%r11\n"

            "movq (x64KSCurrentUserCR3), %%rsp\n"
            "movq %%rsp, %%cr3\n"


            "sti\n"
            "rex.w sysexit""\n"
            :
            : "c"(&cur_thread->tcbArch.tcbContext.registers[RAX]),
            "D"(badge),
            "S"(msgInfo),



            [IF] "i"((1ul << (9)))
            : "memory"
        );
    } else {
        __asm__ volatile(

            "movq %0, %%rsp\n"
            "popq %%rax\n"
            "popq %%rbx\n"
            "popq %%rbp\n"
            "popq %%r12\n"
            "popq %%r13\n"
            "popq %%r14\n"
            "popq %%rdx\n"
            "popq %%r10\n"
            "popq %%r8\n"
            "popq %%r9\n"
            "popq %%r15\n"

            "popq %%r11\n"






            "popq %%rcx\n"

            "movq (x64KSCurrentUserCR3), %%rsp\n"
            "movq %%rsp, %%cr3\n"



            "xor %%rsp, %%rsp\n"


            "sysretq\n"
            :
            : "r"(&cur_thread->tcbArch.tcbContext.registers[RAX]),
            "D"(badge),
            "S"(msgInfo)



            : "memory"
        );
    }
    __builtin_unreachable();
}
# 10 "/workspace/seL4-c89/preconfigured/include/arch/x86/arch/fastpath/fastpath.h" 2


static inline int fastpath_reply_cap_check(cap_t cap)
{
    return cap_capType_equals(cap, cap_reply_cap);
}


void slowpath(syscall_t syscall)
__attribute__((__noreturn__));

void fastpath_call(word_t cptr, word_t r_msgInfo)
__attribute__((__noreturn__));




void fastpath_reply_recv(word_t cptr, word_t r_msgInfo)

__attribute__((__noreturn__));
# 11 "/workspace/seL4-c89/preconfigured/src/arch/x86/c_traps.c" 2




# 1 "/workspace/seL4-c89/preconfigured/libsel4/arch_include/x86/sel4/arch/vmenter.h" 1






       
# 16 "/workspace/seL4-c89/preconfigured/src/arch/x86/c_traps.c" 2




void __attribute__((externally_visible)) c_nested_interrupt(int irq)
{



    ;
    x86KSPendingInterrupt = irq;
}

void __attribute__((externally_visible)) __attribute__((__noreturn__)) c_handle_interrupt(int irq, int syscall)
{



    if (wrap_config_set(0) && wrap_config_set(0)) {
        x86_enable_ibrs();
    }



    do {} while (0)
                                                          ;

    c_entry_hook();

    if (irq == int_page_fault) {

        vm_fault_type_t type = (ksCurThread->tcbArch.tcbContext.registers[Error] >> 4u) & 1u;




        handleVMFaultEvent(type);
# 62 "/workspace/seL4-c89/preconfigured/src/arch/x86/c_traps.c"
    } else if (irq < int_irq_min) {




        handleUserLevelFault(irq, ksCurThread->tcbArch.tcbContext.registers[Error]);
    } else if (__builtin_expect(!!(irq < int_trap_min), 1)) {
        x86KScurInterrupt = irq;




        handleInterruptEntry();

        receivePendingIRQ();
    } else if (irq == int_spurious) {

    } else {



        int sys_num;
        ksCurThread->tcbArch.tcbContext.registers[FaultIP] -= 2;

        sys_num = (irq << 24) | (syscall & 0x00ffffff);




        handleUnknownSyscall(sys_num);
    }
    restore_user_context();
    __builtin_unreachable();
}

void __attribute__((__noreturn__)) slowpath(syscall_t syscall)
{
# 118 "/workspace/seL4-c89/preconfigured/src/arch/x86/c_traps.c"
    if (__builtin_expect(!!(syscall < (-8) || syscall > (-1)), 0)) {







        handleUnknownSyscall(syscall);
    } else {



        handleSyscall(syscall);
    }

    restore_user_context();
    __builtin_unreachable();
}




void __attribute__((externally_visible)) __attribute__((__noreturn__)) c_handle_syscall(word_t cptr, word_t msgInfo, syscall_t syscall)

{


    if (wrap_config_set(0)) {
        x86_enable_ibrs();
    }

    do {} while (0);

    c_entry_hook();






    if (wrap_config_set(0)) {

        ksCurThread->tcbArch.tcbContext.registers[NextIP] += 2;
    } else {

        setRegister(ksCurThread, FaultIP, getRegister(ksCurThread, NextIP) - 2);
    }


    if (syscall == (syscall_t)SysCall) {
        fastpath_call(cptr, msgInfo);
        __builtin_unreachable();
    } else if (syscall == (syscall_t)SysReplyRecv) {



        fastpath_reply_recv(cptr, msgInfo);

        __builtin_unreachable();
    }

    slowpath(syscall);
    __builtin_unreachable();
}
# 1 "/workspace/seL4-c89/preconfigured/src/arch/x86/idle.c"







# 1 "/workspace/seL4-c89/preconfigured/include/api/debug.h" 1
# 9 "/workspace/seL4-c89/preconfigured/src/arch/x86/idle.c" 2







__attribute__((naked)) __attribute__((__noreturn__)) void idle_thread(void)
{



    __asm__ volatile(
        "1: hlt\n"
        "jmp 1b"
    );
}


void __attribute__((externally_visible)) halt(void)
{

    __asm__ volatile("cli");







    idle_thread();
    __builtin_unreachable();
}
# 1 "/workspace/seL4-c89/preconfigured/src/arch/x86/kernel/apic.c"
# 13 "/workspace/seL4-c89/preconfigured/src/arch/x86/kernel/apic.c"
# 1 "/workspace/seL4-c89/preconfigured/include/plat/pc99/plat/machine/pit.h" 1






       




void pit_init(void);
void pit_wait_wraparound(void);
# 14 "/workspace/seL4-c89/preconfigured/src/arch/x86/kernel/apic.c" 2





static __attribute__((__section__(".boot.text"))) uint32_t apic_measure_freq(void)
{
    pit_init();

    pit_wait_wraparound();


    apic_write_reg(APIC_TIMER_DIVIDE, 0xb);
    apic_write_reg(APIC_TIMER_COUNT, 0xffffffff);


    pit_wait_wraparound();


    return (0xffffffff - apic_read_reg(APIC_TIMER_CURRENT)) / 50;
}

__attribute__((__section__(".boot.text"))) paddr_t apic_get_base_paddr(void)
{
    apic_base_msr_t apic_base_msr;

    apic_base_msr.words[0] = x86_rdmsr_low(0x01B);
    return apic_base_msr_get_base_addr(apic_base_msr);
}

__attribute__((__section__(".boot.text"))) bool_t apic_init(bool_t mask_legacy_irqs)
{
    apic_version_t apic_version;
    uint32_t num_lvt_entries;
    uint32_t apic_khz;

    if (!apic_enable()) {
        return false;
    }
# 69 "/workspace/seL4-c89/preconfigured/src/arch/x86/kernel/apic.c"
    apic_khz = apic_measure_freq();

    apic_version.words[0] = apic_read_reg(APIC_VERSION);


    if (apic_version_get_version(apic_version) >> 4 != 1) {
        ((void)(0));
        return false;
    }
# 87 "/workspace/seL4-c89/preconfigured/src/arch/x86/kernel/apic.c"
    num_lvt_entries = apic_version_get_max_lvt_entry(apic_version) + 1;
    if (num_lvt_entries < 3) {
        ((void)(0));
        ((void)(0));
        return false;
    }



    apic_write_reg(APIC_TIMER_DIVIDE, 0xb);
    apic_write_reg(APIC_TIMER_COUNT, apic_khz * 2);



    apic_write_reg(
        APIC_SVR,
        apic_svr_new(
            0,
            1,
            int_spurious
        ).words[0]
    );


    apic_write_reg(
        APIC_LVT_LINT0,
        apic_lvt_new(
            0,
            mask_legacy_irqs,
            0,
            0,
            0,
            0,
            7,
            0
        ).words[0]
    );


    apic_write_reg(
        APIC_LVT_LINT1,
        apic_lvt_new(
            0,
            1,
            0,
            0,
            0,
            0,
            0,
            0
        ).words[0]
    );






    uint32_t timer_mode = 1;

    apic_write_reg(
        APIC_LVT_TIMER,
        apic_lvt_new(
            timer_mode,
            0,
            0,
            0,
            0,
            0,
            0,
            int_timer
        ).words[0]
    );
# 171 "/workspace/seL4-c89/preconfigured/src/arch/x86/kernel/apic.c"
    return true;
}

void apic_ack_active_interrupt(void)
{
    apic_write_reg(APIC_EOI, 0);
}
# 1 "/workspace/seL4-c89/preconfigured/src/arch/x86/kernel/boot.c"
# 19 "/workspace/seL4-c89/preconfigured/src/arch/x86/kernel/boot.c"
# 1 "/workspace/seL4-c89/preconfigured/include/arch/x86/arch/machine/timer.h" 1






       
# 75 "/workspace/seL4-c89/preconfigured/include/arch/x86/arch/machine/timer.h"
static inline void resetTimer(void)
{

}



__attribute__((__section__(".boot.text"))) uint32_t tsc_init(void);
# 20 "/workspace/seL4-c89/preconfigured/src/arch/x86/kernel/boot.c" 2







__attribute__((__section__(".boot.bss"))) static region_t reserved[1];



__attribute__((__section__(".boot.text"))) static void init_irqs(cap_t root_cnode_cap)
{
    irq_t i;

    for (i = 0; i <= maxIRQ; i++) {
        if (i == irq_timer) {
            setIRQState(IRQTimer, i);
# 46 "/workspace/seL4-c89/preconfigured/src/arch/x86/kernel/boot.c"
        } else if (i == 2 && wrap_config_set(0)) {

            setIRQState(IRQReserved, i);
        } else if (i >= irq_isa_min && i <= irq_isa_max) {
            if (wrap_config_set(0)) {
                setIRQState(IRQInactive, i);
            } else {
                setIRQState(IRQReserved, i);
            }
        } else if (i >= irq_user_min && i <= irq_user_max) {
            if (wrap_config_set(1)) {
                setIRQState(IRQInactive, i);
            } else {
                setIRQState(IRQReserved, i);
            }
        } else {
            setIRQState(IRQReserved, i);
        }
    }
    Arch_irqStateInit();

    write_slot((((slot_ptr_t)(((pptr_t)cap_get_capPtr(root_cnode_cap)))) + (seL4_CapIRQControl)), cap_irq_control_cap_new());
}

__attribute__((__section__(".boot.text"))) static bool_t arch_init_freemem(p_region_t ui_p_reg,
                                          v_region_t it_v_reg,
                                          mem_p_regs_t *mem_p_regs,
                                          word_t extra_bi_size_bits)
{



    ui_p_reg.start = 0x00100000ul;
    reserved[0] = paddr_to_pptr_reg(ui_p_reg);
    return init_freemem(mem_p_regs->count, mem_p_regs->list, 1,
                        reserved, it_v_reg, extra_bi_size_bits);
}



__attribute__((__section__(".boot.text"))) bool_t init_sys_state(
    cpu_id_t cpu_id,
    mem_p_regs_t *mem_p_regs,
    ui_info_t ui_info,

    uint32_t num_drhu,
    paddr_t *drhu_list,
    acpi_rmrr_list_t *rmrr_list,
    acpi_rsdp_t *acpi_rsdp,
    seL4_X86_BootInfo_VBE *vbe,
    seL4_X86_BootInfo_mmap_t *mb_mmap,
    seL4_X86_BootInfo_fb_t *fb_info
)
{
    cap_t root_cnode_cap;
    vptr_t extra_bi_frame_vptr;
    vptr_t bi_frame_vptr;
    vptr_t ipcbuf_vptr;
    cap_t it_vspace_cap;
    cap_t it_ap_cap;
    cap_t ipcbuf_cap;
    word_t extra_bi_size = sizeof(seL4_BootInfoHeader);
    pptr_t extra_bi_offset = 0;
    uint32_t tsc_freq;
    create_frames_of_region_ret_t create_frames_ret;
    create_frames_of_region_ret_t extra_bi_ret;


    region_t ui_reg = paddr_to_pptr_reg(ui_info.p_reg);


    v_region_t ui_v_reg;
    v_region_t it_v_reg;
    ui_v_reg.start = ui_info.p_reg.start - ui_info.pv_offset;
    ui_v_reg.end = ui_info.p_reg.end - ui_info.pv_offset;

    ipcbuf_vptr = ui_v_reg.end;
    bi_frame_vptr = ipcbuf_vptr + (1ul << (12));
    extra_bi_frame_vptr = bi_frame_vptr + (1ul << (12));

    if (vbe->vbeMode != -1) {
        extra_bi_size += sizeof(seL4_X86_BootInfo_VBE);
    }
    if (acpi_rsdp) {
        extra_bi_size += sizeof(seL4_BootInfoHeader) + sizeof(*acpi_rsdp);
    }
    if (fb_info && fb_info->addr) {
        extra_bi_size += sizeof(seL4_BootInfoHeader) + sizeof(*fb_info);
    }

    word_t mb_mmap_size = sizeof(seL4_X86_BootInfo_mmap_t);
    extra_bi_size += mb_mmap_size;


    extra_bi_size += sizeof(seL4_BootInfoHeader) + 4;
    word_t extra_bi_size_bits = calculate_extra_bi_size_bits(extra_bi_size);


    it_v_reg.start = ui_v_reg.start;
    it_v_reg.end = (((((extra_bi_frame_vptr + (extra_bi_size_bits > 0 ? (1ul << (extra_bi_size_bits)) : 0)) - 1ul) >> (12)) + 1ul) << (12));







    if (!arch_init_freemem(ui_info.p_reg, it_v_reg, mem_p_regs, extra_bi_size_bits)) {
        ((void)(0));
        return false;
    }


    root_cnode_cap = create_root_cnode();


    write_slot(
        (((slot_ptr_t)(((pptr_t)cap_get_capPtr(root_cnode_cap)))) + (seL4_CapIOPortControl)),
        cap_io_port_control_cap_new()
    );


    create_domain_cap(root_cnode_cap);


    init_irqs(root_cnode_cap);

    tsc_freq = tsc_init();


    populate_bi_frame(0, ksNumCPUs, ipcbuf_vptr, extra_bi_size);
    region_t extra_bi_region = {
        .start = rootserver.extra_bi,
        .end = rootserver.extra_bi + (extra_bi_size_bits > 0 ? (1ul << (extra_bi_size_bits)) : 0)
    };


    if (vbe->vbeMode != -1) {
        vbe->header.id = SEL4_BOOTINFO_HEADER_X86_VBE;
        vbe->header.len = sizeof(seL4_X86_BootInfo_VBE);
        memcpy((void *)(rootserver.extra_bi + extra_bi_offset), vbe, sizeof(seL4_X86_BootInfo_VBE));
        extra_bi_offset += sizeof(seL4_X86_BootInfo_VBE);
    }


    if (acpi_rsdp) {
        seL4_BootInfoHeader header;
        header.id = SEL4_BOOTINFO_HEADER_X86_ACPI_RSDP;
        header.len = sizeof(header) + sizeof(*acpi_rsdp);
        *(seL4_BootInfoHeader *)(rootserver.extra_bi + extra_bi_offset) = header;
        extra_bi_offset += sizeof(header);
        memcpy((void *)(rootserver.extra_bi + extra_bi_offset), acpi_rsdp, sizeof(*acpi_rsdp));
        extra_bi_offset += sizeof(*acpi_rsdp);
    }


    if (fb_info && fb_info->addr) {
        seL4_BootInfoHeader header;
        header.id = SEL4_BOOTINFO_HEADER_X86_FRAMEBUFFER;
        header.len = sizeof(header) + sizeof(*fb_info);
        *(seL4_BootInfoHeader *)(rootserver.extra_bi + extra_bi_offset) = header;
        extra_bi_offset += sizeof(header);
        memcpy((void *)(rootserver.extra_bi + extra_bi_offset), fb_info, sizeof(*fb_info));
        extra_bi_offset += sizeof(*fb_info);
    }


    mb_mmap->header.id = SEL4_BOOTINFO_HEADER_X86_MBMMAP;
    mb_mmap->header.len = mb_mmap_size;
    memcpy((void *)(rootserver.extra_bi + extra_bi_offset), mb_mmap, mb_mmap_size);
    extra_bi_offset += mb_mmap_size;


    {
        seL4_BootInfoHeader header;
        header.id = SEL4_BOOTINFO_HEADER_X86_TSC_FREQ;
        header.len = sizeof(header) + 4;
        *(seL4_BootInfoHeader *)(extra_bi_region.start + extra_bi_offset) = header;
        extra_bi_offset += sizeof(header);
        *(uint32_t *)(extra_bi_region.start + extra_bi_offset) = tsc_freq;
        extra_bi_offset += 4;
    }


    seL4_BootInfoHeader padding_header;
    padding_header.id = SEL4_BOOTINFO_HEADER_PADDING;
    padding_header.len = (extra_bi_region.end - extra_bi_region.start) - extra_bi_offset;
    *(seL4_BootInfoHeader *)(extra_bi_region.start + extra_bi_offset) = padding_header;
# 242 "/workspace/seL4-c89/preconfigured/src/arch/x86/kernel/boot.c"
    it_vspace_cap = create_it_address_space(root_cnode_cap, it_v_reg);
    if (cap_get_capType(it_vspace_cap) == cap_null_cap) {
        return false;
    }


    create_bi_frame_cap(
        root_cnode_cap,
        it_vspace_cap,
        bi_frame_vptr
    );


    extra_bi_ret =
        create_frames_of_region(
            root_cnode_cap,
            it_vspace_cap,
            extra_bi_region,
            true,
            addrFromPPtr((void *)(extra_bi_region.start - extra_bi_frame_vptr))
        );
    if (!extra_bi_ret.success) {
        return false;
    }
    ndks_boot.bi_frame->extraBIPages = extra_bi_ret.region;


    ipcbuf_cap = create_ipcbuf_frame_cap(root_cnode_cap, it_vspace_cap, ipcbuf_vptr);
    if (cap_get_capType(ipcbuf_cap) == cap_null_cap) {
        return false;
    }


    create_frames_ret =
        create_frames_of_region(
            root_cnode_cap,
            it_vspace_cap,
            ui_reg,
            true,
            ui_info.pv_offset
        );
    if (!create_frames_ret.success) {
        return false;
    }
    ndks_boot.bi_frame->userImageFrames = create_frames_ret.region;


    it_ap_cap = create_it_asid_pool(root_cnode_cap);
    if (cap_get_capType(it_ap_cap) == cap_null_cap) {
        return false;
    }
    write_it_asid_pool(it_ap_cap, it_vspace_cap);






    create_idle_thread();


    saveFpuState(ksIdleThread);
    x86KSnullFpuState = ksIdleThread->tcbArch.tcbContext.fpuState;

    loadFpuState(ksIdleThread);


    tcb_t *initial = create_initial_thread(root_cnode_cap,
                                           it_vspace_cap,
                                           ui_info.v_entry,
                                           bi_frame_vptr,
                                           ipcbuf_vptr,
                                           ipcbuf_cap);
    if (initial == ((void *)0)) {
        return false;
    }
    init_core_state(initial);
# 332 "/workspace/seL4-c89/preconfigured/src/arch/x86/kernel/boot.c"
    ndks_boot.bi_frame->numIOPTLevels = -1;



    if (!create_untypeds(root_cnode_cap)) {
        return false;
    }


    bi_finalise();

    return true;
}



__attribute__((__section__(".boot.text"))) bool_t init_cpu(
    bool_t mask_legacy_irqs
)
{

    if (!init_vm_state()) {
        return false;
    }


    init_dtrs();

    if (wrap_config_set(0)) {

        init_sysenter_msrs();
    } else if (wrap_config_set(1)) {
        init_syscall_msrs();
    } else {
        return false;
    }


    if (!init_pat_msr()) {
        return false;
    }



    write_cr0(read_cr0() | (1ul << (16)));


    cpuid_007h_ebx_t ebx_007;
    ebx_007.words[0] = x86_cpuid_ebx(0x7, 0);
    if (cpuid_007h_ebx_get_smap(ebx_007)) {


        if (!wrap_config_set(0) && !wrap_config_set(0)) {
            write_cr4(read_cr4() | (1ul << (21)));
        }
    }
    if (cpuid_007h_ebx_get_smep(ebx_007)) {


        if (!wrap_config_set(0)) {
            write_cr4(read_cr4() | (1ul << (20)));
        }
    }

    if (!init_ibrs()) {
        return false;
    }







    if (!Arch_initFpu()) {
        return false;
    }


    if (!apic_init(mask_legacy_irqs)) {
        return false;
    }







    if (wrap_config_set(0)) {
        enablePMCUser();
    }
# 432 "/workspace/seL4-c89/preconfigured/src/arch/x86/kernel/boot.c"
    return true;
}
# 1 "/workspace/seL4-c89/preconfigured/src/arch/x86/kernel/boot_sys.c"
# 13 "/workspace/seL4-c89/preconfigured/src/arch/x86/kernel/boot_sys.c"
# 1 "/workspace/seL4-c89/preconfigured/include/arch/x86/arch/kernel/cmdline.h" 1





       


typedef struct cmdline_opt {






    bool_t disable_iommu;
} cmdline_opt_t;

void cmdline_parse(const char *cmdline, cmdline_opt_t *cmdline_opt);
# 14 "/workspace/seL4-c89/preconfigured/src/arch/x86/kernel/boot_sys.c" 2


# 1 "/workspace/seL4-c89/preconfigured/include/arch/x86/arch/kernel/smp_sys.h" 1






       
# 17 "/workspace/seL4-c89/preconfigured/src/arch/x86/kernel/boot_sys.c" 2
# 31 "/workspace/seL4-c89/preconfigured/src/arch/x86/kernel/boot_sys.c"
extern char boot_cpu_start[1];
extern char boot_cpu_end[1];


extern char boot_stack_bottom[1];
extern char boot_stack_top[1];


extern char ki_skim_start[1];
extern char ki_skim_end[1];
# 51 "/workspace/seL4-c89/preconfigured/src/arch/x86/kernel/boot_sys.c"
__attribute__((__section__(".boot.bss")))
boot_state_t boot_state;



__attribute__((__section__(".boot.bss")))
cmdline_opt_t cmdline_opt;



__attribute__((__section__(".boot.text"))) static paddr_t find_load_paddr(paddr_t min_paddr, word_t image_size)
{
    int i;

    for (i = 0; i < boot_state.mem_p_regs.count; i++) {
        paddr_t start = (((min_paddr)>(boot_state.mem_p_regs.list[i].start))?(min_paddr):(boot_state.mem_p_regs.list[i].start));
        paddr_t end = boot_state.mem_p_regs.list[i].end;
        word_t region_size = end - start;

        if (region_size >= image_size) {
            return start;
        }
    }

    return 0;
}

__attribute__((__section__(".boot.text"))) static paddr_t load_boot_module(word_t boot_module_start, paddr_t load_paddr)
{
    v_region_t v_reg;
    word_t entry;
    Elf_Header_t *elf_file = (Elf_Header_t *)boot_module_start;

    if (!elf_checkFile(elf_file)) {
        ((void)(0));
        return 0;
    }

    v_reg = elf_getMemoryBounds(elf_file);
    entry = elf_file->e_entry;

    if (v_reg.end == 0) {
        ((void)(0));
        return 0;
    }
    v_reg.end = (((((v_reg.end) - 1ul) >> (12)) + 1ul) << (12));

    ((void)(0))




           ;

    if (!(!((v_reg.start) & ((1ul << (12)) - 1ul)))) {
        ((void)(0));
        return 0;
    }
    if (v_reg.end + 2 * (1ul << (12)) > 0x7FFFFFFFFFFFul) {

        ((void)(0));
        return 0;
    }
    if ((entry < v_reg.start) || (entry >= v_reg.end)) {
        ((void)(0));
        return 0;
    }

    load_paddr = find_load_paddr(load_paddr, v_reg.end - v_reg.start);
    ;


    boot_state.ui_info.pv_offset = load_paddr - v_reg.start;
    boot_state.ui_info.p_reg.start = load_paddr;
    load_paddr += v_reg.end - v_reg.start;
    boot_state.ui_info.p_reg.end = load_paddr;
    boot_state.ui_info.v_entry = entry;

    ((void)(0))


           ;


    memzero(
        (void *)boot_state.ui_info.p_reg.start,
        boot_state.ui_info.p_reg.end - boot_state.ui_info.p_reg.start
    );
    elf_load(elf_file, boot_state.ui_info.pv_offset);

    return load_paddr;
}

static __attribute__((__section__(".boot.text"))) bool_t try_boot_sys_node(cpu_id_t cpu_id)
{
    if (!map_kernel_window(
            boot_state.num_ioapic,
            boot_state.ioapic_paddr,
            boot_state.num_drhu,
            boot_state.drhu_list
        )) {
        return false;
    }
    setCurrentVSpaceRoot(addrFromKPPtr(x64KSKernelPML4), 0);


    __asm__ volatile("" ::: "memory");


    if (!map_skim_window((vptr_t)ki_skim_start, (vptr_t)ki_skim_end)) {
        return false;
    }



    if (!init_cpu(wrap_config_set(1) ? 1 : 0)) {
        return false;
    }


    if (!init_sys_state(
            cpu_id,
            &boot_state.mem_p_regs,
            boot_state.ui_info,

            boot_state.num_drhu,
            boot_state.drhu_list,
            &boot_state.rmrr_list,
            &boot_state.acpi_rsdp,
            &boot_state.vbe_info,
            &boot_state.mb_mmap_info,
            &boot_state.fb_info
        )) {
        return false;
    }

    return true;
}

static __attribute__((__section__(".boot.text"))) bool_t add_mem_p_regs(p_region_t reg)
{
    if (reg.start == reg.end) {


        return true;
    }
    if (reg.end > (0xffffffff80000000ul - (0xffffff8000000000ul - 0x00000000ul)) && reg.start > (0xffffffff80000000ul - (0xffffff8000000000ul - 0x00000000ul))) {


        return true;
    }
    if (boot_state.mem_p_regs.count == 16) {
        ((void)(0));
        return false;
    }
    if (reg.end > (0xffffffff80000000ul - (0xffffff8000000000ul - 0x00000000ul))) {
        ;

        reg.end = (0xffffffff80000000ul - (0xffffff8000000000ul - 0x00000000ul));
    }
    ((void)(0));
    boot_state.mem_p_regs.list[boot_state.mem_p_regs.count] = reg;
    boot_state.mem_p_regs.count++;
    return true;
}





static __attribute__((__section__(".boot.text"))) bool_t parse_mem_map(uint32_t mmap_length, uint32_t mmap_addr)
{
    multiboot_mmap_t *mmap = (multiboot_mmap_t *)((word_t)mmap_addr);
    ((void)(0));

    while ((word_t)mmap < (word_t)(mmap_addr + mmap_length)) {
        uint64_t mem_start = mmap->base_addr;
        uint64_t mem_length = mmap->length;
        uint32_t type = mmap->type;
        if (mem_start != (uint64_t)(word_t)mem_start) {
            ((void)(0));
        } else {
            ((void)(0));
            if (type == 1 && mem_start >= 0x100000 && mem_length >= (1ul << (12))) {

                if (!add_mem_p_regs((p_region_t) {
                (((((mem_start) - 1ul) >> (12)) + 1ul) << (12)), (((mem_start + mem_length) >> (12)) << (12)),
                })) {
                    return false;
                }
            }
        }
        mmap++;
    }
    return true;
}

static __attribute__((__section__(".boot.text"))) bool_t is_compiled_for_microarchitecture(void)
{
    word_t microarch_generation = 0;
    x86_cpu_identity_t *model_info = x86_cpuid_get_model_info();

    if (wrap_config_set(0)) {
        microarch_generation = 7;
    } else if (wrap_config_set(0)) {
        microarch_generation = 6;
    } else if (wrap_config_set(0)) {
        microarch_generation = 5;
    } else if (wrap_config_set(0)) {
        microarch_generation = 4;
    } else if (wrap_config_set(0)) {
        microarch_generation = 3;
    } else if (wrap_config_set(0)) {
        microarch_generation = 2;
    } else if (wrap_config_set(1)) {
        microarch_generation = 1;
    }

    switch (model_info->model) {
    case 0x4E:
    case 0x5E:
    case 0x55:
        if (microarch_generation > 7) {
            return false;
        }
        break;

    case 0x4D:
    case 0x56:
    case 0x4F:
    case 0x47:
    case 0x3D:
        if (microarch_generation > 6) {
            return false;
        }
        break;

    case 0x3C:
    case 0x3F:
    case 0x45:
    case 0x46:
        if (microarch_generation > 5) {
            return false;
        }
        break;

    case 0x9A:
    case 0x3E:
    case 0x3A:
        if (microarch_generation > 4) {
            return false;
        }
        break;

    case 0x2A:
    case 0x2D:
        if (microarch_generation > 3) {
            return false;
        }
        break;

    case 0x25:
    case 0x2C:
    case 0x2F:
        if (microarch_generation > 2) {
            return false;
        }
        break;

    case 0x1E:
    case 0x1A:
    case 0x2E:
        if (microarch_generation > 1) {
            return false;
        }
        break;

    default:
        if (!wrap_config_set(0)) {
            return false;
        }
    }

    return true;
}

static __attribute__((__section__(".boot.text"))) bool_t try_boot_sys(void)
{
    paddr_t mods_end_paddr = boot_state.mods_end_paddr;
    p_region_t ui_p_regs;
    paddr_t load_paddr;

    boot_state.ki_p_reg = get_p_reg_kernel_img();

    if (!x86_cpuid_initialize()) {
        ((void)(0))



                                                       ;
    }

    if (!is_compiled_for_microarchitecture()) {
        ((void)(0));
    }

    cpuid_007h_edx_t edx;
    edx.words[0] = x86_cpuid_edx(0x7, 0);


    if (cpuid_007h_edx_get_ia32_arch_cap_msr(edx)) {
        ia32_arch_capabilities_msr_t cap_msr;
        cap_msr.words[0] = x86_rdmsr(0x10A);
        if (ia32_arch_capabilities_msr_get_rdcl_no(cap_msr) && wrap_config_set(1)) {
            ((void)(0))
                                                                                                                 ;
        } else if (!ia32_arch_capabilities_msr_get_rdcl_no(cap_msr) && !wrap_config_set(1)) {
            ((void)(0))
                                                                                                 ;
            return false;
        }
    } else {

        if (wrap_config_set(1) && x86_cpuid_get_identity()->vendor == X86_VENDOR_AMD) {
            ((void)(0))

                                          ;
        }
        if (!wrap_config_set(1) && x86_cpuid_get_identity()->vendor == X86_VENDOR_INTEL) {
            ((void)(0))
                                                                                       ;
        }
    }
# 394 "/workspace/seL4-c89/preconfigured/src/arch/x86/kernel/boot_sys.c"
    ((void)(0))




           ;


    pic_remap_irqs(0x20);
    if (wrap_config_set(1)) {


        pic_disable();
    }


    if (!acpi_validate_rsdp(&boot_state.acpi_rsdp)) {
        return false;
    }


    if (!acpi_fadt_scan(&boot_state.acpi_rsdp)) {
        return false;
    }

    if (!wrap_config_set(0) || cmdline_opt.disable_iommu) {
        boot_state.num_drhu = 0;
    } else {

        acpi_dmar_scan(
            &boot_state.acpi_rsdp,
            boot_state.drhu_list,
            &boot_state.num_drhu,
            ((-((0xffffffffc0000000ul + (1ul << (12))) + (1ul << (12)) * 1)) >> 12),
            &boot_state.rmrr_list
        );
    }


    boot_state.num_cpus = acpi_madt_scan(&boot_state.acpi_rsdp, boot_state.cpus, &boot_state.num_ioapic,
                                         boot_state.ioapic_paddr);
    if (boot_state.num_cpus == 0) {
        ((void)(0));
        return false;
    }

    if (wrap_config_set(1)) {
        if (boot_state.num_ioapic == 0) {
            ((void)(0));
            return false;
        }
    } else {
        if (boot_state.num_ioapic > 0) {
            ((void)(0));
        }
    }

    mods_end_paddr = (((((mods_end_paddr) - 1ul) >> (12)) + 1ul) << (12));
    ;

    ((void)(0));
    load_paddr = mods_end_paddr;

    load_paddr = load_boot_module(boot_state.boot_module_start, load_paddr);
    if (!load_paddr) {
        return false;
    }


    ui_p_regs.start = boot_state.ki_p_reg.end;
    ui_p_regs.end = ui_p_regs.start + load_paddr - mods_end_paddr;

    ((void)(0))




     ;
    memcpy((void *)ui_p_regs.start, (void *)mods_end_paddr, ui_p_regs.end - ui_p_regs.start);


    boot_state.ui_info.p_reg.start -= mods_end_paddr - ui_p_regs.start;
    boot_state.ui_info.p_reg.end -= mods_end_paddr - ui_p_regs.start;
    boot_state.ui_info.pv_offset -= mods_end_paddr - ui_p_regs.start;



    if (!platAddDevices()) {
        return false;
    }


    ksNumCPUs = boot_state.num_cpus;

    ((void)(0));
    if (!try_boot_sys_node(boot_state.cpus[0])) {
        return false;
    }

    if (wrap_config_set(1)) {
        ioapic_init(1, boot_state.cpus, boot_state.num_ioapic);
    }


    ;
    ;


    do {} while (0);

    ((void)(0));

    return true;
}

static __attribute__((__section__(".boot.text"))) bool_t try_boot_sys_mbi1(
    multiboot_info_t *mbi
)
{
    word_t i;
    multiboot_module_t *modules = (multiboot_module_t *)(word_t)mbi->part1.mod_list;

    cmdline_parse((const char *)(word_t)mbi->part1.cmdline, &cmdline_opt);

    if ((mbi->part1.flags & (1ul << (0))) == 0) {
        ((void)(0));
        return false;
    }

    if (!(mbi->part1.flags & (1ul << (3)))) {
        ((void)(0));
        return false;
    }

    ((void)(0));

    if (mbi->part1.mod_count < 1) {
        ((void)(0));
        return false;
    }

    for (i = 0; i < mbi->part1.mod_count; i++) {
        ((void)(0))






         ;
        if ((sword_t)(modules[i].end - modules[i].start) <= 0) {
            ((void)(0));
            return false;
        }
        if (boot_state.mods_end_paddr < modules[i].end) {
            boot_state.mods_end_paddr = modules[i].end;
        }
    }






    boot_state.mem_p_regs.count = 0;
    if (mbi->part1.flags & (1ul << (6))) {
        if (!parse_mem_map(mbi->part2.mmap_length, mbi->part2.mmap_addr)) {
            return false;
        }
        uint32_t multiboot_mmap_length = mbi->part2.mmap_length;
        if (multiboot_mmap_length > (50 * sizeof(seL4_X86_mb_mmap_t))) {
            ((void)(0))


                                                                                                       ;
            multiboot_mmap_length = 50 * sizeof(seL4_X86_mb_mmap_t);
        }
        memcpy(&boot_state.mb_mmap_info.mmap, (void *)(word_t)mbi->part2.mmap_addr, multiboot_mmap_length);
        boot_state.mb_mmap_info.mmap_length = multiboot_mmap_length;
    } else {

        p_region_t avail;
        avail.start = 0x100000;
        avail.end = (((avail.start + (mbi->part1.mem_upper << 10)) >> (12)) << (12));
        if (!add_mem_p_regs(avail)) {
            return false;
        }
    }


    if ((mbi->part1.flags & (1ul << (11))) == 0) {
        boot_state.vbe_info.vbeMode = -1;
        ((void)(0));
    } else {
        boot_state.vbe_info.vbeInfoBlock = *(seL4_VBEInfoBlock_t *)(seL4_Word)mbi->part2.vbe_control_info;
        boot_state.vbe_info.vbeModeInfoBlock = *(seL4_VBEModeInfoBlock_t *)(seL4_Word)mbi->part2.vbe_mode_info;
        boot_state.vbe_info.vbeMode = mbi->part2.vbe_mode;
        ((void)(0));
        boot_state.vbe_info.vbeInterfaceSeg = mbi->part2.vbe_interface_seg;
        boot_state.vbe_info.vbeInterfaceOff = mbi->part2.vbe_interface_off;
        boot_state.vbe_info.vbeInterfaceLen = mbi->part2.vbe_interface_len;
    }

    boot_state.mem_lower = mbi->part1.mem_lower;
    boot_state.boot_module_start = modules->start;


    if (!acpi_init(&boot_state.acpi_rsdp)) {
        return false;
    }

    return true;
}

static __attribute__((__section__(".boot.text"))) bool_t try_boot_sys_mbi2(
    multiboot2_header_t *mbi2
)
{
    int mod_count = 0;
    multiboot2_tag_t const *tag = (multiboot2_tag_t *)(mbi2 + 1);
    multiboot2_tag_t const *tag_e = (multiboot2_tag_t *)((word_t)mbi2 + mbi2->total_size);






    boot_state.mem_p_regs.count = 0;
    boot_state.mb_mmap_info.mmap_length = 0;
    boot_state.vbe_info.vbeMode = -1;

    while (tag < tag_e && tag->type != MULTIBOOT2_TAG_END) {
        word_t const behind_tag = (word_t)tag + sizeof(*tag);

        if (tag->type == MULTIBOOT2_TAG_CMDLINE) {
            char const *const cmdline = (char const * const)(behind_tag);
            cmdline_parse(cmdline, &cmdline_opt);
        } else if (tag->type == MULTIBOOT2_TAG_ACPI_1) {
            if (ACPI_V1_SIZE == tag->size - sizeof(*tag)) {
                memcpy(&boot_state.acpi_rsdp, (void *)behind_tag, tag->size - sizeof(*tag));
            }
        } else if (tag->type == MULTIBOOT2_TAG_ACPI_2) {
            if (sizeof(boot_state.acpi_rsdp) == tag->size - sizeof(*tag)) {
                memcpy(&boot_state.acpi_rsdp, (void *)behind_tag, sizeof(boot_state.acpi_rsdp));
            }
        } else if (tag->type == MULTIBOOT2_TAG_MODULE) {
            multiboot2_module_t const *module = (multiboot2_module_t const *)behind_tag;
            ((void)(0))






             ;

            if (mod_count == 0) {
                boot_state.boot_module_start = module->start;
            }

            mod_count ++;
            if ((sword_t)(module->end - module->start) <= 0) {
                ((void)(0));
                return false;
            }
            if (boot_state.mods_end_paddr < module->end) {
                boot_state.mods_end_paddr = module->end;
            }
        } else if (tag->type == MULTIBOOT2_TAG_MEMORY) {
            multiboot2_memory_t const *s = (multiboot2_memory_t *)(behind_tag + 8);
            multiboot2_memory_t const *e = (multiboot2_memory_t *)((word_t)tag + tag->size);

            for (multiboot2_memory_t const *m = s; m < e; m++) {
                if (!m->addr) {
                    boot_state.mem_lower = m->size;
                }

                ((void)(0));
                if (m->addr != (uint64_t)(word_t)m->addr) {
                    ((void)(0));
                }

                if (m->type == 1 && m->addr >= 0x100000) {
                    if (!add_mem_p_regs((p_region_t) {
                    m->addr, m->addr + m->size
                }))
                    return false;
                }
            }
        } else if (tag->type == MULTIBOOT2_TAG_FB) {
            multiboot2_fb_t const *fb = (multiboot2_fb_t const *)behind_tag;
            ((void)(0))
                                                                                 ;
            boot_state.fb_info = *fb;
        }

        tag = (multiboot2_tag_t const *)((word_t)tag + (((((tag->size) - 1ul) >> (3)) + 1ul) << (3)));
    }

    ((void)(0));

    if (mod_count < 1) {
        ((void)(0));
        return false;
    }

    return true;
}

__attribute__((__section__(".boot.text"))) __attribute__((externally_visible)) void boot_sys(
    unsigned long multiboot_magic,
    void *mbi)
{
    bool_t result = false;

    if (multiboot_magic == 0x2BADB002) {
        result = try_boot_sys_mbi1(mbi);
    } else if (multiboot_magic == 0x36d76289) {
        result = try_boot_sys_mbi2(mbi);
    } else {
        ((void)(0));
    }

    if (result) {
        result = try_boot_sys();
    }

    if (!result) {
        halt();
    }

    x86KScurInterrupt = int_invalid;
    x86KSPendingInterrupt = int_invalid;






    schedule();
    activateThread();
}
# 1 "/workspace/seL4-c89/preconfigured/src/arch/x86/kernel/cmdline.c"
# 13 "/workspace/seL4-c89/preconfigured/src/arch/x86/kernel/cmdline.c"
# 1 "/workspace/seL4-c89/preconfigured/include/plat/pc99/plat/machine/io.h" 1






       






void out8(uint16_t port, uint8_t value);

void out16(uint16_t port, uint16_t value);

void out32(uint16_t port, uint32_t value);

uint8_t in8(uint16_t port);

uint16_t in16(uint16_t port);

uint32_t in32(uint16_t port);
# 14 "/workspace/seL4-c89/preconfigured/src/arch/x86/kernel/cmdline.c" 2





__attribute__((__section__(".boot.bss")))
char cmdline_val[1000];


const char cmdline_str_max_num_nodes[] = {'m', 'a', 'x', '_', 'n', 'u', 'm', '_', 'n', 'o', 'd', 'e', 's', 0};
const char cmdline_str_num_sh_frames[] = {'n', 'u', 'm', '_', 's', 'h', '_', 'f', 'r', 'a', 'm', 'e', 's', 0};
const char cmdline_str_disable_iommu[] = {'d', 'i', 's', 'a', 'b', 'l', 'e', '_', 'i', 'o', 'm', 'm', 'u', 0};

static int is_space(char c)
{
    return c <= ' ';
}

static int __attribute__((unused)) parse_opt(const char *cmdline, const char *opt, char *value, int bufsize)
{
    int len = -1;
    const char *optptr = ((void *)0);

    while (true) {
        for (; is_space(*cmdline) && (*cmdline != 0); cmdline++);
        if (*cmdline == 0) {
            break;
        }

        for (optptr = opt; *optptr && *cmdline && (*cmdline != '=') && !is_space(*cmdline)
             && (*optptr == *cmdline); optptr++, cmdline++);

        if (*optptr == '\0' && *cmdline == '=') {
            cmdline++;

            for (len = 0; !is_space(*cmdline) && (len < bufsize - 1); cmdline++, len++) {
                value[len] = *cmdline;
            }
            if (bufsize) {
                value[len] = '\0';
            }
        }
        for (; !is_space(*cmdline); cmdline++);
    }

    return len;
}

static int parse_bool(const char *cmdline, const char *opt)
{
    const char *optptr = ((void *)0);

    while (1) {
        for (; is_space(*cmdline) && (*cmdline != 0); cmdline++);
        if (*cmdline == 0) {
            return 0;
        }

        for (optptr = opt; *optptr && *cmdline && !is_space(*cmdline) && (*optptr == *cmdline); optptr++, cmdline++);

        if (*optptr == '\0' && is_space(*cmdline)) {
            return 1;
        } else {
            for (; !is_space(*cmdline); cmdline++);
        }
    }
}

static void __attribute__((unused)) parse_uint16_array(char *str, uint16_t *array, int array_size)
{
    char *last;
    int i = 0;
    int v;

    while (str && i < array_size) {
        for (last = str; *str && *str != ','; str++);
        if (*str == 0) {
            str = 0;
        } else {
            *str = 0;
            str++;
        }
        v = str_to_long(last);
        if (v == -1) {
            array[i] = 0;
        } else {
            array[i] = v;
        }
        i++;
    }
}

void cmdline_parse(const char *cmdline, cmdline_opt_t *cmdline_opt)
{
# 164 "/workspace/seL4-c89/preconfigured/src/arch/x86/kernel/cmdline.c"
    cmdline_opt->disable_iommu = parse_bool(cmdline, cmdline_str_disable_iommu);
    ((void)(0));
}
# 1 "/workspace/seL4-c89/preconfigured/src/arch/x86/kernel/ept.c"
# 1 "/workspace/seL4-c89/preconfigured/src/arch/x86/kernel/smp_sys.c"
# 1 "/workspace/seL4-c89/preconfigured/src/arch/x86/kernel/thread.c"
# 10 "/workspace/seL4-c89/preconfigured/src/arch/x86/kernel/thread.c"
void Arch_postModifyRegisters(tcb_t *tptr)
{
    Mode_postModifyRegisters(tptr);
}
# 1 "/workspace/seL4-c89/preconfigured/src/arch/x86/kernel/vspace.c"
# 18 "/workspace/seL4-c89/preconfigured/src/arch/x86/kernel/vspace.c"
static exception_t performPageGetAddress(void *vbase_ptr, bool_t call)
{

    paddr_t capFBasePtr;
    capFBasePtr = addrFromPPtr(vbase_ptr);

    tcb_t *thread;
    thread = ksCurThread;
    if (call) {
        word_t *ipcBuffer = lookupIPCBuffer(true, thread);
        setRegister(thread, badgeRegister, 0);
        unsigned int length = setMR(thread, ipcBuffer, 0, capFBasePtr);
        setRegister(thread, msgInfoRegister, wordFromMessageInfo(
                        seL4_MessageInfo_new(0, 0, 0, length)));
    }
    setThreadState(ksCurThread, ThreadState_Running);
    return EXCEPTION_NONE;
}

void deleteASIDPool(asid_t asid_base, asid_pool_t *pool)
{

    ;

    if (x86KSASIDTable[asid_base >> asidLowBits] == pool) {
        for (unsigned int offset = 0; offset < (1ul << (asidLowBits)); offset++) {
            asid_map_t asid_map = pool->array[offset];
            if (asid_map_get_type(asid_map) == asid_map_asid_map_vspace) {
                vspace_root_t *vspace = (vspace_root_t *)asid_map_asid_map_vspace_get_vspace_root(asid_map);
                hwASIDInvalidate(asid_base + offset, vspace);
            }
        }
        x86KSASIDTable[asid_base >> asidLowBits] = ((void *)0);
        setVMRoot(ksCurThread);
    }
}

exception_t performASIDControlInvocation(void *frame, cte_t *slot, cte_t *parent, asid_t asid_base)
{


    cap_untyped_cap_ptr_set_capFreeIndex(&(parent->cap),
                                         ((1ul << ((cap_untyped_cap_get_capBlockSize(parent->cap)) - 4))));

    memzero(frame, (1ul << (pageBitsForSize(X86_SmallPage))));


    cteInsert(
        cap_asid_pool_cap_new(
            asid_base,
            ((word_t)(frame))
        ),
        parent,
        slot
    );

    ;
    x86KSASIDTable[asid_base >> asidLowBits] = (asid_pool_t *)frame;

    return EXCEPTION_NONE;
}

void deleteASID(asid_t asid, vspace_root_t *vspace)
{
    asid_pool_t *poolPtr;

    poolPtr = x86KSASIDTable[asid >> asidLowBits];
    if (poolPtr != ((void *)0)) {
        asid_map_t asid_map = poolPtr->array[asid & ((1ul << (asidLowBits)) - 1ul)];
        if (asid_map_get_type(asid_map) == asid_map_asid_map_vspace &&
            (vspace_root_t *)asid_map_asid_map_vspace_get_vspace_root(asid_map) == vspace) {
            hwASIDInvalidate(asid, vspace);
            poolPtr->array[asid & ((1ul << (asidLowBits)) - 1ul)] = asid_map_asid_map_none_new();
            setVMRoot(ksCurThread);
        }
    }
}

word_t *__attribute__((__pure__)) lookupIPCBuffer(bool_t isReceiver, tcb_t *thread)
{
    word_t w_bufferPtr;
    cap_t bufferCap;
    vm_rights_t vm_rights;

    w_bufferPtr = thread->tcbIPCBuffer;
    bufferCap = (((cte_t *)((word_t)(thread)&~((1ul << (11)) - 1ul)))+(tcbBuffer))->cap;

    if (cap_get_capType(bufferCap) != cap_frame_cap) {
        return ((void *)0);
    }
    if (__builtin_expect(!!(cap_frame_cap_get_capFIsDevice(bufferCap)), 0)) {
        return ((void *)0);
    }

    vm_rights = cap_frame_cap_get_capFVMRights(bufferCap);
    if (vm_rights == VMReadWrite || (!isReceiver && vm_rights == VMReadOnly)) {
        word_t basePtr, pageBits;

        basePtr = cap_frame_cap_get_capFBasePtr(bufferCap);
        pageBits = pageBitsForSize(cap_frame_cap_get_capFSize(bufferCap));
        return (word_t *)(basePtr + (w_bufferPtr & ((1ul << (pageBits)) - 1ul)));
    } else {
        return ((void *)0);
    }
}

bool_t __attribute__((__const__)) isValidVTableRoot(cap_t cap)
{
    return isValidNativeRoot(cap);
}


__attribute__((__section__(".boot.text"))) bool_t map_kernel_window_devices(pte_t *pt, uint32_t num_ioapic, paddr_t *ioapic_paddrs, uint32_t num_drhu,
                                           paddr_t *drhu_list)
{
    word_t idx = (0xffffffffc0000000ul & ((1ul << (21)) - 1ul)) >> 12;
    paddr_t phys;
    pte_t pte;
    unsigned int i;

    phys = apic_get_base_paddr();
    if (!phys) {
        return false;
    }
    if (!reserve_region((p_region_t) {
    phys, phys + 0x1000
})) {
        return false;
    }
    pte = x86_make_device_pte(phys);

    ;
    pt[idx] = pte;
    idx++;
    for (i = 0; i < num_ioapic; i++) {
        phys = ioapic_paddrs[i];
        if (!reserve_region((p_region_t) {
        phys, phys + 0x1000
    })) {
            return false;
        }
        pte = x86_make_device_pte(phys);
        ;
        pt[idx] = pte;
        idx++;
        if (idx == (1ul << (9))) {
            return false;
        }
    }

    for (; i < 1; i++) {
        pte = x86_make_empty_pte();
        ;
        pt[idx] = pte;
        idx++;
    }


    for (i = 0; i < num_drhu; i++) {
        phys = (paddr_t)drhu_list[i];
        if (!reserve_region((p_region_t) {
        phys, phys + 0x1000
    })) {
            return false;
        }
        pte = x86_make_device_pte(phys);

        ;
        pt[idx] = pte;
        idx++;
        if (idx == (1ul << (9))) {
            return false;
        }
    }


    while (idx < (1ul << (9))) {
        pte = x86_make_empty_pte();
        pt[idx] = pte;
        idx++;
    }


    ;
    return true;
}

__attribute__((__section__(".boot.text"))) static void init_idt(idt_entry_t *idt)
{
    init_idt_entry(idt, 0x00, int_00);
    init_idt_entry(idt, 0x01, int_01);
    init_idt_entry(idt, 0x02, int_02);
    init_idt_entry(idt, 0x03, int_03);
    init_idt_entry(idt, 0x04, int_04);
    init_idt_entry(idt, 0x05, int_05);
    init_idt_entry(idt, 0x06, int_06);
    init_idt_entry(idt, 0x07, int_07);
    init_idt_entry(idt, 0x08, int_08);
    init_idt_entry(idt, 0x09, int_09);
    init_idt_entry(idt, 0x0a, int_0a);
    init_idt_entry(idt, 0x0b, int_0b);
    init_idt_entry(idt, 0x0c, int_0c);
    init_idt_entry(idt, 0x0d, int_0d);
    init_idt_entry(idt, 0x0e, int_0e);
    init_idt_entry(idt, 0x0f, int_0f);

    init_idt_entry(idt, 0x10, int_10);
    init_idt_entry(idt, 0x11, int_11);
    init_idt_entry(idt, 0x12, int_12);
    init_idt_entry(idt, 0x13, int_13);
    init_idt_entry(idt, 0x14, int_14);
    init_idt_entry(idt, 0x15, int_15);
    init_idt_entry(idt, 0x16, int_16);
    init_idt_entry(idt, 0x17, int_17);
    init_idt_entry(idt, 0x18, int_18);
    init_idt_entry(idt, 0x19, int_19);
    init_idt_entry(idt, 0x1a, int_1a);
    init_idt_entry(idt, 0x1b, int_1b);
    init_idt_entry(idt, 0x1c, int_1c);
    init_idt_entry(idt, 0x1d, int_1d);
    init_idt_entry(idt, 0x1e, int_1e);
    init_idt_entry(idt, 0x1f, int_1f);

    init_idt_entry(idt, 0x20, int_20);
    init_idt_entry(idt, 0x21, int_21);
    init_idt_entry(idt, 0x22, int_22);
    init_idt_entry(idt, 0x23, int_23);
    init_idt_entry(idt, 0x24, int_24);
    init_idt_entry(idt, 0x25, int_25);
    init_idt_entry(idt, 0x26, int_26);
    init_idt_entry(idt, 0x27, int_27);
    init_idt_entry(idt, 0x28, int_28);
    init_idt_entry(idt, 0x29, int_29);
    init_idt_entry(idt, 0x2a, int_2a);
    init_idt_entry(idt, 0x2b, int_2b);
    init_idt_entry(idt, 0x2c, int_2c);
    init_idt_entry(idt, 0x2d, int_2d);
    init_idt_entry(idt, 0x2e, int_2e);
    init_idt_entry(idt, 0x2f, int_2f);

    init_idt_entry(idt, 0x30, int_30);
    init_idt_entry(idt, 0x31, int_31);
    init_idt_entry(idt, 0x32, int_32);
    init_idt_entry(idt, 0x33, int_33);
    init_idt_entry(idt, 0x34, int_34);
    init_idt_entry(idt, 0x35, int_35);
    init_idt_entry(idt, 0x36, int_36);
    init_idt_entry(idt, 0x37, int_37);
    init_idt_entry(idt, 0x38, int_38);
    init_idt_entry(idt, 0x39, int_39);
    init_idt_entry(idt, 0x3a, int_3a);
    init_idt_entry(idt, 0x3b, int_3b);
    init_idt_entry(idt, 0x3c, int_3c);
    init_idt_entry(idt, 0x3d, int_3d);
    init_idt_entry(idt, 0x3e, int_3e);
    init_idt_entry(idt, 0x3f, int_3f);

    init_idt_entry(idt, 0x40, int_40);
    init_idt_entry(idt, 0x41, int_41);
    init_idt_entry(idt, 0x42, int_42);
    init_idt_entry(idt, 0x43, int_43);
    init_idt_entry(idt, 0x44, int_44);
    init_idt_entry(idt, 0x45, int_45);
    init_idt_entry(idt, 0x46, int_46);
    init_idt_entry(idt, 0x47, int_47);
    init_idt_entry(idt, 0x48, int_48);
    init_idt_entry(idt, 0x49, int_49);
    init_idt_entry(idt, 0x4a, int_4a);
    init_idt_entry(idt, 0x4b, int_4b);
    init_idt_entry(idt, 0x4c, int_4c);
    init_idt_entry(idt, 0x4d, int_4d);
    init_idt_entry(idt, 0x4e, int_4e);
    init_idt_entry(idt, 0x4f, int_4f);

    init_idt_entry(idt, 0x50, int_50);
    init_idt_entry(idt, 0x51, int_51);
    init_idt_entry(idt, 0x52, int_52);
    init_idt_entry(idt, 0x53, int_53);
    init_idt_entry(idt, 0x54, int_54);
    init_idt_entry(idt, 0x55, int_55);
    init_idt_entry(idt, 0x56, int_56);
    init_idt_entry(idt, 0x57, int_57);
    init_idt_entry(idt, 0x58, int_58);
    init_idt_entry(idt, 0x59, int_59);
    init_idt_entry(idt, 0x5a, int_5a);
    init_idt_entry(idt, 0x5b, int_5b);
    init_idt_entry(idt, 0x5c, int_5c);
    init_idt_entry(idt, 0x5d, int_5d);
    init_idt_entry(idt, 0x5e, int_5e);
    init_idt_entry(idt, 0x5f, int_5f);

    init_idt_entry(idt, 0x60, int_60);
    init_idt_entry(idt, 0x61, int_61);
    init_idt_entry(idt, 0x62, int_62);
    init_idt_entry(idt, 0x63, int_63);
    init_idt_entry(idt, 0x64, int_64);
    init_idt_entry(idt, 0x65, int_65);
    init_idt_entry(idt, 0x66, int_66);
    init_idt_entry(idt, 0x67, int_67);
    init_idt_entry(idt, 0x68, int_68);
    init_idt_entry(idt, 0x69, int_69);
    init_idt_entry(idt, 0x6a, int_6a);
    init_idt_entry(idt, 0x6b, int_6b);
    init_idt_entry(idt, 0x6c, int_6c);
    init_idt_entry(idt, 0x6d, int_6d);
    init_idt_entry(idt, 0x6e, int_6e);
    init_idt_entry(idt, 0x6f, int_6f);

    init_idt_entry(idt, 0x70, int_70);
    init_idt_entry(idt, 0x71, int_71);
    init_idt_entry(idt, 0x72, int_72);
    init_idt_entry(idt, 0x73, int_73);
    init_idt_entry(idt, 0x74, int_74);
    init_idt_entry(idt, 0x75, int_75);
    init_idt_entry(idt, 0x76, int_76);
    init_idt_entry(idt, 0x77, int_77);
    init_idt_entry(idt, 0x78, int_78);
    init_idt_entry(idt, 0x79, int_79);
    init_idt_entry(idt, 0x7a, int_7a);
    init_idt_entry(idt, 0x7b, int_7b);
    init_idt_entry(idt, 0x7c, int_7c);
    init_idt_entry(idt, 0x7d, int_7d);
    init_idt_entry(idt, 0x7e, int_7e);
    init_idt_entry(idt, 0x7f, int_7f);

    init_idt_entry(idt, 0x80, int_80);
    init_idt_entry(idt, 0x81, int_81);
    init_idt_entry(idt, 0x82, int_82);
    init_idt_entry(idt, 0x83, int_83);
    init_idt_entry(idt, 0x84, int_84);
    init_idt_entry(idt, 0x85, int_85);
    init_idt_entry(idt, 0x86, int_86);
    init_idt_entry(idt, 0x87, int_87);
    init_idt_entry(idt, 0x88, int_88);
    init_idt_entry(idt, 0x89, int_89);
    init_idt_entry(idt, 0x8a, int_8a);
    init_idt_entry(idt, 0x8b, int_8b);
    init_idt_entry(idt, 0x8c, int_8c);
    init_idt_entry(idt, 0x8d, int_8d);
    init_idt_entry(idt, 0x8e, int_8e);
    init_idt_entry(idt, 0x8f, int_8f);

    init_idt_entry(idt, 0x90, int_90);
    init_idt_entry(idt, 0x91, int_91);
    init_idt_entry(idt, 0x92, int_92);
    init_idt_entry(idt, 0x93, int_93);
    init_idt_entry(idt, 0x94, int_94);
    init_idt_entry(idt, 0x95, int_95);
    init_idt_entry(idt, 0x96, int_96);
    init_idt_entry(idt, 0x97, int_97);
    init_idt_entry(idt, 0x98, int_98);
    init_idt_entry(idt, 0x99, int_99);
    init_idt_entry(idt, 0x9a, int_9a);
    init_idt_entry(idt, 0x9b, int_9b);
    init_idt_entry(idt, 0x9c, int_9c);
    init_idt_entry(idt, 0x9d, int_9d);
    init_idt_entry(idt, 0x9e, int_9e);
    init_idt_entry(idt, 0x9f, int_9f);

    init_idt_entry(idt, 0xa0, int_a0);
    init_idt_entry(idt, 0xa1, int_a1);
    init_idt_entry(idt, 0xa2, int_a2);
    init_idt_entry(idt, 0xa3, int_a3);
    init_idt_entry(idt, 0xa4, int_a4);
    init_idt_entry(idt, 0xa5, int_a5);
    init_idt_entry(idt, 0xa6, int_a6);
    init_idt_entry(idt, 0xa7, int_a7);
    init_idt_entry(idt, 0xa8, int_a8);
    init_idt_entry(idt, 0xa9, int_a9);
    init_idt_entry(idt, 0xaa, int_aa);
    init_idt_entry(idt, 0xab, int_ab);
    init_idt_entry(idt, 0xac, int_ac);
    init_idt_entry(idt, 0xad, int_ad);
    init_idt_entry(idt, 0xae, int_ae);
    init_idt_entry(idt, 0xaf, int_af);

    init_idt_entry(idt, 0xb0, int_b0);
    init_idt_entry(idt, 0xb1, int_b1);
    init_idt_entry(idt, 0xb2, int_b2);
    init_idt_entry(idt, 0xb3, int_b3);
    init_idt_entry(idt, 0xb4, int_b4);
    init_idt_entry(idt, 0xb5, int_b5);
    init_idt_entry(idt, 0xb6, int_b6);
    init_idt_entry(idt, 0xb7, int_b7);
    init_idt_entry(idt, 0xb8, int_b8);
    init_idt_entry(idt, 0xb9, int_b9);
    init_idt_entry(idt, 0xba, int_ba);
    init_idt_entry(idt, 0xbb, int_bb);
    init_idt_entry(idt, 0xbc, int_bc);
    init_idt_entry(idt, 0xbd, int_bd);
    init_idt_entry(idt, 0xbe, int_be);
    init_idt_entry(idt, 0xbf, int_bf);

    init_idt_entry(idt, 0xc0, int_c0);
    init_idt_entry(idt, 0xc1, int_c1);
    init_idt_entry(idt, 0xc2, int_c2);
    init_idt_entry(idt, 0xc3, int_c3);
    init_idt_entry(idt, 0xc4, int_c4);
    init_idt_entry(idt, 0xc5, int_c5);
    init_idt_entry(idt, 0xc6, int_c6);
    init_idt_entry(idt, 0xc7, int_c7);
    init_idt_entry(idt, 0xc8, int_c8);
    init_idt_entry(idt, 0xc9, int_c9);
    init_idt_entry(idt, 0xca, int_ca);
    init_idt_entry(idt, 0xcb, int_cb);
    init_idt_entry(idt, 0xcc, int_cc);
    init_idt_entry(idt, 0xcd, int_cd);
    init_idt_entry(idt, 0xce, int_ce);
    init_idt_entry(idt, 0xcf, int_cf);

    init_idt_entry(idt, 0xd0, int_d0);
    init_idt_entry(idt, 0xd1, int_d1);
    init_idt_entry(idt, 0xd2, int_d2);
    init_idt_entry(idt, 0xd3, int_d3);
    init_idt_entry(idt, 0xd4, int_d4);
    init_idt_entry(idt, 0xd5, int_d5);
    init_idt_entry(idt, 0xd6, int_d6);
    init_idt_entry(idt, 0xd7, int_d7);
    init_idt_entry(idt, 0xd8, int_d8);
    init_idt_entry(idt, 0xd9, int_d9);
    init_idt_entry(idt, 0xda, int_da);
    init_idt_entry(idt, 0xdb, int_db);
    init_idt_entry(idt, 0xdc, int_dc);
    init_idt_entry(idt, 0xdd, int_dd);
    init_idt_entry(idt, 0xde, int_de);
    init_idt_entry(idt, 0xdf, int_df);

    init_idt_entry(idt, 0xe0, int_e0);
    init_idt_entry(idt, 0xe1, int_e1);
    init_idt_entry(idt, 0xe2, int_e2);
    init_idt_entry(idt, 0xe3, int_e3);
    init_idt_entry(idt, 0xe4, int_e4);
    init_idt_entry(idt, 0xe5, int_e5);
    init_idt_entry(idt, 0xe6, int_e6);
    init_idt_entry(idt, 0xe7, int_e7);
    init_idt_entry(idt, 0xe8, int_e8);
    init_idt_entry(idt, 0xe9, int_e9);
    init_idt_entry(idt, 0xea, int_ea);
    init_idt_entry(idt, 0xeb, int_eb);
    init_idt_entry(idt, 0xec, int_ec);
    init_idt_entry(idt, 0xed, int_ed);
    init_idt_entry(idt, 0xee, int_ee);
    init_idt_entry(idt, 0xef, int_ef);

    init_idt_entry(idt, 0xf0, int_f0);
    init_idt_entry(idt, 0xf1, int_f1);
    init_idt_entry(idt, 0xf2, int_f2);
    init_idt_entry(idt, 0xf3, int_f3);
    init_idt_entry(idt, 0xf4, int_f4);
    init_idt_entry(idt, 0xf5, int_f5);
    init_idt_entry(idt, 0xf6, int_f6);
    init_idt_entry(idt, 0xf7, int_f7);
    init_idt_entry(idt, 0xf8, int_f8);
    init_idt_entry(idt, 0xf9, int_f9);
    init_idt_entry(idt, 0xfa, int_fa);
    init_idt_entry(idt, 0xfb, int_fb);
    init_idt_entry(idt, 0xfc, int_fc);
    init_idt_entry(idt, 0xfd, int_fd);
    init_idt_entry(idt, 0xfe, int_fe);
    init_idt_entry(idt, 0xff, int_ff);
}

__attribute__((__section__(".boot.text"))) bool_t init_vm_state(void)
{
    word_t cacheLineSize;
    x86KScacheLineSizeBits = getCacheLineSizeBits();
    if (!x86KScacheLineSizeBits) {
        return false;
    }

    cacheLineSize = (1ul << (x86KScacheLineSizeBits));
    if (cacheLineSize != 64) {
        ((void)(0))
                                                 ;
        ;
    }





    void *tss_ptr = &x86KSGlobalState[0lu].x86KStss.tss;
    init_tss(tss_ptr);
    init_gdt(x86KSGlobalState[0lu].x86KSgdt, tss_ptr);
    init_idt(x86KSGlobalState[0lu].x86KSidt);
    return true;
}

__attribute__((__section__(".boot.text"))) bool_t init_pat_msr(void)
{
    x86_pat_msr_t pat_msr;


    if ((x86_cpuid_edx(0x1, 0x0) & (1ul << (16))) == 0) {
        ((void)(0));
        return false;
    }
    pat_msr.words[0] = x86_rdmsr_low(0x277);
    pat_msr.words[1] = x86_rdmsr_high(0x277);


    pat_msr = x86_pat_msr_set_pa0(pat_msr, 0x06);
    pat_msr = x86_pat_msr_set_pa1(pat_msr, 0x04);
    pat_msr = x86_pat_msr_set_pa2(pat_msr, 0x07);
    pat_msr = x86_pat_msr_set_pa3(pat_msr, 0x00);

    pat_msr = x86_pat_msr_set_pa4(pat_msr, 0x01);
    x86_wrmsr(0x277, ((uint64_t)pat_msr.words[1]) << 32 | pat_msr.words[0]);
    return true;
}

__attribute__((__section__(".boot.text"))) void write_it_asid_pool(cap_t it_ap_cap, cap_t it_vspace_cap)
{
    asid_pool_t *ap = ((asid_pool_t*)((pptr_t)cap_get_capPtr(it_ap_cap)));
    ap->array[1] = asid_map_asid_map_vspace_new(((pptr_t)cap_get_capPtr(it_vspace_cap)));
    x86KSASIDTable[1 >> asidLowBits] = ap;
}

asid_map_t findMapForASID(asid_t asid)
{
    asid_pool_t *poolPtr;

    poolPtr = x86KSASIDTable[asid >> asidLowBits];
    if (!poolPtr) {
        return asid_map_asid_map_none_new();
    }

    return poolPtr->array[asid & ((1ul << (asidLowBits)) - 1ul)];
}

findVSpaceForASID_ret_t findVSpaceForASID(asid_t asid)
{
    findVSpaceForASID_ret_t ret;
    asid_map_t asid_map;

    asid_map = findMapForASID(asid);
    if (asid_map_get_type(asid_map) != asid_map_asid_map_vspace) {
        current_lookup_fault = lookup_fault_invalid_root_new();

        ret.vspace_root = ((void *)0);
        ret.status = EXCEPTION_LOOKUP_FAULT;
        return ret;
    }

    ret.vspace_root = (vspace_root_t *)asid_map_asid_map_vspace_get_vspace_root(asid_map);
    ret.status = EXCEPTION_NONE;
    return ret;
}

exception_t handleVMFault(tcb_t *thread, vm_fault_type_t vm_faultType)
{
    word_t addr;
    uint32_t fault;

    addr = getFaultAddr();
    fault = getRegister(thread, Error);

    switch (vm_faultType) {
    case X86DataFault:
        current_fault = seL4_Fault_VMFault_new(addr, fault, false);
        return EXCEPTION_FAULT;

    case X86InstructionFault:
        current_fault = seL4_Fault_VMFault_new(addr, fault, true);
        return EXCEPTION_FAULT;

    default:
        halt();
    }
}

uint32_t __attribute__((__const__)) WritableFromVMRights(vm_rights_t vm_rights)
{
    switch (vm_rights) {
    case VMReadOnly:
        return 0;

    case VMKernelOnly:
    case VMReadWrite:
        return 1;

    default:
        halt();
    }
}

uint32_t __attribute__((__const__)) SuperUserFromVMRights(vm_rights_t vm_rights)
{
    switch (vm_rights) {
    case VMKernelOnly:
        return 0;

    case VMReadOnly:
    case VMReadWrite:
        return 1;

    default:
        halt();
    }
}

lookupPTSlot_ret_t lookupPTSlot(vspace_root_t *vspace, vptr_t vptr)
{
    lookupPTSlot_ret_t ret;
    lookupPDSlot_ret_t pdSlot;

    pdSlot = lookupPDSlot(vspace, vptr);
    if (pdSlot.status != EXCEPTION_NONE) {
        ret.ptSlot = ((void *)0);
        ret.status = pdSlot.status;
        return ret;
    }
    if ((pde_ptr_get_page_size(pdSlot.pdSlot) != pde_pde_pt) ||
        !pde_pde_pt_ptr_get_present(pdSlot.pdSlot)) {
        current_lookup_fault = lookup_fault_missing_capability_new(12 + 9);
        ret.ptSlot = ((void *)0);
        ret.status = EXCEPTION_LOOKUP_FAULT;
        return ret;
    } else {
        pte_t *pt;
        pte_t *ptSlot;
        word_t ptIndex;

        pt = ptrFromPAddr(pde_pde_pt_ptr_get_pt_base_address(pdSlot.pdSlot));
        ptIndex = (vptr >> 12) & ((1ul << (9)) - 1ul);
        ptSlot = pt + ptIndex;

        ret.ptSlot = ptSlot;
        ret.status = EXCEPTION_NONE;
        return ret;
    }
}

exception_t checkValidIPCBuffer(vptr_t vptr, cap_t cap)
{
    if (cap_get_capType(cap) != cap_frame_cap) {
        ;
        current_syscall_error.type = seL4_IllegalOperation;
        return EXCEPTION_SYSCALL_ERROR;
    }
    if (__builtin_expect(!!(cap_frame_cap_get_capFIsDevice(cap)), 0)) {
        ;
        current_syscall_error.type = seL4_IllegalOperation;
        return EXCEPTION_SYSCALL_ERROR;
    }

    if (!(!((vptr) & ((1ul << (10)) - 1ul)))) {
        ;
        current_syscall_error.type = seL4_AlignmentError;
        return EXCEPTION_SYSCALL_ERROR;
    }

    return EXCEPTION_NONE;
}

vm_rights_t __attribute__((__const__)) maskVMRights(vm_rights_t vm_rights, seL4_CapRights_t cap_rights_mask)
{
    if (vm_rights == VMReadOnly && seL4_CapRights_get_capAllowRead(cap_rights_mask)) {
        return VMReadOnly;
    }
    if (vm_rights == VMReadWrite && seL4_CapRights_get_capAllowRead(cap_rights_mask)) {
        if (!seL4_CapRights_get_capAllowWrite(cap_rights_mask)) {
            return VMReadOnly;
        } else {
            return VMReadWrite;
        }
    }
    if (vm_rights == VMReadWrite &&
        !seL4_CapRights_get_capAllowRead(cap_rights_mask) &&
        seL4_CapRights_get_capAllowWrite(cap_rights_mask)) {
        ;
    }
    return VMKernelOnly;
}

void flushTable(vspace_root_t *vspace, word_t vptr, pte_t *pt, asid_t asid)
{
    word_t i;
    cap_t threadRoot;

    ;


    threadRoot = (((cte_t *)((word_t)(ksCurThread)&~((1ul << (11)) - 1ul)))+(tcbVTable))->cap;

    for (i = 0; i < (1ul << (9)); i++) {
        if (pte_get_present(pt[i])) {
            if (wrap_config_set(1) || (isValidNativeRoot(threadRoot)
                                                    && (vspace_root_t *)((pptr_t)cap_get_capPtr(threadRoot)) == vspace)) {
                invalidateTranslationSingleASID(vptr + (i << 12), asid,
                                                0);
            }
        }
    }
}


void unmapPage(vm_page_size_t page_size, asid_t asid, vptr_t vptr, void *pptr)
{
    findVSpaceForASID_ret_t find_ret;
    lookupPTSlot_ret_t lu_ret;
    lookupPDSlot_ret_t pd_ret;
    pde_t *pde;

    find_ret = findVSpaceForASID(asid);
    if (find_ret.status != EXCEPTION_NONE) {
        return;
    }

    switch (page_size) {
    case X86_SmallPage:
        lu_ret = lookupPTSlot(find_ret.vspace_root, vptr);
        if (lu_ret.status != EXCEPTION_NONE) {
            return;
        }
        if (!(pte_ptr_get_present(lu_ret.ptSlot)
              && (pte_ptr_get_page_base_address(lu_ret.ptSlot)
                  == addrFromPPtr(pptr)))) {
            return;
        }
        *lu_ret.ptSlot = makeUserPTEInvalid();
        break;

    case X86_LargePage:
        pd_ret = lookupPDSlot(find_ret.vspace_root, vptr);
        if (pd_ret.status != EXCEPTION_NONE) {
            return;
        }
        pde = pd_ret.pdSlot;
        if (!(pde_ptr_get_page_size(pde) == pde_pde_large
              && pde_pde_large_ptr_get_present(pde)
              && (pde_pde_large_ptr_get_page_base_address(pde)
                  == addrFromPPtr(pptr)))) {
            return;
        }
        *pde = makeUserPDEInvalid();
        break;

    default:
        if (!modeUnmapPage(page_size, find_ret.vspace_root, vptr, pptr)) {
            return;
        }
        break;
    }

    invalidateTranslationSingleASID(vptr, asid,
                                    0);
}

void unmapPageTable(asid_t asid, vptr_t vaddr, pte_t *pt)
{
    findVSpaceForASID_ret_t find_ret;
    lookupPDSlot_ret_t lu_ret;

    find_ret = findVSpaceForASID(asid);
    if (find_ret.status != EXCEPTION_NONE) {
        return;
    }

    lu_ret = lookupPDSlot(find_ret.vspace_root, vaddr);
    if (lu_ret.status != EXCEPTION_NONE) {
        return;
    }


    if (!(pde_ptr_get_page_size(lu_ret.pdSlot) == pde_pde_pt &&
          pde_pde_pt_ptr_get_present(lu_ret.pdSlot) &&
          (pde_pde_pt_ptr_get_pt_base_address(lu_ret.pdSlot) == addrFromPPtr(pt)))) {
        return;
    }

    flushTable(find_ret.vspace_root, vaddr, pt, asid);

    *lu_ret.pdSlot = makeUserPDEInvalid();

    invalidatePageStructureCacheASID(addrFromPPtr(find_ret.vspace_root), asid,
                                     0);
}

static exception_t performX86PageInvocationMapPTE(cap_t cap, cte_t *ctSlot, pte_t *ptSlot, pte_t pte,
                                                  vspace_root_t *vspace)
{
    ctSlot->cap = cap;
    *ptSlot = pte;
    invalidatePageStructureCacheASID(addrFromPPtr(vspace), cap_frame_cap_get_capFMappedASID(cap),
                                     0);
    return EXCEPTION_NONE;
}

static exception_t performX86PageInvocationMapPDE(cap_t cap, cte_t *ctSlot, pde_t *pdSlot, pde_t pde,
                                                  vspace_root_t *vspace)
{
    ctSlot->cap = cap;
    *pdSlot = pde;
    invalidatePageStructureCacheASID(addrFromPPtr(vspace), cap_frame_cap_get_capFMappedASID(cap),
                                     0);
    return EXCEPTION_NONE;
}


static exception_t performX86PageInvocationUnmap(cap_t cap, cte_t *ctSlot)
{
    ;
    ;



    if (cap_frame_cap_get_capFMappedASID(cap)) {
        unmapPage(
            cap_frame_cap_get_capFSize(cap),
            cap_frame_cap_get_capFMappedASID(cap),
            cap_frame_cap_get_capFMappedAddress(cap),
            (void *)cap_frame_cap_get_capFBasePtr(cap)
        );
    }

    cap_frame_cap_ptr_set_capFMappedAddress(&ctSlot->cap, 0);
    cap_frame_cap_ptr_set_capFMappedASID(&ctSlot->cap, asidInvalid);
    cap_frame_cap_ptr_set_capFMapType(&ctSlot->cap, X86_MappingNone);

    return EXCEPTION_NONE;
}

static exception_t performX86FrameInvocationUnmap(cap_t cap, cte_t *cte)
{
    if (cap_frame_cap_get_capFMappedASID(cap) != asidInvalid) {
        switch (cap_frame_cap_get_capFMapType(cap)) {
        case X86_MappingVSpace:
            return performX86PageInvocationUnmap(cap, cte);
# 855 "/workspace/seL4-c89/preconfigured/src/arch/x86/kernel/vspace.c"
        case X86_MappingNone:
            halt();
            break;
        }
    }

    return EXCEPTION_NONE;
}

struct create_mapping_pte_return {
    exception_t status;
    pte_t pte;
    pte_t *ptSlot;
};
typedef struct create_mapping_pte_return create_mapping_pte_return_t;

static create_mapping_pte_return_t createSafeMappingEntries_PTE(paddr_t base, word_t vaddr, vm_rights_t vmRights,
                                                                vm_attributes_t attr,
                                                                vspace_root_t *vspace)
{
    create_mapping_pte_return_t ret;
    lookupPTSlot_ret_t lu_ret;

    lu_ret = lookupPTSlot(vspace, vaddr);
    if (lu_ret.status != EXCEPTION_NONE) {
        current_syscall_error.type = seL4_FailedLookup;
        current_syscall_error.failedLookupWasSource = false;
        ret.status = EXCEPTION_SYSCALL_ERROR;

        return ret;
    }

    ret.pte = makeUserPTE(base, attr, vmRights);
    ret.ptSlot = lu_ret.ptSlot;
    ret.status = EXCEPTION_NONE;
    return ret;
}

struct create_mapping_pde_return {
    exception_t status;
    pde_t pde;
    pde_t *pdSlot;
};
typedef struct create_mapping_pde_return create_mapping_pde_return_t;

static create_mapping_pde_return_t createSafeMappingEntries_PDE(paddr_t base, word_t vaddr, vm_rights_t vmRights,
                                                                vm_attributes_t attr,
                                                                vspace_root_t *vspace)
{
    create_mapping_pde_return_t ret;
    lookupPDSlot_ret_t lu_ret;

    lu_ret = lookupPDSlot(vspace, vaddr);
    if (lu_ret.status != EXCEPTION_NONE) {
        current_syscall_error.type = seL4_FailedLookup;
        current_syscall_error.failedLookupWasSource = false;
        ret.status = EXCEPTION_SYSCALL_ERROR;

        return ret;
    }
    ret.pdSlot = lu_ret.pdSlot;


    if ((pde_ptr_get_page_size(ret.pdSlot) == pde_pde_pt) &&
        (pde_pde_pt_ptr_get_present(ret.pdSlot))) {
        current_syscall_error.type = seL4_DeleteFirst;
        ret.status = EXCEPTION_SYSCALL_ERROR;
        return ret;
    }


    ret.pde = makeUserPDELargePage(base, attr, vmRights);
    ret.status = EXCEPTION_NONE;
    return ret;
}


exception_t decodeX86FrameInvocation(
    word_t invLabel,
    word_t length,
    cte_t *cte,
    cap_t cap,
    bool_t call,
    word_t *buffer
)
{
    switch (invLabel) {
    case X86PageMap: {
        word_t vaddr;
        word_t vtop;
        word_t w_rightsMask;
        paddr_t paddr;
        cap_t vspaceCap;
        vspace_root_t *vspace;
        vm_rights_t capVMRights;
        vm_rights_t vmRights;
        vm_attributes_t vmAttr;
        vm_page_size_t frameSize;
        asid_t asid;

        if (length < 3 || current_extra_caps.excaprefs[0] == ((void *)0)) {
            current_syscall_error.type = seL4_TruncatedMessage;

            return EXCEPTION_SYSCALL_ERROR;
        }

        frameSize = cap_frame_cap_get_capFSize(cap);
        vaddr = getSyscallArg(0, buffer);
        w_rightsMask = getSyscallArg(1, buffer);
        vmAttr = vmAttributesFromWord(getSyscallArg(2, buffer));
        vspaceCap = current_extra_caps.excaprefs[0]->cap;

        capVMRights = cap_frame_cap_get_capFVMRights(cap);

        if (!isValidNativeRoot(vspaceCap)) {
            ;
            current_syscall_error.type = seL4_InvalidCapability;
            current_syscall_error.invalidCapNumber = 1;

            return EXCEPTION_SYSCALL_ERROR;
        }
        vspace = (vspace_root_t *)((pptr_t)cap_get_capPtr(vspaceCap));
        asid = cap_get_capMappedASID(vspaceCap);

        if (cap_frame_cap_get_capFMappedASID(cap) != asidInvalid) {
            if (cap_frame_cap_get_capFMappedASID(cap) != asid) {
                current_syscall_error.type = seL4_InvalidCapability;
                current_syscall_error.invalidCapNumber = 1;

                return EXCEPTION_SYSCALL_ERROR;
            }

            if (cap_frame_cap_get_capFMapType(cap) != X86_MappingVSpace) {
                ;
                current_syscall_error.type = seL4_IllegalOperation;

                return EXCEPTION_SYSCALL_ERROR;
            }

            if (cap_frame_cap_get_capFMappedAddress(cap) != vaddr) {
                ;
                current_syscall_error.type = seL4_InvalidArgument;
                current_syscall_error.invalidArgumentNumber = 0;

                return EXCEPTION_SYSCALL_ERROR;
            }
        } else {
            vtop = vaddr + (1ul << (pageBitsForSize(frameSize)));


            if (vaddr > 0x7FFFFFFFFFFFul || vtop > 0x7FFFFFFFFFFFul) {
                ;
                current_syscall_error.type = seL4_InvalidArgument;
                current_syscall_error.invalidArgumentNumber = 0;

                return EXCEPTION_SYSCALL_ERROR;
            }
        }

        {
            findVSpaceForASID_ret_t find_ret;

            find_ret = findVSpaceForASID(asid);
            if (find_ret.status != EXCEPTION_NONE) {
                current_syscall_error.type = seL4_FailedLookup;
                current_syscall_error.failedLookupWasSource = false;

                return EXCEPTION_SYSCALL_ERROR;
            }

            if (find_ret.vspace_root != vspace) {
                current_syscall_error.type = seL4_InvalidCapability;
                current_syscall_error.invalidCapNumber = 1;

                return EXCEPTION_SYSCALL_ERROR;
            }
        }

        vmRights = maskVMRights(capVMRights, rightsFromWord(w_rightsMask));

        if (!checkVPAlignment(frameSize, vaddr)) {
            current_syscall_error.type = seL4_AlignmentError;

            return EXCEPTION_SYSCALL_ERROR;
        }

        paddr = addrFromPPtr((void *)cap_frame_cap_get_capFBasePtr(cap));

        cap = cap_frame_cap_set_capFMappedASID(cap, asid);
        cap = cap_frame_cap_set_capFMappedAddress(cap, vaddr);
        cap = cap_frame_cap_set_capFMapType(cap, X86_MappingVSpace);

        switch (frameSize) {

        case X86_SmallPage: {
            create_mapping_pte_return_t map_ret;

            map_ret = createSafeMappingEntries_PTE(paddr, vaddr, vmRights, vmAttr, vspace);
            if (map_ret.status != EXCEPTION_NONE) {
                return map_ret.status;
            }

            setThreadState(ksCurThread, ThreadState_Restart);
            return performX86PageInvocationMapPTE(cap, cte, map_ret.ptSlot, map_ret.pte, vspace);
        }


        case X86_LargePage: {
            create_mapping_pde_return_t map_ret;

            map_ret = createSafeMappingEntries_PDE(paddr, vaddr, vmRights, vmAttr, vspace);
            if (map_ret.status != EXCEPTION_NONE) {
                return map_ret.status;
            }

            setThreadState(ksCurThread, ThreadState_Restart);
            return performX86PageInvocationMapPDE(cap, cte, map_ret.pdSlot, map_ret.pde, vspace);
        }

        default: {
            return decodeX86ModeMapPage(invLabel, frameSize, cte, cap, vspace, vaddr, paddr, vmRights, vmAttr);
        }
        }

        return EXCEPTION_SYSCALL_ERROR;
    }

    case X86PageUnmap: {
        setThreadState(ksCurThread, ThreadState_Restart);
        return performX86FrameInvocationUnmap(cap, cte);
    }
# 1098 "/workspace/seL4-c89/preconfigured/src/arch/x86/kernel/vspace.c"
    case X86PageGetAddress: {

        ;

        setThreadState(ksCurThread, ThreadState_Restart);
        return performPageGetAddress((void *)cap_frame_cap_get_capFBasePtr(cap), call);
    }

    default:
        current_syscall_error.type = seL4_IllegalOperation;

        return EXCEPTION_SYSCALL_ERROR;
    }
}

static exception_t performX86PageTableInvocationUnmap(cap_t cap, cte_t *ctSlot)
{

    if (cap_page_table_cap_get_capPTIsMapped(cap)) {
        pte_t *pt = ((pte_t *)(cap_page_table_cap_get_capPTBasePtr(cap)));
        unmapPageTable(
            cap_page_table_cap_get_capPTMappedASID(cap),
            cap_page_table_cap_get_capPTMappedAddress(cap),
            pt
        );
        clearMemory((void *)pt, cap_get_capSizeBits(cap));
    }
    cap_page_table_cap_ptr_set_capPTIsMapped(&(ctSlot->cap), 0);

    return EXCEPTION_NONE;
}

static exception_t performX86PageTableInvocationMap(cap_t cap, cte_t *ctSlot, pde_t pde, pde_t *pdSlot,
                                                    vspace_root_t *root)
{
    ctSlot->cap = cap;
    *pdSlot = pde;
    invalidatePageStructureCacheASID(addrFromPPtr(root), cap_page_table_cap_get_capPTMappedASID(cap),
                                     0);
    return EXCEPTION_NONE;
}

static exception_t decodeX86PageTableInvocation(
    word_t invLabel,
    word_t length,
    cte_t *cte, cap_t cap,
    word_t *buffer
)
{
    word_t vaddr;
    vm_attributes_t attr;
    lookupPDSlot_ret_t pdSlot;
    cap_t vspaceCap;
    vspace_root_t *vspace;
    pde_t pde;
    paddr_t paddr;
    asid_t asid;

    if (invLabel == X86PageTableUnmap) {
        if (! isFinalCapability(cte)) {
            current_syscall_error.type = seL4_RevokeFirst;
            ;
            return EXCEPTION_SYSCALL_ERROR;
        }
        setThreadState(ksCurThread, ThreadState_Restart);
        return performX86PageTableInvocationUnmap(cap, cte);
    }

    if (invLabel != X86PageTableMap) {
        ;
        current_syscall_error.type = seL4_IllegalOperation;
        return EXCEPTION_SYSCALL_ERROR;
    }

    if (length < 2 || current_extra_caps.excaprefs[0] == ((void *)0)) {
        ;
        current_syscall_error.type = seL4_TruncatedMessage;
        return EXCEPTION_SYSCALL_ERROR;
    }

    if (cap_page_table_cap_get_capPTIsMapped(cap)) {
        ;
        current_syscall_error.type =
            seL4_InvalidCapability;
        current_syscall_error.invalidCapNumber = 0;

        return EXCEPTION_SYSCALL_ERROR;
    }

    vaddr = getSyscallArg(0, buffer) & (~((1ul << (9 + 12)) - 1ul));
    attr = vmAttributesFromWord(getSyscallArg(1, buffer));
    vspaceCap = current_extra_caps.excaprefs[0]->cap;

    if (!isValidNativeRoot(vspaceCap)) {
        current_syscall_error.type = seL4_InvalidCapability;
        current_syscall_error.invalidCapNumber = 1;

        return EXCEPTION_SYSCALL_ERROR;
    }

    vspace = (vspace_root_t *)((pptr_t)cap_get_capPtr(vspaceCap));
    asid = cap_get_capMappedASID(vspaceCap);

    if (vaddr > 0x7FFFFFFFFFFFul) {
        ;
        current_syscall_error.type = seL4_InvalidArgument;
        current_syscall_error.invalidArgumentNumber = 0;

        return EXCEPTION_SYSCALL_ERROR;
    }

    {
        findVSpaceForASID_ret_t find_ret;

        find_ret = findVSpaceForASID(asid);
        if (find_ret.status != EXCEPTION_NONE) {
            current_syscall_error.type = seL4_FailedLookup;
            current_syscall_error.failedLookupWasSource = false;

            return EXCEPTION_SYSCALL_ERROR;
        }

        if (find_ret.vspace_root != vspace) {
            current_syscall_error.type = seL4_InvalidCapability;
            current_syscall_error.invalidCapNumber = 1;

            return EXCEPTION_SYSCALL_ERROR;
        }
    }

    pdSlot = lookupPDSlot(vspace, vaddr);
    if (pdSlot.status != EXCEPTION_NONE) {
        current_syscall_error.type = seL4_FailedLookup;
        current_syscall_error.failedLookupWasSource = false;

        return EXCEPTION_SYSCALL_ERROR;
    }

    if (((pde_ptr_get_page_size(pdSlot.pdSlot) == pde_pde_pt) && pde_pde_pt_ptr_get_present(pdSlot.pdSlot)) ||
        ((pde_ptr_get_page_size(pdSlot.pdSlot) == pde_pde_large) && pde_pde_large_ptr_get_present(pdSlot.pdSlot))) {
        current_syscall_error.type = seL4_DeleteFirst;

        return EXCEPTION_SYSCALL_ERROR;
    }

    paddr = addrFromPPtr(((pte_t *)(cap_page_table_cap_get_capPTBasePtr(cap))));
    pde = makeUserPDEPageTable(paddr, attr);

    cap = cap_page_table_cap_set_capPTIsMapped(cap, 1);
    cap = cap_page_table_cap_set_capPTMappedASID(cap, asid);
    cap = cap_page_table_cap_set_capPTMappedAddress(cap, vaddr);

    setThreadState(ksCurThread, ThreadState_Restart);
    return performX86PageTableInvocationMap(cap, cte, pde, pdSlot.pdSlot, vspace);
}

exception_t decodeX86MMUInvocation(
    word_t invLabel,
    word_t length,
    cptr_t cptr,
    cte_t *cte,
    cap_t cap,
    bool_t call,
    word_t *buffer
)
{
    switch (cap_get_capType(cap)) {

    case cap_frame_cap:
        return decodeX86FrameInvocation(invLabel, length, cte, cap, call, buffer);

    case cap_page_table_cap:
        return decodeX86PageTableInvocation(invLabel, length, cte, cap, buffer);

    case cap_asid_control_cap: {
        word_t i;
        asid_t asid_base;
        word_t index;
        word_t depth;
        cap_t untyped;
        cap_t root;
        cte_t *parentSlot;
        cte_t *destSlot;
        lookupSlot_ret_t lu_ret;
        void *frame;
        exception_t status;

        if (invLabel != X86ASIDControlMakePool) {
            current_syscall_error.type = seL4_IllegalOperation;

            return EXCEPTION_SYSCALL_ERROR;
        }

        if (length < 2 || current_extra_caps.excaprefs[0] == ((void *)0)
            || current_extra_caps.excaprefs[1] == ((void *)0)) {
            current_syscall_error.type = seL4_TruncatedMessage;
            return EXCEPTION_SYSCALL_ERROR;
        }

        index = getSyscallArg(0, buffer);
        depth = getSyscallArg(1, buffer);
        parentSlot = current_extra_caps.excaprefs[0];
        untyped = parentSlot->cap;
        root = current_extra_caps.excaprefs[1]->cap;


        for (i = 0; i < (1ul << (asidHighBits)) && x86KSASIDTable[i]; i++);

        if (i == (1ul << (asidHighBits))) {
            ;
            current_syscall_error.type = seL4_DeleteFirst;

            return EXCEPTION_SYSCALL_ERROR;
        }

        asid_base = i << asidLowBits;


        if (cap_get_capType(untyped) != cap_untyped_cap ||
            cap_untyped_cap_get_capBlockSize(untyped) != 12 ||
            cap_untyped_cap_get_capIsDevice(untyped)) {
            current_syscall_error.type = seL4_InvalidCapability;
            current_syscall_error.invalidCapNumber = 1;

            return EXCEPTION_SYSCALL_ERROR;
        }

        status = ensureNoChildren(parentSlot);
        if (status != EXCEPTION_NONE) {
            return status;
        }

        frame = ((word_t *)(cap_untyped_cap_get_capPtr(untyped)));

        lu_ret = lookupTargetSlot(root, index, depth);
        if (lu_ret.status != EXCEPTION_NONE) {
            return lu_ret.status;
        }
        destSlot = lu_ret.slot;

        status = ensureEmptySlot(destSlot);
        if (status != EXCEPTION_NONE) {
            return status;
        }

        setThreadState(ksCurThread, ThreadState_Restart);
        return performASIDControlInvocation(frame, destSlot, parentSlot, asid_base);
    }

    case cap_asid_pool_cap: {
        cap_t vspaceCap;
        cte_t *vspaceCapSlot;
        asid_pool_t *pool;
        word_t i;
        asid_t asid;

        if (invLabel != X86ASIDPoolAssign) {
            current_syscall_error.type = seL4_IllegalOperation;

            return EXCEPTION_SYSCALL_ERROR;
        }
        if (current_extra_caps.excaprefs[0] == ((void *)0)) {
            current_syscall_error.type = seL4_TruncatedMessage;

            return EXCEPTION_SYSCALL_ERROR;
        }

        vspaceCapSlot = current_extra_caps.excaprefs[0];
        vspaceCap = vspaceCapSlot->cap;

        if (!(isVTableRoot(vspaceCap) || 0)
            || cap_get_capMappedASID(vspaceCap) != asidInvalid) {
            ;
            current_syscall_error.type = seL4_InvalidCapability;
            current_syscall_error.invalidCapNumber = 1;

            return EXCEPTION_SYSCALL_ERROR;
        }

        pool = x86KSASIDTable[cap_asid_pool_cap_get_capASIDBase(cap) >> asidLowBits];
        if (!pool) {
            current_syscall_error.type = seL4_FailedLookup;
            current_syscall_error.failedLookupWasSource = false;
            current_lookup_fault = lookup_fault_invalid_root_new();
            return EXCEPTION_SYSCALL_ERROR;
        }

        if (pool != ((asid_pool_t*)cap_asid_pool_cap_get_capASIDPool(cap))) {
            current_syscall_error.type = seL4_InvalidCapability;
            current_syscall_error.invalidCapNumber = 0;
            return EXCEPTION_SYSCALL_ERROR;
        }


        asid = cap_asid_pool_cap_get_capASIDBase(cap);
        for (i = 0; i < (1ul << (asidLowBits)) && (asid + i == 0
                                             || asid_map_get_type(pool->array[i]) != asid_map_asid_map_none); i++);

        if (i == (1ul << (asidLowBits))) {
            current_syscall_error.type = seL4_DeleteFirst;

            return EXCEPTION_SYSCALL_ERROR;
        }

        asid += i;

        setThreadState(ksCurThread, ThreadState_Restart);
        return performASIDPoolInvocation(asid, pool, vspaceCapSlot);
    }

    default:
        return decodeX86ModeMMUInvocation(invLabel, length, cptr, cte, cap, call, buffer);
    }
}
# 1 "/workspace/seL4-c89/preconfigured/src/arch/x86/kernel/x2apic.c"
# 10 "/workspace/seL4-c89/preconfigured/src/arch/x86/kernel/x2apic.c"
__attribute__((__section__(".boot.text"))) bool_t x2apic_is_enabled(void)
{
    apic_base_msr_t apic_base_msr;
    apic_base_msr.words[0] = x86_rdmsr_low(0x01B);

    if ((x86_cpuid_ecx(1, 0) & (1ul << (21))) &&
        apic_base_msr_get_enabled(apic_base_msr) &&
        apic_base_msr_get_x2apic(apic_base_msr)) {
        return true;
    }
    return false;
}
# 1 "/workspace/seL4-c89/preconfigured/src/arch/x86/kernel/xapic.c"
# 28 "/workspace/seL4-c89/preconfigured/src/arch/x86/kernel/xapic.c"
__attribute__((__section__(".boot.text"))) bool_t apic_enable(void)
{
    apic_base_msr_t apic_base_msr;
    apic_base_msr.words[0] = x86_rdmsr_low(0x01B);

    if (!apic_base_msr_get_enabled(apic_base_msr)) {
        ((void)(0));
        return false;
    }

    if (x2apic_is_enabled()) {
        ((void)(0));
        return false;
    }





    return true;
}

bool_t apic_is_interrupt_pending(void)
{
    word_t i;


    ;
    for (i = int_irq_min; i <= int_irq_max; i += 32) {
        if (apic_read_reg(APIC_IRR_BASE + i / 2) != 0) {
            return true;
        }
    }
    return false;
}

__attribute__((__section__(".boot.text"))) void apic_send_init_ipi(cpu_id_t cpu_id)
{
    apic_write_icr(
        apic_icr2_new(
            cpu_id
        ).words[0],
        apic_icr1_new(
            0,
            1,
            1,
            0,
            0,
            5,
            0
        ).words[0]
    );
    apic_write_icr(
        apic_icr2_new(
            cpu_id
        ).words[0],
        apic_icr1_new(
            0,
            1,
            0,
            0,
            0,
            5,
            0
        ).words[0]
    );
}

__attribute__((__section__(".boot.text"))) void apic_send_startup_ipi(cpu_id_t cpu_id, paddr_t startup_addr)
{

    ;

    ;
    startup_addr >>= 12;

    apic_write_icr(
        apic_icr2_new(
            cpu_id
        ).words[0],
        apic_icr1_new(
            0,
            0,
            0,
            0,
            0,
            6,
            startup_addr
        ).words[0]
    );
}

void apic_send_ipi_core(irq_t vector, cpu_id_t cpu_id)
{
    apic_icr1_t icr1;

    do {
        icr1.words[0] = apic_read_reg(APIC_ICR1);
    } while (apic_icr1_get_delivery_status(icr1));

    apic_write_icr(
        apic_icr2_new(
            cpu_id
        ).words[0],
        apic_icr1_new(
            0,
            0,
            0,
            0,
            0,
            0,
            vector
        ).words[0]
    );
}

void apic_send_ipi_cluster(irq_t vector, word_t mda)
{
    apic_icr1_t icr1;

    do {
        icr1.words[0] = apic_read_reg(APIC_ICR1);
    } while (apic_icr1_get_delivery_status(icr1));

    apic_write_icr(
        apic_icr2_new(
            mda
        ).words[0],
        apic_icr1_new(
            0,
            0,
            0,
            0,
            1,
            0,
            vector
        ).words[0]
    );
}
# 1 "/workspace/seL4-c89/preconfigured/src/arch/x86/machine/breakpoint.c"
# 1 "/workspace/seL4-c89/preconfigured/src/arch/x86/machine/capdl.c"
# 1 "/workspace/seL4-c89/preconfigured/src/arch/x86/machine/cpu_identification.c"
# 17 "/workspace/seL4-c89/preconfigured/src/arch/x86/machine/cpu_identification.c"
const char X86_CPUID_VENDOR_STRING_INTEL[] = {'G', 'e', 'n', 'u', 'i', 'n', 'e', 'I', 'n', 't', 'e', 'l', 0};
const char X86_CPUID_VENDOR_STRING_AMD_LEGACY[] = { 'A', 'M', 'D', 'i', 's', 'b', 'e', 't', 't', 'e', 'r', '!', 0};
const char X86_CPUID_VENDOR_STRING_AMD[] = {'A', 'u', 't', 'h', 'e', 'n', 't', 'i', 'c', 'A', 'M', 'D', 0};

__attribute__((__section__(".boot.bss"))) static cpu_identity_t cpu_identity;

__attribute__((__section__(".boot.text"))) cpu_identity_t *x86_cpuid_get_identity(void)
{
    return &cpu_identity;
}

__attribute__((__section__(".boot.text"))) x86_cpu_identity_t *x86_cpuid_get_model_info(void)
{
    return &cpu_identity.display;
}





__attribute__((__section__(".boot.text"))) static void x86_cpuid_fill_vendor_string(cpu_identity_t *ci)
{
    __attribute__((may_alias)) uint32_t *vendor_string32 = (uint32_t *)ci->vendor_string;

    if (ci == ((void *)0)) {
        return;
    }

    vendor_string32[0] = x86_cpuid_ebx(0, 0);
    vendor_string32[1] = x86_cpuid_edx(0, 0);
    vendor_string32[2] = x86_cpuid_ecx(0, 0);

    ci->vendor_string[(12)] = '\0';
}

struct family_model {
    uint8_t family, model;
};

__attribute__((__section__(".boot.text"))) static void x86_cpuid_intel_identity_initialize(cpu_identity_t *ci,
                                                          struct family_model original)
{






    if (original.family != 0x0F) {
        ci->display.family = original.family;
    } else {
        ci->display.family = ci->display.extended_family + original.family;
    }
# 90 "/workspace/seL4-c89/preconfigured/src/arch/x86/machine/cpu_identification.c"
    if (ci->display.family == 0x06 || ci->display.family == 0x0F) {
        ci->display.model = (ci->display.extended_model << 4u) + original.model;
    } else {
        ci->display.model = original.model;
    }
}

__attribute__((__section__(".boot.text"))) static void x86_cpuid_amd_identity_initialize(cpu_identity_t *ci,
                                                        struct family_model original)
{







    if (original.family < 0xF) {
        ci->display.family = original.family;
        ci->display.model = original.model;
    } else {
        ci->display.family = original.family + ci->display.extended_family;
        ci->display.family = (ci->display.extended_model << 4u) + original.model;
    }
}

bool_t x86_cpuid_initialize(void)
{
    cpu_identity_t *ci = x86_cpuid_get_identity();
    struct family_model original;
    cpuid_001h_eax_t eax;
    cpuid_001h_ebx_t ebx;

    memset(ci, 0, sizeof(*ci));


    x86_cpuid_fill_vendor_string(ci);


    eax.words[0] = x86_cpuid_eax(1, 0);
    ebx.words[0] = x86_cpuid_ebx(1, 0);




    original.family = cpuid_001h_eax_get_family(eax);
    original.model = cpuid_001h_eax_get_model(eax);
    ci->display.stepping = cpuid_001h_eax_get_stepping(eax);


    ci->display.extended_family = cpuid_001h_eax_get_extended_family(eax);
    ci->display.extended_model = cpuid_001h_eax_get_extended_model(eax);


    ci->display.brand = cpuid_001h_ebx_get_brand(ebx);

    if (strncmp(ci->vendor_string, X86_CPUID_VENDOR_STRING_INTEL,
                (12)) == 0) {
        ci->vendor = X86_VENDOR_INTEL;
        x86_cpuid_intel_identity_initialize(ci, original);
        return true;
    } else if (strncmp(ci->vendor_string, X86_CPUID_VENDOR_STRING_AMD_LEGACY,
                       (12)) == 0
               || strncmp(ci->vendor_string, X86_CPUID_VENDOR_STRING_AMD,
                          (12)) == 0) {
        ci->vendor = X86_VENDOR_AMD;
        x86_cpuid_amd_identity_initialize(ci, original);
        return true;
    } else {




        ci->vendor = X86_VENDOR_OTHER;
        return false;
    }
}
# 1 "/workspace/seL4-c89/preconfigured/src/arch/x86/machine/fpu.c"
# 16 "/workspace/seL4-c89/preconfigured/src/arch/x86/machine/fpu.c"
void Arch_initFpuContext(user_context_t *context)
{
    context->fpuState = x86KSnullFpuState;
}




__attribute__((__section__(".boot.text"))) bool_t Arch_initFpu(void)
{

    write_cr4(read_cr4() | (1ul << (9)));


    write_cr0((read_cr0() & ~(1ul << (2))) | (1ul << (1)) | (1ul << (5)));
    enableFpu();


    finit();

    if (wrap_config_set(1)) {
        uint64_t xsave_features;
        uint32_t xsave_instruction;
        uint64_t desired_features = 3;


        if (!(x86_cpuid_ecx(1, 0) & (1ul << (26)))) {
            ((void)(0));
            return false;
        }

        write_cr4(read_cr4() | (1ul << (18)));

        xsave_features = ((uint64_t)x86_cpuid_edx(0x0d, 0x0) << 32) | x86_cpuid_eax(0x0d, 0x0);
        if ((xsave_features & desired_features) != desired_features) {
            ((void)(0));
            return false;
        }

        write_xcr0(desired_features);

        if (x86_cpuid_ebx(0x0d, 0x0) > 576) {
            ((void)(0));
            return false;
        }
        if (x86_cpuid_ebx(0x0d, 0x0) < 576) {
            ((void)(0))

                                                               ;
        }

        xsave_instruction = x86_cpuid_eax(0x0d, 0x1);
        if (wrap_config_set(0)) {
            if (!(xsave_instruction & (1ul << (0)))) {
                ((void)(0));
                return false;
            }
        } else if (wrap_config_set(0)) {
            if (!(xsave_instruction & (1ul << (1)))) {
                ((void)(0));
                return false;
            }
        } else if (wrap_config_set(0)) {
            if (!(xsave_instruction & (1ul << (3)))) {
                ((void)(0));
                return false;
            }
        }

        unsigned int mxcsr = 0x1f80;
        __asm__ volatile("ldmxcsr %0" :: "m"(mxcsr));
    }
    return true;
}
# 1 "/workspace/seL4-c89/preconfigured/src/arch/x86/machine/hardware.c"
# 17 "/workspace/seL4-c89/preconfigured/src/arch/x86/machine/hardware.c"
__attribute__((__section__(".boot.text"))) void init_sysenter_msrs(void)
{
    x86_wrmsr(0x174, (uint64_t)(word_t)(1 << 3));
    x86_wrmsr(0x176, (uint64_t)(word_t)&handle_syscall);
    if (wrap_config_set(0) && !wrap_config_set(0)) {



        x86_wrmsr(0x175, (uint64_t)(word_t)((char *)&x86KSGlobalState[0lu].x86KStss.tss.words[0]
                                                            + 4));
    }
}

word_t __attribute__((__pure__)) getRestartPC(tcb_t *thread)
{
    return getRegister(thread, FaultIP);
}

void setNextPC(tcb_t *thread, word_t v)
{
    setRegister(thread, NextIP, v);
}


__attribute__((__section__(".boot.text"))) uint32_t __attribute__((__const__)) getCacheLineSizeBits(void)
{
    uint32_t line_size;
    uint32_t n;

    line_size = getCacheLineSize();
    if (line_size == 0) {
        ((void)(0));
        return 0;
    }


    n = 0;
    while (!(line_size & 1)) {
        line_size >>= 1;
        n++;
    }

    if (line_size != 1) {
        ((void)(0));
        return 0;
    }

    return n;
}



void flushCacheRange(void *vaddr, uint32_t size_bits)
{
    word_t v;

    ;
    ;

    x86_mfence();

    for (v = ((((word_t)vaddr) >> (x86KScacheLineSizeBits)) << (x86KScacheLineSizeBits));
         v < (word_t)vaddr + (1ul << (size_bits));
         v += (1ul << (x86KScacheLineSizeBits))) {
        flushCacheLine((void *)v);
    }
    x86_mfence();
}


__attribute__((__section__(".boot.text"))) bool_t disablePrefetchers(void)
{
    x86_cpu_identity_t *model_info;
    uint32_t low, high;
    word_t i;

    uint32_t valid_models[] = { 0x4D, 0x56,
                                0x4F, 0x47,
                                0x3D,
                                0x3C, 0x3F,
                                0x45, 0x46,
                                0x9A, 0x3E,
                                0x3A,
                                0x2A, 0x2D, 0x25, 0x2C,
                                0x2F, 0x1E, 0x1A, 0x2E,
                                0x4E, 0x5E
                              };

    model_info = x86_cpuid_get_model_info();

    for (i = 0; i < (sizeof(valid_models) / sizeof((valid_models)[0])); i++) {







        if (model_info->family == (0x06)
            && model_info->model == valid_models[i]) {
            low = x86_rdmsr_low(0x1A4);
            high = x86_rdmsr_high(0x1A4);

            low |= (1ul << (0));
            low |= (1ul << (1));
            low |= (1ul << (2));
            low |= (1ul << (3));

            x86_wrmsr(0x1A4, ((uint64_t)high) << 32 | low);

            return true;
        }
    }

    ((void)(0))
                                                 ;
    return false;
}

__attribute__((__section__(".boot.text"))) void enablePMCUser(void)
{
    write_cr4(read_cr4() | (1ul << (8)));
}

__attribute__((__section__(".boot.text"))) bool_t init_ibrs(void)
{
    cpuid_007h_edx_t edx;
    edx.words[0] = x86_cpuid_edx(0x7, 0);
    bool_t support_ibrs = cpuid_007h_edx_get_ibrs_ibpb(edx);
    if ((wrap_config_set(0) || wrap_config_set(0)) && !support_ibrs) {
        ((void)(0));
        return false;
    } else if (support_ibrs) {


        x86_disable_ibrs();
    }

    if (wrap_config_set(0) && !support_ibrs) {
        ((void)(0));
        return false;
    }

    bool_t enhanced_ibrs = false;
    if (cpuid_007h_edx_get_ia32_arch_cap_msr(edx)) {
        ia32_arch_capabilities_msr_t cap_msr;
        cap_msr.words[0] = x86_rdmsr(0x10A);
        if (ia32_arch_capabilities_msr_get_ibrs_all(cap_msr)) {
            enhanced_ibrs = true;
        }
    }
    if (wrap_config_set(0) && enhanced_ibrs) {
        ((void)(0))
                                                                 ;
    }
    if (wrap_config_set(0)) {
        if (!enhanced_ibrs) {
            ((void)(0));
            return false;
        }

        x86_enable_ibrs();
    }
    return true;
}
# 1 "/workspace/seL4-c89/preconfigured/src/arch/x86/machine/registerset.c"
# 10 "/workspace/seL4-c89/preconfigured/src/arch/x86/machine/registerset.c"
void Arch_initContext(user_context_t *context)
{
    Mode_initContext(context);
    context->registers[FS_BASE] = 0;
    context->registers[GS_BASE] = 0;
    context->registers[Error] = 0;
    context->registers[FaultIP] = 0;
    context->registers[NextIP] = 0;
    context->registers[CS] = ((5 << 3) | 3);
    context->registers[FLAGS] = (1ul << (9)) | (1ul << (1));
    context->registers[SS] = ((6 << 3) | 3);

    Arch_initFpuContext(context);



}

word_t sanitiseRegister(register_t reg, word_t v, bool_t archInfo)
{

    v = Mode_sanitiseRegister(reg, v);
    if (reg == FLAGS) {

        v |= (1ul << (1));
        v &= ~((1ul << (3)) | (1ul << (5)));

        v |= (1ul << (9));
        v &= ~(1ul << (8));

        v &= ((1ul << (12)) - 1ul);
    }
    return v;
}
# 1 "/workspace/seL4-c89/preconfigured/src/arch/x86/model/statedata.c"
# 17 "/workspace/seL4-c89/preconfigured/src/arch/x86/model/statedata.c"
interrupt_t x86KScurInterrupt __attribute__((externally_visible));

interrupt_t x86KSPendingInterrupt;



x86_arch_global_state_t x86KSGlobalState[1] __attribute__((__aligned__(64))) __attribute__((__section__(".skim.bss")));


asid_pool_t *x86KSASIDTable[(1ul << (asidHighBits))];


word_t x86KSCurrentFSBase;
word_t x86KSCurrentGSBase;

word_t x86KSGPExceptReturnTo;




;


uint32_t x86KScacheLineSizeBits;


user_fpu_state_t x86KSnullFpuState __attribute__((__aligned__(64)));


uint32_t x86KSnumDrhu;
# 69 "/workspace/seL4-c89/preconfigured/src/arch/x86/model/statedata.c"
x86_irq_state_t x86KSIRQState[maxIRQ + 1];

word_t x86KSAllocatedIOPorts[(1ul << (16)) / 64];
# 1 "/workspace/seL4-c89/preconfigured/src/arch/x86/object/interrupt.c"
# 13 "/workspace/seL4-c89/preconfigured/src/arch/x86/object/interrupt.c"
# 1 "/workspace/seL4-c89/preconfigured/include/plat/pc99/plat/machine/pci.h" 1






       
# 14 "/workspace/seL4-c89/preconfigured/src/arch/x86/object/interrupt.c" 2

void Arch_irqStateInit(void)
{
    int i = 0;
    for (i = 0; i <= maxIRQ; i++) {
        if (i == irq_timer



           ) {
            x86KSIRQState[i] = x86_irq_state_irq_reserved_new();
        } else {
            x86KSIRQState[i] = x86_irq_state_irq_free_new();
        }
    }
}







exception_t Arch_checkIRQ(word_t irq_w)
{
    if (wrap_config_set(0) && irq_w >= irq_isa_min && irq_w <= irq_isa_max) {
        return EXCEPTION_NONE;
    }
    if (wrap_config_set(1)) {
        ;
        current_syscall_error.type = seL4_IllegalOperation;
    } else {
        ;
        current_syscall_error.type = seL4_RangeError;
        current_syscall_error.rangeErrorMin = irq_isa_min;
        current_syscall_error.rangeErrorMax = irq_isa_max;
    }
    return EXCEPTION_SYSCALL_ERROR;
}

static exception_t Arch_invokeIRQControl(irq_t irq, cte_t *handlerSlot, cte_t *controlSlot, x86_irq_state_t irqState)
{
    updateIRQState(irq, irqState);
    return invokeIRQControl(irq, handlerSlot, controlSlot);
}

static exception_t invokeIssueIRQHandlerIOAPIC(irq_t irq, word_t ioapic, word_t pin, word_t level, word_t polarity,
                                               word_t vector,
                                               cte_t *handlerSlot, cte_t *controlSlot)
{
    x86_irq_state_t irqState = x86_irq_state_irq_ioapic_new(ioapic, pin, level, polarity, 1);
    ioapic_map_pin_to_vector(ioapic, pin, level, polarity, vector);
    return Arch_invokeIRQControl(irq, handlerSlot, controlSlot, irqState);
}

exception_t Arch_decodeIRQControlInvocation(word_t invLabel, word_t length, cte_t *srcSlot, word_t *buffer)
{
    word_t index, depth;
    cte_t *destSlot;
    cap_t cnodeCap;
    lookupSlot_ret_t lu_ret;
    exception_t status;
    irq_t irq;
    word_t vector;

    if (!wrap_config_set(1)) {
        ;
        current_syscall_error.type = seL4_IllegalOperation;
        return EXCEPTION_SYSCALL_ERROR;
    }


    if (invLabel != X86IRQIssueIRQHandlerIOAPIC && invLabel != X86IRQIssueIRQHandlerMSI) {
        ;
        current_syscall_error.type = seL4_IllegalOperation;
        return EXCEPTION_SYSCALL_ERROR;
    }



    if (length < 7 || current_extra_caps.excaprefs[0] == ((void *)0)) {
        ;
        current_syscall_error.type = seL4_TruncatedMessage;
        return EXCEPTION_SYSCALL_ERROR;
    }
    index = getSyscallArg(0, buffer);
    depth = getSyscallArg(1, buffer);
    cnodeCap = current_extra_caps.excaprefs[0]->cap;
    irq = getSyscallArg(6, buffer);
    if (irq > irq_user_max - irq_user_min) {
        ;
        current_syscall_error.type = seL4_RangeError;
        current_syscall_error.rangeErrorMin = 0;
        current_syscall_error.rangeErrorMax = irq_user_max - irq_user_min;
        return EXCEPTION_SYSCALL_ERROR;
    }
    irq += irq_user_min;

    if (isIRQActive(irq)) {
        ;
        current_syscall_error.type = seL4_RevokeFirst;
        return EXCEPTION_SYSCALL_ERROR;
    }

    vector = (word_t)irq + 0x20;

    lu_ret = lookupTargetSlot(cnodeCap, index, depth);
    if (lu_ret.status != EXCEPTION_NONE) {
        return lu_ret.status;
    }

    destSlot = lu_ret.slot;

    status = ensureEmptySlot(destSlot);
    if (status != EXCEPTION_NONE) {
        return status;
    }

    switch (invLabel) {
    case X86IRQIssueIRQHandlerIOAPIC: {
        word_t ioapic = getSyscallArg(2, buffer);
        word_t pin = getSyscallArg(3, buffer);
        word_t level = getSyscallArg(4, buffer);
        word_t polarity = getSyscallArg(5, buffer);

        status = ioapic_decode_map_pin_to_vector(ioapic, pin, level, polarity, vector);
        if (status != EXCEPTION_NONE) {
            return status;
        }

        setThreadState(ksCurThread, ThreadState_Restart);
        return invokeIssueIRQHandlerIOAPIC(irq, ioapic, pin, level, polarity, vector, destSlot, srcSlot);
    }
    break;
    case X86IRQIssueIRQHandlerMSI: {
        word_t pci_bus = getSyscallArg(2, buffer);
        word_t pci_dev = getSyscallArg(3, buffer);
        word_t pci_func = getSyscallArg(4, buffer);
        word_t handle = getSyscallArg(5, buffer);
        x86_irq_state_t irqState;



        if (pci_bus > 255) {
            current_syscall_error.type = seL4_RangeError;
            current_syscall_error.rangeErrorMin = 0;
            current_syscall_error.rangeErrorMax = 255;
            return EXCEPTION_SYSCALL_ERROR;
        }

        if (pci_dev > 31) {
            current_syscall_error.type = seL4_RangeError;
            current_syscall_error.rangeErrorMin = 0;
            current_syscall_error.rangeErrorMax = 31;
            return EXCEPTION_SYSCALL_ERROR;
        }

        if (pci_func > 7) {
            current_syscall_error.type = seL4_RangeError;
            current_syscall_error.rangeErrorMin = 0;
            current_syscall_error.rangeErrorMax = 7;
            return EXCEPTION_SYSCALL_ERROR;
        }

        irqState = x86_irq_state_irq_msi_new(pci_bus, pci_dev, pci_func, handle);

        setThreadState(ksCurThread, ThreadState_Restart);
        return Arch_invokeIRQControl(irq, destSlot, srcSlot, irqState);
    }
    break;
    default:

        halt();
    }
}
# 1 "/workspace/seL4-c89/preconfigured/src/arch/x86/object/ioport.c"
# 15 "/workspace/seL4-c89/preconfigured/src/arch/x86/object/ioport.c"
static inline void apply_pattern(word_t_may_alias *w, word_t pattern, bool_t set)
{
    if (set) {
        *w |= pattern;
    } else {
        *w &= ~pattern;
    }
}

static inline word_t make_pattern(int start, int end)
{

    int num_bits = end - start;


    return (~(word_t)0) >> (64 - num_bits) << start;
}

static exception_t ensurePortOperationAllowed(cap_t cap, uint32_t start_port, uint32_t size)
{
    uint32_t first_allowed = cap_io_port_cap_get_capIOPortFirstPort(cap);
    uint32_t last_allowed = cap_io_port_cap_get_capIOPortLastPort(cap);
    uint32_t end_port = start_port + size - 1;
    ;
    ;

    if ((start_port < first_allowed) || (end_port > last_allowed)) {
       

                                                        ;
        current_syscall_error.type = seL4_IllegalOperation;
        return EXCEPTION_SYSCALL_ERROR;
    }

    return EXCEPTION_NONE;
}

void freeIOPortRange(uint16_t first_port, uint16_t last_port)
{
    setIOPortMask(x86KSAllocatedIOPorts, first_port, last_port, false);
}

static bool_t isIOPortRangeFree(uint16_t first_port, uint16_t last_port)
{
    int low_word = first_port >> 6;
    int high_word = last_port >> 6;
    int low_index = first_port & ((1ul << (6)) - 1ul);
    int high_index = last_port & ((1ul << (6)) - 1ul);


    if (low_word == high_word) {
        if ((x86KSAllocatedIOPorts[low_word] & make_pattern(low_index, high_index + 1)) != 0) {
            return false;
        }
        return true;
    }

    if ((x86KSAllocatedIOPorts[low_word] & make_pattern(low_index, 64)) != 0) {
        return false;
    }
    low_word++;

    while (low_word < high_word) {
        if (x86KSAllocatedIOPorts[low_word] != 0) {
            return false;
        }
        low_word++;
    }

    if ((x86KSAllocatedIOPorts[low_word] & make_pattern(0, high_index + 1)) != 0) {
        return false;
    }
    return true;
}

static exception_t invokeX86PortControl(uint16_t first_port, uint16_t last_port, cte_t *ioportSlot, cte_t *controlSlot)
{
    setIOPortMask(x86KSAllocatedIOPorts, first_port, last_port, true);
    cteInsert(cap_io_port_cap_new(first_port, last_port



                                 ),
              controlSlot, ioportSlot);

    return EXCEPTION_NONE;
}

exception_t decodeX86PortControlInvocation(
    word_t invLabel,
    word_t length,
    cptr_t cptr,
    cte_t *slot,
    cap_t cap,
    word_t *buffer
)
{
    uint16_t first_port;
    uint16_t last_port;
    word_t index, depth;
    cap_t cnodeCap;
    cte_t *destSlot;
    lookupSlot_ret_t lu_ret;
    exception_t status;

    if (invLabel != X86IOPortControlIssue) {
        ;
        current_syscall_error.type = seL4_IllegalOperation;
        return EXCEPTION_SYSCALL_ERROR;
    }

    if (length < 4 || current_extra_caps.excaprefs[0] == ((void *)0)) {
        ;
        current_syscall_error.type = seL4_TruncatedMessage;
        return EXCEPTION_SYSCALL_ERROR;
    }

    first_port = getSyscallArg(0, buffer) & 0xffff;
    last_port = getSyscallArg(1, buffer) & 0xffff;
    index = getSyscallArg(2, buffer);
    depth = getSyscallArg(3, buffer);

    cnodeCap = current_extra_caps.excaprefs[0]->cap;

    if (last_port < first_port) {
        ;
        current_syscall_error.type = seL4_InvalidArgument;
        current_syscall_error.invalidArgumentNumber = 1;
        return EXCEPTION_SYSCALL_ERROR;
    }

    if (!isIOPortRangeFree(first_port, last_port)) {
        ;
        current_syscall_error.type = seL4_RevokeFirst;
        return EXCEPTION_SYSCALL_ERROR;
    }

    lu_ret = lookupTargetSlot(cnodeCap, index, depth);
    if (lu_ret.status != EXCEPTION_NONE) {
        ;
        return lu_ret.status;
    }
    destSlot = lu_ret.slot;

    status = ensureEmptySlot(destSlot);
    if (status != EXCEPTION_NONE) {
        ;
        return status;
    }

    setThreadState(ksCurThread, ThreadState_Restart);
    return invokeX86PortControl(first_port, last_port, destSlot, slot);
}

static exception_t invokeX86PortIn(word_t invLabel, uint16_t port, bool_t call)
{
    uint32_t res;
    tcb_t *thread;
    thread = ksCurThread;

    switch (invLabel) {
    case X86IOPortIn8:
        res = in8(port);
        break;
    case X86IOPortIn16:
        res = in16(port);
        break;
    case X86IOPortIn32:
        res = in32(port);
        break;
    }

    if (call) {
        word_t *ipcBuffer = lookupIPCBuffer(true, thread);
        setRegister(thread, badgeRegister, 0);
        unsigned int length = setMR(thread, ipcBuffer, 0, res);
        setRegister(thread, msgInfoRegister, wordFromMessageInfo(
                        seL4_MessageInfo_new(0, 0, 0, length)));
    }
    setThreadState(ksCurThread, ThreadState_Running);
    return EXCEPTION_NONE;
}

static exception_t invokeX86PortOut(word_t invLabel, uint16_t port, uint32_t data)
{
    switch (invLabel) {
    case X86IOPortOut8:
        out8(port, data);
        break;
    case X86IOPortOut16:
        out16(port, data);
        break;
    case X86IOPortOut32:
        out32(port, data);
        break;
    }

    return EXCEPTION_NONE;
}

exception_t decodeX86PortInvocation(
    word_t invLabel,
    word_t length,
    cptr_t cptr,
    cte_t *slot,
    cap_t cap,
    bool_t call,
    word_t *buffer
)
{
    exception_t ret = EXCEPTION_NONE;

    if (invLabel == X86IOPortIn8 || invLabel == X86IOPortIn16 || invLabel == X86IOPortIn32) {
        if (length < 1) {
            ;
            current_syscall_error.type = seL4_TruncatedMessage;
            return EXCEPTION_SYSCALL_ERROR;
        }

        uint16_t port = getSyscallArg(0, buffer) & 0xffff;
        switch (invLabel) {
        case X86IOPortIn8:
            ret = ensurePortOperationAllowed(cap, port, 1);
            break;
        case X86IOPortIn16:
            ret = ensurePortOperationAllowed(cap, port, 2);
            break;
        case X86IOPortIn32:
            ret = ensurePortOperationAllowed(cap, port, 4);
            break;
        }
        if (ret != EXCEPTION_NONE) {
            return ret;
        }
        setThreadState(ksCurThread, ThreadState_Restart);
        return invokeX86PortIn(invLabel, port, call);
    } else if (invLabel == X86IOPortOut8 || invLabel == X86IOPortOut16 || invLabel == X86IOPortOut32) {

        if (length < 2) {
            ;
            current_syscall_error.type = seL4_TruncatedMessage;
            return EXCEPTION_SYSCALL_ERROR;
        }

        uint16_t port = getSyscallArg(0, buffer) & 0xffff;
        seL4_Word raw_data = getSyscallArg(1, buffer);





        uint32_t data = 0;

        switch (invLabel) {
        case X86IOPortOut8:
            ret = ensurePortOperationAllowed(cap, port, 1);
            data = raw_data & 0xff;
            break;
        case X86IOPortOut16:
            ret = ensurePortOperationAllowed(cap, port, 2);
            data = raw_data & 0xffff;
            break;
        case X86IOPortOut32:
            ret = ensurePortOperationAllowed(cap, port, 4);
            data = raw_data & 0xffffffff;
            break;
        }
        if (ret != EXCEPTION_NONE) {
            return ret;
        }
        setThreadState(ksCurThread, ThreadState_Restart);
        return invokeX86PortOut(invLabel, port, data);
    } else {
        ;
        current_syscall_error.type = seL4_IllegalOperation;
        return EXCEPTION_SYSCALL_ERROR;
    }
}

void setIOPortMask(void *ioport_bitmap, uint16_t low, uint16_t high, bool_t set)
{

    word_t_may_alias *bitmap = ioport_bitmap;

    int low_word = low >> 6;
    int high_word = high >> 6;
    int low_index = low & ((1ul << (6)) - 1ul);
    int high_index = high & ((1ul << (6)) - 1ul);



    if (low_word == high_word) {
        apply_pattern(bitmap + low_word, make_pattern(low_index, high_index + 1), set);
    } else {

        apply_pattern(bitmap + low_word, make_pattern(low_index, 64), set);
        low_word++;

        while (low_word < high_word) {
            apply_pattern(bitmap + low_word, ~(word_t)0, set);
            low_word++;
        }

        apply_pattern(bitmap + low_word, make_pattern(0, high_index + 1), set);
    }
}
# 1 "/workspace/seL4-c89/preconfigured/src/arch/x86/object/iospace.c"
# 1 "/workspace/seL4-c89/preconfigured/src/arch/x86/object/objecttype.c"
# 23 "/workspace/seL4-c89/preconfigured/src/arch/x86/object/objecttype.c"
deriveCap_ret_t Arch_deriveCap(cte_t *slot, cap_t cap)
{
    deriveCap_ret_t ret;

    switch (cap_get_capType(cap)) {
    case cap_page_table_cap:
        if (cap_page_table_cap_get_capPTIsMapped(cap)) {
            ret.cap = cap;
            ret.status = EXCEPTION_NONE;
        } else {
            ;
            current_syscall_error.type = seL4_IllegalOperation;
            ret.cap = cap_null_cap_new();
            ret.status = EXCEPTION_SYSCALL_ERROR;
        }
        return ret;

    case cap_page_directory_cap:
        if (cap_page_directory_cap_get_capPDIsMapped(cap)) {
            ret.cap = cap;
            ret.status = EXCEPTION_NONE;
        } else {
            ;
            current_syscall_error.type = seL4_IllegalOperation;
            ret.cap = cap_null_cap_new();
            ret.status = EXCEPTION_SYSCALL_ERROR;
        }
        return ret;

    case cap_asid_control_cap:
    case cap_asid_pool_cap:
        ret.cap = cap;
        ret.status = EXCEPTION_NONE;
        return ret;
    case cap_io_port_control_cap:
        ret.status = EXCEPTION_NONE;
        ret.cap = cap_null_cap_new();
        return ret;
    case cap_io_port_cap:
        ret.cap = cap;
        ret.status = EXCEPTION_NONE;
        return ret;
# 136 "/workspace/seL4-c89/preconfigured/src/arch/x86/object/objecttype.c"
    default:
        return Mode_deriveCap(slot, cap);
    }
}

cap_t __attribute__((__const__)) Arch_updateCapData(bool_t preserve, word_t data, cap_t cap)
{
# 164 "/workspace/seL4-c89/preconfigured/src/arch/x86/object/objecttype.c"
    return cap;
}

cap_t __attribute__((__const__)) Arch_maskCapRights(seL4_CapRights_t cap_rights_mask, cap_t cap)
{
    if (cap_get_capType(cap) == cap_frame_cap) {
        vm_rights_t vm_rights;

        vm_rights = vmRightsFromWord(cap_frame_cap_get_capFVMRights(cap));
        vm_rights = maskVMRights(vm_rights, cap_rights_mask);
        return cap_frame_cap_set_capFVMRights(cap, wordFromVMRights(vm_rights));
    } else {
        return cap;
    }
}

finaliseCap_ret_t Arch_finaliseCap(cap_t cap, bool_t final)
{
    finaliseCap_ret_t fc_ret;

    switch (cap_get_capType(cap)) {
    case cap_page_directory_cap:
        if (final && cap_page_directory_cap_get_capPDIsMapped(cap)) {
            unmapPageDirectory(
                cap_page_directory_cap_get_capPDMappedASID(cap),
                cap_page_directory_cap_get_capPDMappedAddress(cap),
                ((pde_t *)(cap_page_directory_cap_get_capPDBasePtr(cap)))
            );
        }
        break;

    case cap_page_table_cap:
        if (final && cap_page_table_cap_get_capPTIsMapped(cap)) {
            unmapPageTable(
                cap_page_table_cap_get_capPTMappedASID(cap),
                cap_page_table_cap_get_capPTMappedAddress(cap),
                ((pte_t *)(cap_page_table_cap_get_capPTBasePtr(cap)))
            );
        }
        break;

    case cap_asid_pool_cap:
        if (final) {
            deleteASIDPool(
                cap_asid_pool_cap_get_capASIDBase(cap),
                ((asid_pool_t*)cap_asid_pool_cap_get_capASIDPool(cap))
            );
        }
        break;
    case cap_asid_control_cap:
    case cap_io_port_control_cap:
        break;
    case cap_io_port_cap:





        if (final) {
            fc_ret.remainder = cap_null_cap_new();
            fc_ret.cleanupInfo = cap;
            return fc_ret;
        }
        break;
# 283 "/workspace/seL4-c89/preconfigured/src/arch/x86/object/objecttype.c"
    default:
        return Mode_finaliseCap(cap, final);
    }

    fc_ret.remainder = cap_null_cap_new();
    fc_ret.cleanupInfo = cap_null_cap_new();
    return fc_ret;
}

bool_t __attribute__((__const__)) Arch_sameRegionAs(cap_t cap_a, cap_t cap_b)
{
    switch (cap_get_capType(cap_a)) {
    case cap_frame_cap:
        if (cap_get_capType(cap_b) == cap_frame_cap) {
            word_t botA, botB, topA, topB;
            botA = cap_frame_cap_get_capFBasePtr(cap_a);
            botB = cap_frame_cap_get_capFBasePtr(cap_b);
            topA = botA + ((1ul << (pageBitsForSize(cap_frame_cap_get_capFSize(cap_a)))) - 1ul);
            topB = botB + ((1ul << (pageBitsForSize(cap_frame_cap_get_capFSize(cap_b)))) - 1ul);
            return ((botA <= botB) && (topA >= topB) && (botB <= topB));
        }
        break;

    case cap_page_table_cap:
        if (cap_get_capType(cap_b) == cap_page_table_cap) {
            return cap_page_table_cap_get_capPTBasePtr(cap_a) ==
                   cap_page_table_cap_get_capPTBasePtr(cap_b);
        }
        break;

    case cap_page_directory_cap:
        if (cap_get_capType(cap_b) == cap_page_directory_cap) {
            return cap_page_directory_cap_get_capPDBasePtr(cap_a) ==
                   cap_page_directory_cap_get_capPDBasePtr(cap_b);
        }
        break;

    case cap_asid_control_cap:
        if (cap_get_capType(cap_b) == cap_asid_control_cap) {
            return true;
        }
        break;

    case cap_asid_pool_cap:
        if (cap_get_capType(cap_b) == cap_asid_pool_cap) {
            return cap_asid_pool_cap_get_capASIDPool(cap_a) ==
                   cap_asid_pool_cap_get_capASIDPool(cap_b);
        }
        break;

    case cap_io_port_control_cap:
        if (cap_get_capType(cap_b) == cap_io_port_control_cap ||
            cap_get_capType(cap_b) == cap_io_port_cap) {
            return true;
        }
        break;

    case cap_io_port_cap:
        if (cap_get_capType(cap_b) == cap_io_port_cap) {
            return cap_io_port_cap_get_capIOPortFirstPort(cap_a) ==
                    cap_io_port_cap_get_capIOPortFirstPort(cap_b) &&
                    cap_io_port_cap_get_capIOPortLastPort(cap_a) ==
                    cap_io_port_cap_get_capIOPortLastPort(cap_b);
        }
        break;
# 403 "/workspace/seL4-c89/preconfigured/src/arch/x86/object/objecttype.c"
    }

    return Mode_sameRegionAs(cap_a, cap_b);
}

bool_t __attribute__((__const__)) Arch_sameObjectAs(cap_t cap_a, cap_t cap_b)
{
    if (cap_get_capType(cap_a) == cap_io_port_control_cap &&
        cap_get_capType(cap_b) == cap_io_port_cap) {
        return false;
    }
    if (cap_get_capType(cap_a) == cap_frame_cap) {
        if (cap_get_capType(cap_b) == cap_frame_cap) {
            return ((cap_frame_cap_get_capFBasePtr(cap_a) ==
                     cap_frame_cap_get_capFBasePtr(cap_b)) &&
                    (cap_frame_cap_get_capFSize(cap_a) ==
                     cap_frame_cap_get_capFSize(cap_b)) &&
                    ((cap_frame_cap_get_capFIsDevice(cap_a) == 0) ==
                     (cap_frame_cap_get_capFIsDevice(cap_b) == 0)));
        }
    }
    return Arch_sameRegionAs(cap_a, cap_b);
}

word_t Arch_getObjectSize(word_t t)
{
    switch (t) {
    case seL4_X86_4K:
        return pageBitsForSize(X86_SmallPage);
    case seL4_X86_LargePageObject:
        return pageBitsForSize(X86_LargePage);
    case seL4_X86_PageTableObject:
        return 12;
    case seL4_X86_PageDirectoryObject:
        return 12;
    case seL4_X86_PDPTObject:
        return 12;
    case 0xffffff:
        return 12;
# 454 "/workspace/seL4-c89/preconfigured/src/arch/x86/object/objecttype.c"
    default:
        return Mode_getObjectSize(t);
    }
}

cap_t Arch_createObject(object_t t, void *regionBase, word_t userSize, bool_t deviceMemory)
{
# 498 "/workspace/seL4-c89/preconfigured/src/arch/x86/object/objecttype.c"
        return Mode_createObject(t, regionBase, userSize, deviceMemory);



}

exception_t Arch_decodeInvocation(
    word_t invLabel,
    word_t length,
    cptr_t cptr,
    cte_t *slot,
    cap_t cap,
    bool_t call,
    word_t *buffer
)
{
    switch (cap_get_capType(cap)) {
    case cap_asid_control_cap:
    case cap_asid_pool_cap:
        return decodeX86MMUInvocation(invLabel, length, cptr, slot, cap, call, buffer);
    case cap_io_port_control_cap:
        return decodeX86PortControlInvocation(invLabel, length, cptr, slot, cap, buffer);
    case cap_io_port_cap:
        return decodeX86PortInvocation(invLabel, length, cptr, slot, cap, call, buffer);
# 537 "/workspace/seL4-c89/preconfigured/src/arch/x86/object/objecttype.c"
    default:
        return Mode_decodeInvocation(invLabel, length, cptr, slot, cap, call, buffer);
    }
}

void Arch_prepareThreadDelete(tcb_t *thread)
{

    fpuRelease(thread);
}

void Arch_postCapDeletion(cap_t cap)
{
    if (cap_get_capType(cap) == cap_io_port_cap) {
        uint16_t first_port = cap_io_port_cap_get_capIOPortFirstPort(cap);
        uint16_t last_port = cap_io_port_cap_get_capIOPortLastPort(cap);

        freeIOPortRange(first_port, last_port);
    }
}
# 1 "/workspace/seL4-c89/preconfigured/src/arch/x86/object/tcb.c"
# 11 "/workspace/seL4-c89/preconfigured/src/arch/x86/object/tcb.c"
# 1 "/workspace/seL4-c89/preconfigured/include/arch/x86/arch/object/tcb.h" 1






       
# 12 "/workspace/seL4-c89/preconfigured/src/arch/x86/object/tcb.c" 2


word_t __attribute__((__const__)) Arch_decodeTransfer(word_t flags)
{
    return 0;
}

exception_t __attribute__((__const__)) Arch_performTransfer(word_t arch, tcb_t *tcb_src, tcb_t *tcb_dest)
{
    return EXCEPTION_NONE;
}
# 1 "/workspace/seL4-c89/preconfigured/src/arch/x86/object/vcpu.c"
# 1 "/workspace/seL4-c89/preconfigured/src/arch/x86/smp/ipi.c"
# 1 "/workspace/seL4-c89/preconfigured/src/assert.c"
# 1 "/workspace/seL4-c89/preconfigured/src/benchmark/benchmark.c"
# 1 "/workspace/seL4-c89/preconfigured/src/benchmark/benchmark_track.c"
# 1 "/workspace/seL4-c89/preconfigured/src/benchmark/benchmark_utilisation.c"
# 1 "/workspace/seL4-c89/preconfigured/src/fastpath/fastpath.c"







# 1 "/workspace/seL4-c89/preconfigured/include/fastpath/fastpath.h" 1






       
# 89 "/workspace/seL4-c89/preconfigured/include/fastpath/fastpath.h"
static inline cap_t __attribute__((always_inline)) lookup_fp(cap_t cap, cptr_t cptr)
{
    word_t cptr2;
    cte_t *slot;
    word_t guardBits, radixBits, bits;
    word_t radix, capGuard;

    bits = 0;

    if (__builtin_expect(!!(! cap_capType_equals(cap, cap_cnode_cap)), 0)) {
        return cap_null_cap_new();
    }

    do {
        guardBits = cap_cnode_cap_get_capCNodeGuardSize(cap);
        radixBits = cap_cnode_cap_get_capCNodeRadix(cap);
        cptr2 = cptr << bits;

        capGuard = cap_cnode_cap_get_capCNodeGuard(cap);





        if (__builtin_expect(!!(guardBits), 1) && __builtin_expect(!!(cptr2 >> ((1 << 6) - guardBits) != capGuard), 0)) {
            return cap_null_cap_new();
        }

        radix = cptr2 << guardBits >> ((1 << 6) - radixBits);
        slot = ((cte_t *)(cap_cnode_cap_get_capCNodePtr(cap))) + radix;

        cap = slot->cap;
        bits += guardBits + radixBits;

    } while (__builtin_expect(!!(bits < (1 << 6) && cap_capType_equals(cap, cap_cnode_cap)), 0));

    if (__builtin_expect(!!(bits > (1 << 6)), 0)) {


        return cap_null_cap_new();
    }

    return cap;
}

static inline void thread_state_ptr_set_tsType_np(thread_state_t *ts_ptr, word_t tsType)
{
    ts_ptr->words[0] = tsType;
}

static inline void thread_state_ptr_mset_blockingObject_tsType(thread_state_t *ts_ptr,
                                                               word_t ep_ref,
                                                               word_t tsType)
{
    ts_ptr->words[0] = ep_ref | tsType;
}


static inline void cap_reply_cap_ptr_new_np(cap_t *cap_ptr, word_t capReplyCanGrant,
                                            word_t capReplyMaster, word_t capTCBPtr)
{

    cap_ptr->words[1] = (word_t)capTCBPtr;
    cap_ptr->words[0] = (capReplyMaster) | (capReplyCanGrant << 1) |
                        ((word_t)cap_reply_cap << 59);




}


static inline void endpoint_ptr_mset_epQueue_tail_state(endpoint_t *ep_ptr, word_t epQueue_tail,
                                                        word_t state)
{
    ep_ptr->words[0] = epQueue_tail | state;
}

static inline void endpoint_ptr_set_epQueue_head_np(endpoint_t *ep_ptr, word_t epQueue_head)
{
    ep_ptr->words[1] = epQueue_head;
}
# 9 "/workspace/seL4-c89/preconfigured/src/fastpath/fastpath.c" 2
# 19 "/workspace/seL4-c89/preconfigured/src/fastpath/fastpath.c"
void __attribute__((__noreturn__)) fastpath_call(word_t cptr, word_t msgInfo)
{
    seL4_MessageInfo_t info;
    cap_t ep_cap;
    endpoint_t *ep_ptr;
    word_t length;
    tcb_t *dest;
    word_t badge;
    cap_t newVTable;
    vspace_root_t *cap_pd;
    pde_t stored_hw_asid;
    word_t fault_type;
    dom_t dom;


    info = messageInfoFromWord_raw(msgInfo);
    length = seL4_MessageInfo_get_length(info);
    fault_type = seL4_Fault_get_seL4_FaultType(ksCurThread->tcbFault);



    if (__builtin_expect(!!(fastpath_mi_check(msgInfo) || fault_type != seL4_Fault_NullFault), 0)
                                                    ) {
        slowpath(SysCall);
    }


    ep_cap = lookup_fp((((cte_t *)((word_t)(ksCurThread)&~((1ul << (11)) - 1ul)))+(tcbCTable))->cap, cptr);


    if (__builtin_expect(!!(!cap_capType_equals(ep_cap, cap_endpoint_cap) || !cap_endpoint_cap_get_capCanSend(ep_cap)), 0)
                                                          ) {
        slowpath(SysCall);
    }


    ep_ptr = ((endpoint_t *)(cap_endpoint_cap_get_capEPPtr(ep_cap)));



    dest = ((tcb_t *)(endpoint_ptr_get_epQueue_head(ep_ptr)));


    if (__builtin_expect(!!(endpoint_ptr_get_state(ep_ptr) != EPState_Recv), 0)) {
        slowpath(SysCall);
    }
# 74 "/workspace/seL4-c89/preconfigured/src/fastpath/fastpath.c"
    newVTable = (((cte_t *)((word_t)(dest)&~((1ul << (11)) - 1ul)))+(tcbVTable))->cap;


    cap_pd = cap_vtable_cap_get_vspace_root_fp(newVTable);


    if (__builtin_expect(!!(! isValidVTableRoot_fp(newVTable)), 0)) {
        slowpath(SysCall);
    }
# 91 "/workspace/seL4-c89/preconfigured/src/fastpath/fastpath.c"
    stored_hw_asid.words[0] = cap_pml4_cap_get_capPML4MappedASID_fp(newVTable);
# 124 "/workspace/seL4-c89/preconfigured/src/fastpath/fastpath.c"
    dom = maxDom ? ksCurDomain : 0;

    if (__builtin_expect(!!(dest->tcbPriority < ksCurThread->tcbPriority && !isHighestPrio(dom, dest->tcbPriority)), 0)
                                                        ) {
        slowpath(SysCall);
    }



    if (__builtin_expect(!!(!cap_endpoint_cap_get_capCanGrant(ep_cap) && !cap_endpoint_cap_get_capCanGrantReply(ep_cap)), 0)
                                                                ) {
        slowpath(SysCall);
    }
# 145 "/workspace/seL4-c89/preconfigured/src/fastpath/fastpath.c"
    if (__builtin_expect(!!(dest->tcbDomain != ksCurDomain && 0 < maxDom), 0)) {
        slowpath(SysCall);
    }
# 178 "/workspace/seL4-c89/preconfigured/src/fastpath/fastpath.c"
    endpoint_ptr_set_epQueue_head_np(ep_ptr, ((word_t)(dest->tcbEPNext)));
    if (__builtin_expect(!!(dest->tcbEPNext), 0)) {
        dest->tcbEPNext->tcbEPPrev = ((void *)0);
    } else {
        endpoint_ptr_mset_epQueue_tail_state(ep_ptr, 0, EPState_Idle);
    }

    badge = cap_endpoint_cap_get_capEPBadge(ep_cap);


    thread_state_ptr_set_tsType_np(&ksCurThread->tcbState,
                                   ThreadState_BlockedOnReply);
# 209 "/workspace/seL4-c89/preconfigured/src/fastpath/fastpath.c"
    cte_t *replySlot = (((cte_t *)((word_t)(ksCurThread)&~((1ul << (11)) - 1ul)))+(tcbReply));


    cte_t *callerSlot = (((cte_t *)((word_t)(dest)&~((1ul << (11)) - 1ul)))+(tcbCaller));


    word_t replyCanGrant = thread_state_ptr_get_blockingIPCCanGrant(&dest->tcbState);;
    cap_reply_cap_ptr_new_np(&callerSlot->cap, replyCanGrant, 0,
                             ((word_t)(ksCurThread)));
    mdb_node_ptr_set_mdbPrev_np(&callerSlot->cteMDBNode, ((word_t)(replySlot)));
    mdb_node_ptr_mset_mdbNext_mdbRevocable_mdbFirstBadged(
        &replySlot->cteMDBNode, ((word_t)(callerSlot)), 1, 1);


    fastpath_copy_mrs(length, ksCurThread, dest);


    thread_state_ptr_set_tsType_np(&dest->tcbState,
                                   ThreadState_Running);
    switchToThread_fp(dest, cap_pd, stored_hw_asid);

    msgInfo = wordFromMessageInfo(seL4_MessageInfo_set_capsUnwrapped(info, 0));

    fastpath_restore(badge, msgInfo, ksCurThread);
}
# 242 "/workspace/seL4-c89/preconfigured/src/fastpath/fastpath.c"
void __attribute__((__noreturn__)) fastpath_reply_recv(word_t cptr, word_t msgInfo)

{
    seL4_MessageInfo_t info;
    cap_t ep_cap;
    endpoint_t *ep_ptr;
    word_t length;
    tcb_t *caller;
    word_t badge;
    tcb_t *endpointTail;
    word_t fault_type;

    cap_t newVTable;
    vspace_root_t *cap_pd;
    pde_t stored_hw_asid;
    dom_t dom;


    info = messageInfoFromWord_raw(msgInfo);
    length = seL4_MessageInfo_get_length(info);
    fault_type = seL4_Fault_get_seL4_FaultType(ksCurThread->tcbFault);



    if (__builtin_expect(!!(fastpath_mi_check(msgInfo) || fault_type != seL4_Fault_NullFault), 0)
                                                    ) {
        slowpath(SysReplyRecv);
    }


    ep_cap = lookup_fp((((cte_t *)((word_t)(ksCurThread)&~((1ul << (11)) - 1ul)))+(tcbCTable))->cap,
                       cptr);


    if (__builtin_expect(!!(!cap_capType_equals(ep_cap, cap_endpoint_cap) || !cap_endpoint_cap_get_capCanReceive(ep_cap)), 0)
                                                             ) {
        slowpath(SysReplyRecv);
    }
# 292 "/workspace/seL4-c89/preconfigured/src/fastpath/fastpath.c"
    if (__builtin_expect(!!(ksCurThread->tcbBoundNotification && notification_ptr_get_state(ksCurThread->tcbBoundNotification) == NtfnState_Active), 0)
                                                                                                               ) {
        slowpath(SysReplyRecv);
    }


    ep_ptr = ((endpoint_t *)(cap_endpoint_cap_get_capEPPtr(ep_cap)));


    if (__builtin_expect(!!(endpoint_ptr_get_state(ep_ptr) == EPState_Send), 0)) {
        slowpath(SysReplyRecv);
    }
# 320 "/workspace/seL4-c89/preconfigured/src/fastpath/fastpath.c"
    cte_t *callerSlot = (((cte_t *)((word_t)(ksCurThread)&~((1ul << (11)) - 1ul)))+(tcbCaller));
    cap_t callerCap = callerSlot->cap;
    if (__builtin_expect(!!(!fastpath_reply_cap_check(callerCap)), 0)) {
        slowpath(SysReplyRecv);
    }


    caller = ((tcb_t *)(cap_reply_cap_get_capTCBPtr(callerCap)));
# 339 "/workspace/seL4-c89/preconfigured/src/fastpath/fastpath.c"
    fault_type = seL4_Fault_get_seL4_FaultType(caller->tcbFault);



    if (__builtin_expect(!!(fault_type != seL4_Fault_NullFault), 0)) {
        slowpath(SysReplyRecv);
    }







    newVTable = (((cte_t *)((word_t)(caller)&~((1ul << (11)) - 1ul)))+(tcbVTable))->cap;


    cap_pd = cap_vtable_cap_get_vspace_root_fp(newVTable);


    if (__builtin_expect(!!(! isValidVTableRoot_fp(newVTable)), 0)) {
        slowpath(SysReplyRecv);
    }







    stored_hw_asid.words[0] = cap_pml4_cap_get_capPML4MappedASID(newVTable);
# 401 "/workspace/seL4-c89/preconfigured/src/fastpath/fastpath.c"
    dom = maxDom ? ksCurDomain : 0;
    if (__builtin_expect(!!(!isHighestPrio(dom, caller->tcbPriority)), 0)) {
        slowpath(SysReplyRecv);
    }
# 414 "/workspace/seL4-c89/preconfigured/src/fastpath/fastpath.c"
    if (__builtin_expect(!!(caller->tcbDomain != ksCurDomain && 0 < maxDom), 0)) {
        slowpath(SysReplyRecv);
    }
# 442 "/workspace/seL4-c89/preconfigured/src/fastpath/fastpath.c"
    thread_state_ptr_mset_blockingObject_tsType(
        &ksCurThread->tcbState, (word_t)ep_ptr, ThreadState_BlockedOnReceive);







    thread_state_ptr_set_blockingIPCCanGrant(&ksCurThread->tcbState,
                                             cap_endpoint_cap_get_capCanGrant(ep_cap));;



    endpointTail = endpoint_ptr_get_epQueue_tail_fp(ep_ptr);
    if (__builtin_expect(!!(!endpointTail), 1)) {
        ksCurThread->tcbEPPrev = ((void *)0);
        ksCurThread->tcbEPNext = ((void *)0);


        endpoint_ptr_set_epQueue_head_np(ep_ptr, ((word_t)(ksCurThread)));
        endpoint_ptr_mset_epQueue_tail_state(ep_ptr, ((word_t)(ksCurThread)),
                                             EPState_Recv);
    } else {







        endpointTail->tcbEPNext = ksCurThread;
        ksCurThread->tcbEPPrev = endpointTail;
        ksCurThread->tcbEPNext = ((void *)0);


        endpoint_ptr_mset_epQueue_tail_state(ep_ptr, ((word_t)(ksCurThread)),
                                             EPState_Recv);

    }
# 501 "/workspace/seL4-c89/preconfigured/src/fastpath/fastpath.c"
    mdb_node_ptr_mset_mdbNext_mdbRevocable_mdbFirstBadged(
        &((cte_t *)(mdb_node_get_mdbPrev(callerSlot->cteMDBNode)))->cteMDBNode,
        0, 1, 1);
    callerSlot->cap = cap_null_cap_new();
    callerSlot->cteMDBNode = mdb_node_new(0, false, false, 0);
# 536 "/workspace/seL4-c89/preconfigured/src/fastpath/fastpath.c"
        badge = 0;

        fastpath_copy_mrs(length, ksCurThread, caller);


        thread_state_ptr_set_tsType_np(&caller->tcbState, ThreadState_Running);
        switchToThread_fp(caller, cap_pd, stored_hw_asid);

        msgInfo = wordFromMessageInfo(seL4_MessageInfo_set_capsUnwrapped(info, 0));

        fastpath_restore(badge, msgInfo, ksCurThread);




}
# 1 "/workspace/seL4-c89/preconfigured/src/inlines.c"
# 10 "/workspace/seL4-c89/preconfigured/src/inlines.c"
lookup_fault_t current_lookup_fault;
seL4_Fault_t current_fault;
syscall_error_t current_syscall_error;
# 1 "/workspace/seL4-c89/preconfigured/src/kernel/boot.c"
# 21 "/workspace/seL4-c89/preconfigured/src/kernel/boot.c"
__attribute__((__section__(".boot.bss"))) ndks_boot_t ndks_boot;

__attribute__((__section__(".boot.bss"))) rootserver_mem_t rootserver;
__attribute__((__section__(".boot.bss"))) static region_t rootserver_mem;



extern char ki_boot_end[1];
__attribute__((__section__(".boot.text"))) p_region_t get_p_reg_kernel_img_boot(void)
{
    return (p_region_t) {
        .start = addrFromKPPtr((const void *)(0xffffffff80000000ul + 0x00100000ul)),
        .end = addrFromKPPtr(ki_boot_end)
    };
}


__attribute__((__section__(".boot.text"))) p_region_t get_p_reg_kernel_img(void)
{
    return (p_region_t) {
        .start = addrFromKPPtr((const void *)(0xffffffff80000000ul + 0x00100000ul)),
        .end = addrFromKPPtr(ki_end)
    };
}

__attribute__((__section__(".boot.text"))) static void merge_regions(void)
{

    for (word_t i = 1; i < ndks_boot.resv_count;) {
        if (ndks_boot.reserved[i - 1].end == ndks_boot.reserved[i].start) {

            ndks_boot.reserved[i - 1].end = ndks_boot.reserved[i].end;

            for (word_t j = i + 1; j < ndks_boot.resv_count; j++) {
                ndks_boot.reserved[j - 1] = ndks_boot.reserved[j];
            }

            ndks_boot.resv_count--;

        } else {
            i++;
        }
    }
}

__attribute__((__section__(".boot.text"))) bool_t reserve_region(p_region_t reg)
{
    word_t i;
    ;
    if (reg.start == reg.end) {
        return true;
    }


    for (i = 0; i < ndks_boot.resv_count; i++) {

        if (ndks_boot.reserved[i].start == reg.end) {
            ndks_boot.reserved[i].start = reg.start;
            merge_regions();
            return true;
        }
        if (ndks_boot.reserved[i].end == reg.start) {
            ndks_boot.reserved[i].end = reg.end;
            merge_regions();
            return true;
        }

        if (ndks_boot.reserved[i].start > reg.end) {

            if (ndks_boot.resv_count + 1 >= (16 + 1 + ((-((0xffffffffc0000000ul + (1ul << (12))) + (1ul << (12)) * 1)) >> 12) + 2)) {
                ((void)(0))

                                                                 ;
                return false;
            }
            for (word_t j = ndks_boot.resv_count; j > i; j--) {
                ndks_boot.reserved[j] = ndks_boot.reserved[j - 1];
            }

            ndks_boot.reserved[i] = reg;
            ndks_boot.resv_count++;
            return true;
        }
    }

    if (i + 1 == (16 + 1 + ((-((0xffffffffc0000000ul + (1ul << (12))) + (1ul << (12)) * 1)) >> 12) + 2)) {
        ((void)(0))

                                                         ;
        return false;
    }

    ndks_boot.reserved[i] = reg;
    ndks_boot.resv_count++;

    return true;
}

__attribute__((__section__(".boot.text"))) static bool_t insert_region(region_t reg)
{
    ;
    if (is_reg_empty(reg)) {
        return true;
    }

    for (word_t i = 0; i < (sizeof(ndks_boot.freemem) / sizeof((ndks_boot.freemem)[0])); i++) {
        if (is_reg_empty(ndks_boot.freemem[i])) {
            reserve_region(pptr_to_paddr_reg(reg));
            ndks_boot.freemem[i] = reg;
            return true;
        }
    }
# 143 "/workspace/seL4-c89/preconfigured/src/kernel/boot.c"
    ((void)(0))

                                                                 ;




    ;

    return false;
}

__attribute__((__section__(".boot.text"))) static pptr_t alloc_rootserver_obj(word_t size_bits, word_t n)
{
    pptr_t allocated = rootserver_mem.start;

    ;
    rootserver_mem.start += (n * (1ul << (size_bits)));

    ;
    memzero((void *) allocated, n * (1ul << (size_bits)));
    return allocated;
}

__attribute__((__section__(".boot.text"))) static word_t rootserver_max_size_bits(word_t extra_bi_size_bits)
{
    word_t cnode_size_bits = 19 + 5;
    word_t max = (((cnode_size_bits)>(12))?(cnode_size_bits):(12));
    return (((max)>(extra_bi_size_bits))?(max):(extra_bi_size_bits));
}

__attribute__((__section__(".boot.text"))) static word_t calculate_rootserver_size(v_region_t it_v_reg, word_t extra_bi_size_bits)
{

    word_t size = (1ul << (19 + 5));
    size += (1ul << (11));
    size += (1ul << (12));
    size += (1ul << (12));
    size += (1ul << (12));
    size += extra_bi_size_bits > 0 ? (1ul << (extra_bi_size_bits)) : 0;
    size += (1ul << (12));




    return size + arch_get_n_paging(it_v_reg) * (1ul << (12));
}

__attribute__((__section__(".boot.text"))) static void maybe_alloc_extra_bi(word_t cmp_size_bits, word_t extra_bi_size_bits)
{
    if (extra_bi_size_bits >= cmp_size_bits && rootserver.extra_bi == 0) {
        rootserver.extra_bi = alloc_rootserver_obj(extra_bi_size_bits, 1);
    }
}




__attribute__((__section__(".boot.text"))) static void create_rootserver_objects(pptr_t start, v_region_t it_v_reg,
                                                word_t extra_bi_size_bits)
{

    word_t cnode_size_bits = 19 + 5;
    word_t max = rootserver_max_size_bits(extra_bi_size_bits);

    word_t size = calculate_rootserver_size(it_v_reg, extra_bi_size_bits);
    rootserver_mem.start = start;
    rootserver_mem.end = start + size;

    maybe_alloc_extra_bi(max, extra_bi_size_bits);



    rootserver.cnode = alloc_rootserver_obj(cnode_size_bits, 1);
    maybe_alloc_extra_bi(12, extra_bi_size_bits);
    rootserver.vspace = alloc_rootserver_obj(12, 1);
# 227 "/workspace/seL4-c89/preconfigured/src/kernel/boot.c"
    maybe_alloc_extra_bi(12, extra_bi_size_bits);
    typedef int __assert_failed_invalid_seL4_ASIDPoolBits[(12 == 12) ? 1 : -1] __attribute__((unused));;
    rootserver.asid_pool = alloc_rootserver_obj(12, 1);
    rootserver.ipc_buf = alloc_rootserver_obj(12, 1);




    typedef int __assert_failed_invalid_seL4_BootInfoFrameBits[(12 == 12) ? 1 : -1] __attribute__((unused));;
    rootserver.boot_info = alloc_rootserver_obj(12, 1);







    word_t n = arch_get_n_paging(it_v_reg);
    rootserver.paging.start = alloc_rootserver_obj(12, n);
    rootserver.paging.end = rootserver.paging.start + n * (1ul << (12));



    rootserver.tcb = alloc_rootserver_obj(11, 1);






    ;
}

__attribute__((__section__(".boot.text"))) void write_slot(slot_ptr_t slot_ptr, cap_t cap)
{
    slot_ptr->cap = cap;

    slot_ptr->cteMDBNode = mdb_node_new(0, false, false, 0);
    mdb_node_ptr_set_mdbRevocable(&slot_ptr->cteMDBNode, true);
    mdb_node_ptr_set_mdbFirstBadged(&slot_ptr->cteMDBNode, true);
}




typedef int __assert_failed_root_cnode_size_valid[(19 < 32 - 5 && (1ul << (19)) >= seL4_NumInitialCaps && 19 >= (12 - 5)) ? 1 : -1] __attribute__((unused));




__attribute__((__section__(".boot.text"))) cap_t
create_root_cnode(void)
{
    cap_t cap = cap_cnode_cap_new(
                    19,
                    (1 << 6) - 19,
                    0,
                    rootserver.cnode);


    write_slot((((slot_ptr_t)(rootserver.cnode)) + (seL4_CapInitThreadCNode)), cap);

    return cap;
}


typedef int __assert_failed_num_domains_valid[(16 >= 1 && 16 <= 256) ? 1 : -1] __attribute__((unused));

typedef int __assert_failed_num_priorities_valid[(256 >= 1 && 256 <= 256) ? 1 : -1] __attribute__((unused));


__attribute__((__section__(".boot.text"))) void
create_domain_cap(cap_t root_cnode_cap)
{

    ;
    for (word_t i = 0; i < ksDomScheduleLength; i++) {
        ;
        ;
    }

    cap_t cap = cap_domain_cap_new();
    write_slot((((slot_ptr_t)(((pptr_t)cap_get_capPtr(root_cnode_cap)))) + (seL4_CapDomain)), cap);
}

__attribute__((__section__(".boot.text"))) cap_t create_ipcbuf_frame_cap(cap_t root_cnode_cap, cap_t pd_cap, vptr_t vptr)
{
    clearMemory((void *)rootserver.ipc_buf, 12);


    cap_t cap = create_mapped_it_frame_cap(pd_cap, rootserver.ipc_buf, vptr, 1, false, false);
    write_slot((((slot_ptr_t)(((pptr_t)cap_get_capPtr(root_cnode_cap)))) + (seL4_CapInitThreadIPCBuffer)), cap);

    return cap;
}

__attribute__((__section__(".boot.text"))) void create_bi_frame_cap(cap_t root_cnode_cap, cap_t pd_cap, vptr_t vptr)
{

    cap_t cap = create_mapped_it_frame_cap(pd_cap, rootserver.boot_info, vptr, 1, false, false);
    write_slot((((slot_ptr_t)(((pptr_t)cap_get_capPtr(root_cnode_cap)))) + (seL4_CapBootInfoFrame)), cap);
}
# 339 "/workspace/seL4-c89/preconfigured/src/kernel/boot.c"
__attribute__((__section__(".boot.text"))) word_t calculate_extra_bi_size_bits(word_t extra_size)
{
    if (extra_size == 0) {
        return 0;
    }

    word_t clzl_ret = clzl((((((extra_size) - 1ul) >> (12)) + 1ul) << (12)));
    word_t msb = 64 - 1 - clzl_ret;



    if (extra_size > (1ul << (msb))) {
        msb++;
    }
    return msb;
}

__attribute__((__section__(".boot.text"))) void populate_bi_frame(node_id_t node_id, word_t num_nodes,
                                 vptr_t ipcbuf_vptr, word_t extra_bi_size)
{

    clearMemory((void *)rootserver.boot_info, 12);
    if (extra_bi_size) {
        clearMemory((void *)rootserver.extra_bi,
                    calculate_extra_bi_size_bits(extra_bi_size));
    }


    seL4_BootInfo *bi = ((seL4_BootInfo*)(rootserver.boot_info));
    bi->nodeID = node_id;
    bi->numNodes = num_nodes;
    bi->numIOPTLevels = 0;
    bi->ipcBuffer = (seL4_IPCBuffer *)ipcbuf_vptr;
    bi->initThreadCNodeSizeBits = 19;
    bi->initThreadDomain = ksDomSchedule[ksDomScheduleIdx].domain;
    bi->extraLen = extra_bi_size;

    ndks_boot.bi_frame = bi;
    ndks_boot.slot_pos_cur = seL4_NumInitialCaps;
}

__attribute__((__section__(".boot.text"))) bool_t provide_cap(cap_t root_cnode_cap, cap_t cap)
{
    if (ndks_boot.slot_pos_cur >= (1ul << (19))) {
        ((void)(0))

                                                ;
        return false;
    }
    write_slot((((slot_ptr_t)(((pptr_t)cap_get_capPtr(root_cnode_cap)))) + (ndks_boot.slot_pos_cur)), cap);
    ndks_boot.slot_pos_cur++;
    return true;
}

__attribute__((__section__(".boot.text"))) create_frames_of_region_ret_t create_frames_of_region(
    cap_t root_cnode_cap,
    cap_t pd_cap,
    region_t reg,
    bool_t do_map,
    sword_t pv_offset
)
{
    pptr_t f;
    cap_t frame_cap;
    seL4_SlotPos slot_pos_before;
    seL4_SlotPos slot_pos_after;

    slot_pos_before = ndks_boot.slot_pos_cur;

    for (f = reg.start; f < reg.end; f += (1ul << (12))) {
        if (do_map) {
            frame_cap = create_mapped_it_frame_cap(pd_cap, f, addrFromPPtr((void *)(f - pv_offset)), 1, false, true);
        } else {
            frame_cap = create_unmapped_it_frame_cap(f, false);
        }
        if (!provide_cap(root_cnode_cap, frame_cap)) {
            return (create_frames_of_region_ret_t) {
                .region = (seL4_SlotRegion){ .start = 0, .end = 0 },
                .success = false
            };
        }
    }

    slot_pos_after = ndks_boot.slot_pos_cur;

    return (create_frames_of_region_ret_t) {
        .region = (seL4_SlotRegion) {
            .start = slot_pos_before,
            .end = slot_pos_after
        },
        .success = true
    };
}

__attribute__((__section__(".boot.text"))) cap_t create_it_asid_pool(cap_t root_cnode_cap)
{
    cap_t ap_cap = cap_asid_pool_cap_new(1 >> asidLowBits, rootserver.asid_pool);
    write_slot((((slot_ptr_t)(((pptr_t)cap_get_capPtr(root_cnode_cap)))) + (seL4_CapInitThreadASIDPool)), ap_cap);


    write_slot(
        (((slot_ptr_t)(((pptr_t)cap_get_capPtr(root_cnode_cap)))) + (seL4_CapASIDControl)),
        cap_asid_control_cap_new()
    );

    return ap_cap;
}
# 477 "/workspace/seL4-c89/preconfigured/src/kernel/boot.c"
__attribute__((__section__(".boot.text"))) void create_idle_thread(void)
{
    pptr_t pptr;




        pptr = (pptr_t) &ksIdleThreadTCB[0];
        ksIdleThread = ((tcb_t *)(pptr + (1ul << ((11 - 1)))));
        configureIdleThread(ksIdleThread);



        ;
# 500 "/workspace/seL4-c89/preconfigured/src/kernel/boot.c"
}

__attribute__((__section__(".boot.text"))) tcb_t *create_initial_thread(cap_t root_cnode_cap, cap_t it_pd_cap, vptr_t ui_v_entry, vptr_t bi_frame_vptr,
                                       vptr_t ipcbuf_vptr, cap_t ipcbuf_cap)
{
    tcb_t *tcb = ((tcb_t *)(rootserver.tcb + (1ul << ((11 - 1)))));

    tcb->tcbTimeSlice = 5;


    Arch_initContext(&tcb->tcbArch.tcbContext);


    deriveCap_ret_t dc_ret = deriveCap((((slot_ptr_t)(((pptr_t)cap_get_capPtr(root_cnode_cap)))) + (seL4_CapInitThreadIPCBuffer)), ipcbuf_cap);
    if (dc_ret.status != EXCEPTION_NONE) {
        ((void)(0));
        return ((void *)0);
    }


    cteInsert(
        root_cnode_cap,
        (((slot_ptr_t)(((pptr_t)cap_get_capPtr(root_cnode_cap)))) + (seL4_CapInitThreadCNode)),
        (((slot_ptr_t)(rootserver.tcb)) + (tcbCTable))
    );
    cteInsert(
        it_pd_cap,
        (((slot_ptr_t)(((pptr_t)cap_get_capPtr(root_cnode_cap)))) + (seL4_CapInitThreadVSpace)),
        (((slot_ptr_t)(rootserver.tcb)) + (tcbVTable))
    );
    cteInsert(
        dc_ret.cap,
        (((slot_ptr_t)(((pptr_t)cap_get_capPtr(root_cnode_cap)))) + (seL4_CapInitThreadIPCBuffer)),
        (((slot_ptr_t)(rootserver.tcb)) + (tcbBuffer))
    );
    tcb->tcbIPCBuffer = ipcbuf_vptr;

    setRegister(tcb, capRegister, bi_frame_vptr);
    setNextPC(tcb, ui_v_entry);






    tcb->tcbPriority = seL4_MaxPrio;
    tcb->tcbMCP = seL4_MaxPrio;
    tcb->tcbDomain = ksDomSchedule[ksDomScheduleIdx].domain;

    setupReplyMaster(tcb);

    setThreadState(tcb, ThreadState_Running);

    ksCurDomain = ksDomSchedule[ksDomScheduleIdx].domain;



    ksDomainTime = ksDomSchedule[ksDomScheduleIdx].length;

    ;


    ;



    cap_t cap = cap_thread_cap_new(((word_t)(tcb)));
    write_slot((((slot_ptr_t)(((pptr_t)cap_get_capPtr(root_cnode_cap)))) + (seL4_CapInitThreadTCB)), cap);
# 577 "/workspace/seL4-c89/preconfigured/src/kernel/boot.c"
    return tcb;
}
# 600 "/workspace/seL4-c89/preconfigured/src/kernel/boot.c"
__attribute__((__section__(".boot.text"))) void init_core_state(tcb_t *scheduler_action)
{

    ksCurFPUOwner = ((void *)0);
# 614 "/workspace/seL4-c89/preconfigured/src/kernel/boot.c"
    ksSchedulerAction = scheduler_action;
    ksCurThread = ksIdleThread;
# 624 "/workspace/seL4-c89/preconfigured/src/kernel/boot.c"
}
# 637 "/workspace/seL4-c89/preconfigured/src/kernel/boot.c"
__attribute__((__section__(".boot.text"))) static bool_t pptr_in_kernel_window(pptr_t pptr)
{
    return pptr >= 0xffffff8000000000ul && pptr < 0xffffffff80000000ul;
}
# 655 "/workspace/seL4-c89/preconfigured/src/kernel/boot.c"
__attribute__((__section__(".boot.text"))) static bool_t provide_untyped_cap(
    cap_t root_cnode_cap,
    bool_t device_memory,
    pptr_t pptr,
    word_t size_bits,
    seL4_SlotPos first_untyped_slot
)
{
    bool_t ret;
    cap_t ut_cap;





    if (size_bits > 47 || size_bits < 4) {
        ((void)(0));
        return false;
    }


    if (!(!((pptr) & ((1ul << (size_bits)) - 1ul)))) {
        ((void)(0));
        return false;
    }


    if (!device_memory && !pptr_in_kernel_window(pptr)) {
        ((void)(0))
                            ;
        return false;
    }




    if (!device_memory && !pptr_in_kernel_window(pptr + ((1ul << (size_bits)) - 1ul))) {
        ((void)(0))
                                       ;
        return false;
    }

    word_t i = ndks_boot.slot_pos_cur - first_untyped_slot;
    if (i < 50) {
        ndks_boot.bi_frame->untypedList[i] = (seL4_UntypedDesc) {
            .paddr = addrFromPPtr((void *)pptr),
            .sizeBits = size_bits,
            .isDevice = device_memory,
            .padding = {0}
        };
        ut_cap = cap_untyped_cap_new(((1ul << ((size_bits) - 4))),
                                     device_memory, size_bits, pptr);
        ret = provide_cap(root_cnode_cap, ut_cap);
    } else {
        ((void)(0));
        ret = true;
    }
    return ret;
}
# 730 "/workspace/seL4-c89/preconfigured/src/kernel/boot.c"
__attribute__((__section__(".boot.text"))) static bool_t create_untypeds_for_region(
    cap_t root_cnode_cap,
    bool_t device_memory,
    region_t reg,
    seL4_SlotPos first_untyped_slot
)
{






    while (!is_reg_empty(reg)) {




        unsigned int size_bits = 64 - 1 - clzl(reg.end - reg.start);

        if (size_bits > 47) {
            size_bits = 47;
        }



        if (0 != reg.start) {
            unsigned int align_bits = ctzl(reg.start);
            if (size_bits > align_bits) {
                size_bits = align_bits;
            }
        }




        if (size_bits >= 4) {
            if (!provide_untyped_cap(root_cnode_cap, device_memory, reg.start, size_bits, first_untyped_slot)) {
                return false;
            }
        }
        reg.start += (1ul << (size_bits));
    }
    return true;
}

__attribute__((__section__(".boot.text"))) bool_t create_untypeds(cap_t root_cnode_cap)
{
    seL4_SlotPos first_untyped_slot = ndks_boot.slot_pos_cur;

    paddr_t start = 0;
    for (word_t i = 0; i < ndks_boot.resv_count; i++) {
        if (start < ndks_boot.reserved[i].start) {
            region_t reg = paddr_to_pptr_reg((p_region_t) {
                start, ndks_boot.reserved[i].start
            });
            if (!create_untypeds_for_region(root_cnode_cap, true, reg, first_untyped_slot)) {
                ((void)(0))

                                                           ;
                return false;
            }
        }

        start = ndks_boot.reserved[i].end;
    }

    if (start < 140737488355328) {
        region_t reg = paddr_to_pptr_reg((p_region_t) {
            start, 140737488355328
        });

        if (!create_untypeds_for_region(root_cnode_cap, true, reg, first_untyped_slot)) {
            ((void)(0))

                                      ;
            return false;
        }
    }





    region_t boot_mem_reuse_reg = paddr_to_pptr_reg(get_p_reg_kernel_img_boot());
    if (!create_untypeds_for_region(root_cnode_cap, false, boot_mem_reuse_reg, first_untyped_slot)) {
        ((void)(0))

                                                                ;
        return false;
    }


    for (word_t i = 0; i < (sizeof(ndks_boot.freemem) / sizeof((ndks_boot.freemem)[0])); i++) {
        region_t reg = ndks_boot.freemem[i];
        ndks_boot.freemem[i] = (region_t){ .start = 0, .end = 0 };
        if (!create_untypeds_for_region(root_cnode_cap, false, reg, first_untyped_slot)) {
            ((void)(0))

                                                       ;
            return false;
        }
    }

    ndks_boot.bi_frame->untyped = (seL4_SlotRegion) {
        .start = first_untyped_slot,
        .end = ndks_boot.slot_pos_cur
    };

    return true;
}

__attribute__((__section__(".boot.text"))) void bi_finalise(void)
{

    if (rootserver.paging.start != rootserver.paging.end) {
        ((void)(0))
                                                                                                                                    ;
    }

    ndks_boot.bi_frame->empty = (seL4_SlotRegion) {
        .start = ndks_boot.slot_pos_cur,
        .end = (1ul << (19))
    };
}

__attribute__((__section__(".boot.text"))) static inline pptr_t ceiling_kernel_window(pptr_t p)
{



    if (addrFromPPtr((void *)p) > (0xffffffff80000000ul - (0xffffff8000000000ul - 0x00000000ul))) {
        p = 0xffffffff80000000ul;
    }
    return p;
}

__attribute__((__section__(".boot.text"))) static bool_t check_available_memory(word_t n_available,
                                               const p_region_t *available)
{

    if (0 == n_available) {
        ((void)(0));
        return false;
    }

    ((void)(0));

    for (word_t i = 0; i < n_available; i++) {
        const p_region_t *r = &available[i];
        ((void)(0));


        if (r->start > r->end) {
            ((void)(0));
            return false;
        }


        if (r->start == r->end) {
            ((void)(0));
            return false;
        }



        if ((i > 0) && (r->start < available[i - 1].end)) {
            ((void)(0));
            return false;
        }
    }

    return true;
}


__attribute__((__section__(".boot.text"))) static bool_t check_reserved_memory(word_t n_reserved,
                                              const region_t *reserved)
{
    ((void)(0))
                      ;

    for (word_t i = 0; i < n_reserved; i++) {
        const region_t *r = &reserved[i];
        ((void)(0));


        if (r->start > r->end) {
            ((void)(0));
            return false;
        }



        if ((i > 0) && (r->start < reserved[i - 1].end)) {
            ((void)(0));
            return false;
        }
    }

    return true;
}



__attribute__((__section__(".boot.bss"))) static region_t avail_reg[16];




__attribute__((__section__(".boot.text"))) bool_t init_freemem(word_t n_available, const p_region_t *available,
                              word_t n_reserved, const region_t *reserved,
                              v_region_t it_v_reg, word_t extra_bi_size_bits)
{

    if (!check_available_memory(n_available, available)) {
        return false;
    }

    if (!check_reserved_memory(n_reserved, reserved)) {
        return false;
    }

    for (word_t i = 0; i < (sizeof(ndks_boot.freemem) / sizeof((ndks_boot.freemem)[0])); i++) {
        ndks_boot.freemem[i] = (region_t){ .start = 0, .end = 0 };
    }


    for (word_t i = 0; i < n_available; i++) {
        avail_reg[i] = paddr_to_pptr_reg(available[i]);
        avail_reg[i].end = ceiling_kernel_window(avail_reg[i].end);
        avail_reg[i].start = ceiling_kernel_window(avail_reg[i].start);
    }

    word_t a = 0;
    word_t r = 0;

    while (a < n_available && r < n_reserved) {
        if (reserved[r].start == reserved[r].end) {

            r++;
        } else if (avail_reg[a].start >= avail_reg[a].end) {

            a++;
        } else if (reserved[r].end <= avail_reg[a].start) {

            reserve_region(pptr_to_paddr_reg(reserved[r]));
            r++;
        } else if (reserved[r].start >= avail_reg[a].end) {

            insert_region(avail_reg[a]);
            a++;
        } else {

            if (reserved[r].start <= avail_reg[a].start) {


                avail_reg[a].start = (((avail_reg[a].end)<(reserved[r].end))?(avail_reg[a].end):(reserved[r].end));

            } else {
                ;


                region_t m = avail_reg[a];
                m.end = reserved[r].start;
                insert_region(m);
                if (avail_reg[a].end > reserved[r].end) {
                    avail_reg[a].start = reserved[r].end;


                } else {
                    a++;
                }
            }
        }
    }

    for (; r < n_reserved; r++) {
        if (reserved[r].start < reserved[r].end) {
            reserve_region(pptr_to_paddr_reg(reserved[r]));
        }
    }


    for (; a < n_available; a++) {
        if (avail_reg[a].start < avail_reg[a].end) {
            insert_region(avail_reg[a]);
        }
    }


    int i = (sizeof(ndks_boot.freemem) / sizeof((ndks_boot.freemem)[0])) - 1;
    if (!is_reg_empty(ndks_boot.freemem[i])) {
        ((void)(0))
                                                 ;
        return false;
    }

    for (; i >= 0 && is_reg_empty(ndks_boot.freemem[i]); i--);



    word_t size = calculate_rootserver_size(it_v_reg, extra_bi_size_bits);
    word_t max = rootserver_max_size_bits(extra_bi_size_bits);
    for (; i >= 0; i--) {

        ;



        ;






        int empty_index = i + 1;


        pptr_t unaligned_start = ndks_boot.freemem[i].end - size;
        pptr_t start = (((unaligned_start) >> (max)) << (max));


        if (unaligned_start <= ndks_boot.freemem[i].end
            && start >= ndks_boot.freemem[i].start) {
            create_rootserver_objects(start, it_v_reg, extra_bi_size_bits);


            ndks_boot.freemem[empty_index] = (region_t) {
                .start = start + size,
                .end = ndks_boot.freemem[i].end
            };

            ndks_boot.freemem[i].end = start;


            return true;
        }


        ndks_boot.freemem[empty_index] = ndks_boot.freemem[i];


        ndks_boot.freemem[i] = (region_t){ .start = 0, .end = 0 };
    }


    ((void)(0))
                                                                        ;
    return false;
}
# 1 "/workspace/seL4-c89/preconfigured/src/kernel/cspace.c"
# 15 "/workspace/seL4-c89/preconfigured/src/kernel/cspace.c"
lookupCap_ret_t lookupCap(tcb_t *thread, cptr_t cPtr)
{
    lookupSlot_raw_ret_t lu_ret;
    lookupCap_ret_t ret;

    lu_ret = lookupSlot(thread, cPtr);
    if (__builtin_expect(!!(lu_ret.status != EXCEPTION_NONE), 0)) {
        ret.status = lu_ret.status;
        ret.cap = cap_null_cap_new();
        return ret;
    }

    ret.status = EXCEPTION_NONE;
    ret.cap = lu_ret.slot->cap;
    return ret;
}

lookupCapAndSlot_ret_t lookupCapAndSlot(tcb_t *thread, cptr_t cPtr)
{
    lookupSlot_raw_ret_t lu_ret;
    lookupCapAndSlot_ret_t ret;

    lu_ret = lookupSlot(thread, cPtr);
    if (__builtin_expect(!!(lu_ret.status != EXCEPTION_NONE), 0)) {
        ret.status = lu_ret.status;
        ret.slot = ((void *)0);
        ret.cap = cap_null_cap_new();
        return ret;
    }

    ret.status = EXCEPTION_NONE;
    ret.slot = lu_ret.slot;
    ret.cap = lu_ret.slot->cap;
    return ret;
}

lookupSlot_raw_ret_t lookupSlot(tcb_t *thread, cptr_t capptr)
{
    cap_t threadRoot;
    resolveAddressBits_ret_t res_ret;
    lookupSlot_raw_ret_t ret;

    threadRoot = (((cte_t *)((word_t)(thread)&~((1ul << (11)) - 1ul)))+(tcbCTable))->cap;
    res_ret = resolveAddressBits(threadRoot, capptr, (1 << 6));

    ret.status = res_ret.status;
    ret.slot = res_ret.slot;
    return ret;
}

lookupSlot_ret_t lookupSlotForCNodeOp(bool_t isSource, cap_t root, cptr_t capptr,
                                      word_t depth)
{
    resolveAddressBits_ret_t res_ret;
    lookupSlot_ret_t ret;

    ret.slot = ((void *)0);

    if (__builtin_expect(!!(cap_get_capType(root) != cap_cnode_cap), 0)) {
        current_syscall_error.type = seL4_FailedLookup;
        current_syscall_error.failedLookupWasSource = isSource;
        current_lookup_fault = lookup_fault_invalid_root_new();
        ret.status = EXCEPTION_SYSCALL_ERROR;
        return ret;
    }

    if (__builtin_expect(!!(depth < 1 || depth > (1 << 6)), 0)) {
        current_syscall_error.type = seL4_RangeError;
        current_syscall_error.rangeErrorMin = 1;
        current_syscall_error.rangeErrorMax = (1 << 6);
        ret.status = EXCEPTION_SYSCALL_ERROR;
        return ret;
    }
    res_ret = resolveAddressBits(root, capptr, depth);
    if (__builtin_expect(!!(res_ret.status != EXCEPTION_NONE), 0)) {
        current_syscall_error.type = seL4_FailedLookup;
        current_syscall_error.failedLookupWasSource = isSource;

        ret.status = EXCEPTION_SYSCALL_ERROR;
        return ret;
    }

    if (__builtin_expect(!!(res_ret.bitsRemaining != 0), 0)) {
        current_syscall_error.type = seL4_FailedLookup;
        current_syscall_error.failedLookupWasSource = isSource;
        current_lookup_fault =
            lookup_fault_depth_mismatch_new(0, res_ret.bitsRemaining);
        ret.status = EXCEPTION_SYSCALL_ERROR;
        return ret;
    }

    ret.slot = res_ret.slot;
    ret.status = EXCEPTION_NONE;
    return ret;
}

lookupSlot_ret_t lookupSourceSlot(cap_t root, cptr_t capptr, word_t depth)
{
    return lookupSlotForCNodeOp(true, root, capptr, depth);
}

lookupSlot_ret_t lookupTargetSlot(cap_t root, cptr_t capptr, word_t depth)
{
    return lookupSlotForCNodeOp(false, root, capptr, depth);
}

lookupSlot_ret_t lookupPivotSlot(cap_t root, cptr_t capptr, word_t depth)
{
    return lookupSlotForCNodeOp(true, root, capptr, depth);
}

resolveAddressBits_ret_t resolveAddressBits(cap_t nodeCap, cptr_t capptr, word_t n_bits)
{
    resolveAddressBits_ret_t ret;
    word_t radixBits, guardBits, levelBits, guard;
    word_t capGuard, offset;
    cte_t *slot;

    ret.bitsRemaining = n_bits;
    ret.slot = ((void *)0);

    if (__builtin_expect(!!(cap_get_capType(nodeCap) != cap_cnode_cap), 0)) {
        current_lookup_fault = lookup_fault_invalid_root_new();
        ret.status = EXCEPTION_LOOKUP_FAULT;
        return ret;
    }

    while (1) {
        radixBits = cap_cnode_cap_get_capCNodeRadix(nodeCap);
        guardBits = cap_cnode_cap_get_capCNodeGuardSize(nodeCap);
        levelBits = radixBits + guardBits;


        ;

        capGuard = cap_cnode_cap_get_capCNodeGuard(nodeCap);





        guard = (capptr >> ((n_bits - guardBits) & ((1ul << (6)) - 1ul))) & ((1ul << (guardBits)) - 1ul);
        if (__builtin_expect(!!(guardBits > n_bits || guard != capGuard), 0)) {
            current_lookup_fault =
                lookup_fault_guard_mismatch_new(capGuard, n_bits, guardBits);
            ret.status = EXCEPTION_LOOKUP_FAULT;
            return ret;
        }

        if (__builtin_expect(!!(levelBits > n_bits), 0)) {
            current_lookup_fault =
                lookup_fault_depth_mismatch_new(levelBits, n_bits);
            ret.status = EXCEPTION_LOOKUP_FAULT;
            return ret;
        }

        offset = (capptr >> (n_bits - levelBits)) & ((1ul << (radixBits)) - 1ul);
        slot = ((cte_t *)(cap_cnode_cap_get_capCNodePtr(nodeCap))) + offset;

        if (__builtin_expect(!!(n_bits == levelBits), 1)) {
            ret.status = EXCEPTION_NONE;
            ret.slot = slot;
            ret.bitsRemaining = 0;
            return ret;
        }



        n_bits -= levelBits;
        nodeCap = slot->cap;

        if (__builtin_expect(!!(cap_get_capType(nodeCap) != cap_cnode_cap), 0)) {
            ret.status = EXCEPTION_NONE;
            ret.slot = slot;
            ret.bitsRemaining = n_bits;
            return ret;
        }
    }
}
# 1 "/workspace/seL4-c89/preconfigured/src/kernel/faulthandler.c"
# 54 "/workspace/seL4-c89/preconfigured/src/kernel/faulthandler.c"
void handleFault(tcb_t *tptr)
{
    exception_t status;
    seL4_Fault_t fault = current_fault;

    status = sendFaultIPC(tptr);
    if (status != EXCEPTION_NONE) {
        handleDoubleFault(tptr, fault);
    }
}

exception_t sendFaultIPC(tcb_t *tptr)
{
    cptr_t handlerCPtr;
    cap_t handlerCap;
    lookupCap_ret_t lu_ret;
    lookup_fault_t original_lookup_fault;

    original_lookup_fault = current_lookup_fault;

    handlerCPtr = tptr->tcbFaultHandler;
    lu_ret = lookupCap(tptr, handlerCPtr);
    if (lu_ret.status != EXCEPTION_NONE) {
        current_fault = seL4_Fault_CapFault_new(handlerCPtr, false);
        return EXCEPTION_FAULT;
    }
    handlerCap = lu_ret.cap;

    if (cap_get_capType(handlerCap) == cap_endpoint_cap &&
        cap_endpoint_cap_get_capCanSend(handlerCap) &&
        (cap_endpoint_cap_get_capCanGrant(handlerCap) ||
         cap_endpoint_cap_get_capCanGrantReply(handlerCap))) {
        tptr->tcbFault = current_fault;
        if (seL4_Fault_get_seL4_FaultType(current_fault) == seL4_Fault_CapFault) {
            tptr->tcbLookupFailure = original_lookup_fault;
        }
        sendIPC(true, true,
                cap_endpoint_cap_get_capEPBadge(handlerCap),
                cap_endpoint_cap_get_capCanGrant(handlerCap), true, tptr,
                ((endpoint_t *)(cap_endpoint_cap_get_capEPPtr(handlerCap))));

        return EXCEPTION_NONE;
    } else {
        current_fault = seL4_Fault_CapFault_new(handlerCPtr, false);
        current_lookup_fault = lookup_fault_missing_capability_new(0);

        return EXCEPTION_FAULT;
    }
}
# 148 "/workspace/seL4-c89/preconfigured/src/kernel/faulthandler.c"
void handleDoubleFault(tcb_t *tptr, seL4_Fault_t ex1)

{
# 171 "/workspace/seL4-c89/preconfigured/src/kernel/faulthandler.c"
    setThreadState(tptr, ThreadState_Inactive);
}
# 1 "/workspace/seL4-c89/preconfigured/src/kernel/stack.c"
# 9 "/workspace/seL4-c89/preconfigured/src/kernel/stack.c"
__attribute__((externally_visible)) __attribute__((__aligned__(16)))
char kernel_stack_alloc[1][(1ul << (12))];
# 1 "/workspace/seL4-c89/preconfigured/src/kernel/thread.c"
# 25 "/workspace/seL4-c89/preconfigured/src/kernel/thread.c"
static seL4_MessageInfo_t
transferCaps(seL4_MessageInfo_t info,
             endpoint_t *endpoint, tcb_t *receiver,
             word_t *receiveBuffer);

__attribute__((__section__(".boot.text"))) void configureIdleThread(tcb_t *tcb)
{
    tcb->tcbFlags = seL4_TCBFlag_fpuDisabled;
    Arch_configureIdleThread(tcb);
    setThreadState(tcb, ThreadState_IdleThreadState);
}

void activateThread(void)
{







    switch (thread_state_get_tsType(ksCurThread->tcbState)) {
    case ThreadState_Running:



        break;

    case ThreadState_Restart: {
        word_t pc;

        pc = getRestartPC(ksCurThread);
        setNextPC(ksCurThread, pc);
        setThreadState(ksCurThread, ThreadState_Running);
        break;
    }

    case ThreadState_IdleThreadState:
        Arch_activateIdleThread(ksCurThread);
        break;

    default:
        halt();
    }
}

void suspend(tcb_t *target)
{
    cancelIPC(target);
    if (thread_state_get_tsType(target->tcbState) == ThreadState_Running) {





        updateRestartPC(target);
    }
    setThreadState(target, ThreadState_Inactive);
    tcbSchedDequeue(target);




}

void restart(tcb_t *target)
{
    if (isStopped(target)) {
        cancelIPC(target);
# 105 "/workspace/seL4-c89/preconfigured/src/kernel/thread.c"
        setupReplyMaster(target);
        setThreadState(target, ThreadState_Restart);
        tcbSchedEnqueue(target);
        possibleSwitchTo(target);

    }
}

void doIPCTransfer(tcb_t *sender, endpoint_t *endpoint, word_t badge,
                   bool_t grant, tcb_t *receiver)
{
    void *receiveBuffer, *sendBuffer;

    receiveBuffer = lookupIPCBuffer(true, receiver);

    if (__builtin_expect(!!(seL4_Fault_get_seL4_FaultType(sender->tcbFault) == seL4_Fault_NullFault), 1)) {
        sendBuffer = lookupIPCBuffer(false, sender);
        doNormalTransfer(sender, sendBuffer, endpoint, badge, grant,
                         receiver, receiveBuffer);
    } else {
        doFaultTransfer(badge, sender, receiver, receiveBuffer);
    }
}




void doReplyTransfer(tcb_t *sender, tcb_t *receiver, cte_t *slot, bool_t grant)

{
# 152 "/workspace/seL4-c89/preconfigured/src/kernel/thread.c"
   
                                      ;


    word_t fault_type = seL4_Fault_get_seL4_FaultType(receiver->tcbFault);
    if (__builtin_expect(!!(fault_type == seL4_Fault_NullFault), 1)) {
        doIPCTransfer(sender, ((void *)0), 0, grant, receiver);




        cteDeleteOne(slot);
        setThreadState(receiver, ThreadState_Running);
        possibleSwitchTo(receiver);

    } else {


        cteDeleteOne(slot);

        bool_t restart = handleFaultReply(receiver, sender);
        receiver->tcbFault = seL4_Fault_NullFault_new();
        if (restart) {
            setThreadState(receiver, ThreadState_Restart);

            possibleSwitchTo(receiver);

        } else {
            setThreadState(receiver, ThreadState_Inactive);
        }
    }
# 199 "/workspace/seL4-c89/preconfigured/src/kernel/thread.c"
}

void doNormalTransfer(tcb_t *sender, word_t *sendBuffer, endpoint_t *endpoint,
                      word_t badge, bool_t canGrant, tcb_t *receiver,
                      word_t *receiveBuffer)
{
    word_t msgTransferred;
    seL4_MessageInfo_t tag;
    exception_t status;

    tag = messageInfoFromWord(getRegister(sender, msgInfoRegister));

    if (canGrant) {
        status = lookupExtraCaps(sender, sendBuffer, tag);
        if (__builtin_expect(!!(status != EXCEPTION_NONE), 0)) {
            current_extra_caps.excaprefs[0] = ((void *)0);
        }
    } else {
        current_extra_caps.excaprefs[0] = ((void *)0);
    }

    msgTransferred = copyMRs(sender, sendBuffer, receiver, receiveBuffer,
                             seL4_MessageInfo_get_length(tag));

    tag = transferCaps(tag, endpoint, receiver, receiveBuffer);

    tag = seL4_MessageInfo_set_length(tag, msgTransferred);
    setRegister(receiver, msgInfoRegister, wordFromMessageInfo(tag));
    setRegister(receiver, badgeRegister, badge);
}

void doFaultTransfer(word_t badge, tcb_t *sender, tcb_t *receiver,
                     word_t *receiverIPCBuffer)
{
    word_t sent;
    seL4_MessageInfo_t msgInfo;

    sent = setMRs_fault(sender, receiver, receiverIPCBuffer);
    msgInfo = seL4_MessageInfo_new(
                  seL4_Fault_get_seL4_FaultType(sender->tcbFault), 0, 0, sent);
    setRegister(receiver, msgInfoRegister, wordFromMessageInfo(msgInfo));
    setRegister(receiver, badgeRegister, badge);
}


static seL4_MessageInfo_t transferCaps(seL4_MessageInfo_t info,
                                       endpoint_t *endpoint, tcb_t *receiver,
                                       word_t *receiveBuffer)
{
    word_t i;
    cte_t *destSlot;

    info = seL4_MessageInfo_set_extraCaps(info, 0);
    info = seL4_MessageInfo_set_capsUnwrapped(info, 0);

    if (__builtin_expect(!!(!current_extra_caps.excaprefs[0] || !receiveBuffer), 1)) {
        return info;
    }

    destSlot = getReceiveSlots(receiver, receiveBuffer);

    for (i = 0; i < ((1ul<<(seL4_MsgExtraCapBits))-1) && current_extra_caps.excaprefs[i] != ((void *)0); i++) {
        cte_t *slot = current_extra_caps.excaprefs[i];
        cap_t cap = slot->cap;

        if (cap_get_capType(cap) == cap_endpoint_cap &&
            ((endpoint_t *)(cap_endpoint_cap_get_capEPPtr(cap))) == endpoint) {


            setExtraBadge(receiveBuffer,
                          cap_endpoint_cap_get_capEPBadge(cap), i);

            info = seL4_MessageInfo_set_capsUnwrapped(info,
                                                      seL4_MessageInfo_get_capsUnwrapped(info) | (1 << i));

        } else {
            deriveCap_ret_t dc_ret;

            if (!destSlot) {
                break;
            }

            dc_ret = deriveCap(slot, cap);

            if (dc_ret.status != EXCEPTION_NONE) {
                break;
            }
            if (cap_get_capType(dc_ret.cap) == cap_null_cap) {
                break;
            }

            cteInsert(dc_ret.cap, slot, destSlot);

            destSlot = ((void *)0);
        }
    }

    return seL4_MessageInfo_set_extraCaps(info, i);
}

void doNBRecvFailedTransfer(tcb_t *thread)
{

    setRegister(thread, badgeRegister, 0);
}

void prepareSetDomain(tcb_t *tptr, dom_t dom)
{

    if (ksCurDomain != dom) {

        fpuRelease(tptr);
    }

}

static void prepareNextDomain(void)
{


    switchLocalFpuOwner(((void *)0));

}

static void nextDomain(void)
{
    ksDomScheduleIdx++;
    if (ksDomScheduleIdx >= ksDomScheduleLength) {
        ksDomScheduleIdx = 0;
    }



    ksWorkUnitsCompleted = 0;
    ksCurDomain = ksDomSchedule[ksDomScheduleIdx].domain;



    ksDomainTime = ksDomSchedule[ksDomScheduleIdx].length;

}
# 364 "/workspace/seL4-c89/preconfigured/src/kernel/thread.c"
static void scheduleChooseNewThread(void)
{
    if (ksDomainTime == 0) {
        prepareNextDomain();
        nextDomain();
    }
    chooseThread();
}

void schedule(void)
{





    if (ksSchedulerAction != ((tcb_t*)0)) {
        bool_t was_runnable;
        if (isRunnable(ksCurThread)) {
            was_runnable = true;
            tcbSchedEnqueue(ksCurThread);
        } else {
            was_runnable = false;
        }

        if (ksSchedulerAction == ((tcb_t*) 1)) {
            scheduleChooseNewThread();
        } else {
            tcb_t *candidate = ksSchedulerAction;
            ;




            bool_t fastfail =
                ksCurThread == ksIdleThread
                || (candidate->tcbPriority < ksCurThread->tcbPriority);
            if (fastfail &&
                !isHighestPrio(ksCurDomain, candidate->tcbPriority)) {
                tcbSchedEnqueue(candidate);

                ksSchedulerAction = ((tcb_t*) 1);
                scheduleChooseNewThread();
            } else if (was_runnable && candidate->tcbPriority == ksCurThread->tcbPriority) {



                tcbSchedAppend(candidate);
                ksSchedulerAction = ((tcb_t*) 1);
                scheduleChooseNewThread();
            } else {
                ;
                switchToThread(candidate);
            }
        }
    }
    ksSchedulerAction = ((tcb_t*)0);
# 434 "/workspace/seL4-c89/preconfigured/src/kernel/thread.c"
}

void chooseThread(void)
{
    word_t prio;
    word_t dom;
    tcb_t *thread;

    if (numDomains > 1) {
        dom = ksCurDomain;
    } else {
        dom = 0;
    }

    if (__builtin_expect(!!(ksReadyQueuesL1Bitmap[dom]), 1)) {
        prio = getHighestPrio(dom);
        thread = ksReadyQueues[ready_queues_index(dom, prio)].head;
        ;
        ;




        switchToThread(thread);
    } else {
        switchToIdleThread();
    }
}

void switchToThread(tcb_t *thread)
{
# 475 "/workspace/seL4-c89/preconfigured/src/kernel/thread.c"
    Arch_switchToThread(thread);


    lazyFPURestore(thread);


    tcbSchedDequeue(thread);
    ksCurThread = thread;
}

void switchToIdleThread(void)
{



    Arch_switchToIdleThread();
    ksCurThread = ksIdleThread;
}

void setDomain(tcb_t *tptr, dom_t dom)
{
    tcbSchedDequeue(tptr);
    tptr->tcbDomain = dom;
    if (isRunnable(tptr)) {
        tcbSchedEnqueue(tptr);
    }
    if (tptr == ksCurThread) {
        rescheduleRequired();
    }
}

void setMCPriority(tcb_t *tptr, prio_t mcp)
{
    tptr->tcbMCP = mcp;
}
# 540 "/workspace/seL4-c89/preconfigured/src/kernel/thread.c"
void setPriority(tcb_t *tptr, prio_t prio)
{
    tcbSchedDequeue(tptr);
    tptr->tcbPriority = prio;
    if (isRunnable(tptr)) {
        if (tptr == ksCurThread) {
            rescheduleRequired();
        } else {
            possibleSwitchTo(tptr);
        }
    }
}






void possibleSwitchTo(tcb_t *target)
{



        if (ksCurDomain != target->tcbDomain
            ) {
            tcbSchedEnqueue(target);
        } else if (ksSchedulerAction != ((tcb_t*)0)) {

            rescheduleRequired();
            tcbSchedEnqueue(target);
        } else {
            ksSchedulerAction = target;
        }




}

void setThreadState(tcb_t *tptr, _thread_state_t ts)
{
    thread_state_ptr_set_tsType(&tptr->tcbState, ts);
    scheduleTCB(tptr);
}

void scheduleTCB(tcb_t *tptr)
{
    if (tptr == ksCurThread &&
        ksSchedulerAction == ((tcb_t*)0) &&
        !isRunnable(tptr)) {
        rescheduleRequired();
    }
}
# 676 "/workspace/seL4-c89/preconfigured/src/kernel/thread.c"
void timerTick(void)
{
    if (__builtin_expect(!!(thread_state_get_tsType(ksCurThread->tcbState) == ThreadState_Running), 1)





       ) {
        if (ksCurThread->tcbTimeSlice > 1) {
            ksCurThread->tcbTimeSlice--;
        } else {
            ksCurThread->tcbTimeSlice = 5;
            tcbSchedAppend(ksCurThread);
            rescheduleRequired();
        }
    }

    if (numDomains > 1) {
        ksDomainTime--;
        if (ksDomainTime == 0) {
            rescheduleRequired();
        }
    }
}


void rescheduleRequired(void)
{
    if (ksSchedulerAction != ((tcb_t*)0)
        && ksSchedulerAction != ((tcb_t*) 1)



       ) {




        tcbSchedEnqueue(ksSchedulerAction);
    }
    ksSchedulerAction = ((tcb_t*) 1);
}
# 1 "/workspace/seL4-c89/preconfigured/src/machine/capdl.c"
# 1 "/workspace/seL4-c89/preconfigured/src/machine/fpu.c"
# 15 "/workspace/seL4-c89/preconfigured/src/machine/fpu.c"
void switchLocalFpuOwner(tcb_t *new_owner)
{
    enableFpu();
    if (ksCurFPUOwner) {
        saveFpuState(ksCurFPUOwner);
    }
    if (new_owner) {
        loadFpuState(new_owner);
    } else {
        disableFpu();
    }
    ksCurFPUOwner = new_owner;
}

void switchFpuOwner(tcb_t *new_owner, word_t cpu)
{





    {
        switchLocalFpuOwner(new_owner);
    }
}


void fpuRelease(tcb_t *thread)
{


    if (nativeThreadUsingFPU(thread)) {
        switchFpuOwner(((void *)0), 0);
    }
}
# 1 "/workspace/seL4-c89/preconfigured/src/machine/io.c"
# 1 "/workspace/seL4-c89/preconfigured/src/machine/registerset.c"
# 9 "/workspace/seL4-c89/preconfigured/src/machine/registerset.c"
const register_t fault_messages[][(((n_syscallMessage)>(n_exceptionMessage))?(n_syscallMessage):(n_exceptionMessage))] = {
    [MessageID_Syscall] = { [seL4_UnknownSyscall_RAX] = RAX, [seL4_UnknownSyscall_RBX] = RBX, [seL4_UnknownSyscall_RCX] = RCX, [seL4_UnknownSyscall_RDX] = RDX, [seL4_UnknownSyscall_RSI] = RSI, [seL4_UnknownSyscall_RDI] = RDI, [seL4_UnknownSyscall_RBP] = RBP, [seL4_UnknownSyscall_R8] = R8, [seL4_UnknownSyscall_R9] = R9, [seL4_UnknownSyscall_R10] = R10, [seL4_UnknownSyscall_R11] = R11, [seL4_UnknownSyscall_R12] = R12, [seL4_UnknownSyscall_R13] = R13, [seL4_UnknownSyscall_R14] = R14, [seL4_UnknownSyscall_R15] = R15, [seL4_UnknownSyscall_FaultIP] = FaultIP, [seL4_UnknownSyscall_SP] = RSP, [seL4_UnknownSyscall_FLAGS] = FLAGS},
    [MessageID_Exception] = { [seL4_UserException_FaultIP] = FaultIP, [seL4_UserException_SP] = RSP, [seL4_UserException_FLAGS] = FLAGS},



};
# 1 "/workspace/seL4-c89/preconfigured/src/model/preemption.c"







# 1 "/workspace/seL4-c89/preconfigured/include/model/preemption.h" 1






       



exception_t preemptionPoint(void);
# 9 "/workspace/seL4-c89/preconfigured/src/model/preemption.c" 2







exception_t preemptionPoint(void)
{

    ksWorkUnitsCompleted++;
# 29 "/workspace/seL4-c89/preconfigured/src/model/preemption.c"
    if (ksWorkUnitsCompleted >= 100) {
        ksWorkUnitsCompleted = 0;





        if (isIRQPending()) {

            return EXCEPTION_PREEMPTED;
        }
    }

    return EXCEPTION_NONE;
}
# 1 "/workspace/seL4-c89/preconfigured/src/model/smp.c"
# 1 "/workspace/seL4-c89/preconfigured/src/model/statedata.c"







# 1 "/workspace/seL4-c89/preconfigured/include/api/debug.h" 1
# 9 "/workspace/seL4-c89/preconfigured/src/model/statedata.c" 2
# 18 "/workspace/seL4-c89/preconfigured/src/model/statedata.c"
;


word_t ksNumCPUs;


tcb_queue_t ksReadyQueues[(16 * 256)];
word_t ksReadyQueuesL1Bitmap[16];
word_t ksReadyQueuesL2Bitmap[16][((256 + (1 << 6) - 1) / (1 << 6))];
typedef int __assert_failed_ksReadyQueuesL1BitmapBigEnough[((((256 + (1 << 6) - 1) / (1 << 6)) - 1) <= (1 << 6)) ? 1 : -1] __attribute__((unused));






tcb_t * ksCurThread;


tcb_t * ksIdleThread;




tcb_t * ksSchedulerAction;



tcb_t * ksCurFPUOwner;
# 75 "/workspace/seL4-c89/preconfigured/src/model/statedata.c"
word_t ksWorkUnitsCompleted;

irq_state_t intStateIRQTable[(maxIRQ + 1)];


cte_t intStateIRQNode[(1ul << (8))] __attribute__((__aligned__((1ul << (8 + 5)))));
typedef int __assert_failed_irqCNodeSize[(sizeof(intStateIRQNode) >= (((maxIRQ + 1)) *sizeof(cte_t))) ? 1 : -1] __attribute__((unused));;


dom_t ksCurDomain;





word_t ksDomainTime;



word_t ksDomScheduleIdx;


__attribute__((__section__("._idle_thread"))) char ksIdleThreadTCB[1][(1ul << (11))] __attribute__((__aligned__((1ul << (11)))));
# 1 "/workspace/seL4-c89/preconfigured/src/object/cnode.c"
# 25 "/workspace/seL4-c89/preconfigured/src/object/cnode.c"
struct finaliseSlot_ret {
    exception_t status;
    bool_t success;
    cap_t cleanupInfo;
};
typedef struct finaliseSlot_ret finaliseSlot_ret_t;

static finaliseSlot_ret_t finaliseSlot(cte_t *slot, bool_t exposed);
static void emptySlot(cte_t *slot, cap_t cleanupInfo);
static exception_t reduceZombie(cte_t *slot, bool_t exposed);







exception_t decodeCNodeInvocation(word_t invLabel, word_t length, cap_t cap,
                                  word_t *buffer)
{
    lookupSlot_ret_t lu_ret;
    cte_t *destSlot;
    word_t index, w_bits;
    exception_t status;


    ;

    if (invLabel < CNodeRevoke || invLabel > CNodeSaveCaller) {
        ;
        current_syscall_error.type = seL4_IllegalOperation;
        return EXCEPTION_SYSCALL_ERROR;
    }

    if (length < 2) {
        ;
        current_syscall_error.type = seL4_TruncatedMessage;
        return EXCEPTION_SYSCALL_ERROR;
    }
    index = getSyscallArg(0, buffer);
    w_bits = getSyscallArg(1, buffer);

    lu_ret = lookupTargetSlot(cap, index, w_bits);
    if (lu_ret.status != EXCEPTION_NONE) {
        ;
        return lu_ret.status;
    }
    destSlot = lu_ret.slot;

    if (invLabel >= CNodeCopy && invLabel <= CNodeMutate) {
        cte_t *srcSlot;
        word_t srcIndex, srcDepth, capData;
        bool_t isMove;
        seL4_CapRights_t cap_rights;
        cap_t srcRoot, newCap;
        deriveCap_ret_t dc_ret;
        cap_t srcCap;

        if (length < 4 || current_extra_caps.excaprefs[0] == ((void *)0)) {
            ;
            current_syscall_error.type = seL4_TruncatedMessage;
            return EXCEPTION_SYSCALL_ERROR;
        }
        srcIndex = getSyscallArg(2, buffer);
        srcDepth = getSyscallArg(3, buffer);

        srcRoot = current_extra_caps.excaprefs[0]->cap;

        status = ensureEmptySlot(destSlot);
        if (status != EXCEPTION_NONE) {
            ;
            return status;
        }

        lu_ret = lookupSourceSlot(srcRoot, srcIndex, srcDepth);
        if (lu_ret.status != EXCEPTION_NONE) {
            ;
            return lu_ret.status;
        }
        srcSlot = lu_ret.slot;

        if (cap_get_capType(srcSlot->cap) == cap_null_cap) {
            ;
            current_syscall_error.type = seL4_FailedLookup;
            current_syscall_error.failedLookupWasSource = 1;
            current_lookup_fault =
                lookup_fault_missing_capability_new(srcDepth);
            return EXCEPTION_SYSCALL_ERROR;
        }

        switch (invLabel) {
        case CNodeCopy:

            if (length < 5) {
                ;
                current_syscall_error.type = seL4_TruncatedMessage;
                return EXCEPTION_SYSCALL_ERROR;
            }

            cap_rights = rightsFromWord(getSyscallArg(4, buffer));
            srcCap = maskCapRights(cap_rights, srcSlot->cap);
            dc_ret = deriveCap(srcSlot, srcCap);
            if (dc_ret.status != EXCEPTION_NONE) {
                ;
                return dc_ret.status;
            }
            newCap = dc_ret.cap;
            isMove = false;

            break;

        case CNodeMint:
            if (length < 6) {
                ;
                current_syscall_error.type = seL4_TruncatedMessage;
                return EXCEPTION_SYSCALL_ERROR;
            }

            cap_rights = rightsFromWord(getSyscallArg(4, buffer));
            capData = getSyscallArg(5, buffer);
            srcCap = maskCapRights(cap_rights, srcSlot->cap);
            dc_ret = deriveCap(srcSlot,
                               updateCapData(false, capData, srcCap));
            if (dc_ret.status != EXCEPTION_NONE) {
                ;
                return dc_ret.status;
            }
            newCap = dc_ret.cap;
            isMove = false;

            break;

        case CNodeMove:
            newCap = srcSlot->cap;
            isMove = true;

            break;

        case CNodeMutate:
            if (length < 5) {
                ;
                current_syscall_error.type = seL4_TruncatedMessage;
                return EXCEPTION_SYSCALL_ERROR;
            }

            capData = getSyscallArg(4, buffer);
            newCap = updateCapData(true, capData, srcSlot->cap);
            isMove = true;

            break;

        default:
            ;
            return EXCEPTION_NONE;
        }

        if (cap_get_capType(newCap) == cap_null_cap) {
            ;
            current_syscall_error.type = seL4_IllegalOperation;
            return EXCEPTION_SYSCALL_ERROR;
        }

        setThreadState(ksCurThread, ThreadState_Restart);
        if (isMove) {
            return invokeCNodeMove(newCap, srcSlot, destSlot);
        } else {
            return invokeCNodeInsert(newCap, srcSlot, destSlot);
        }
    }

    if (invLabel == CNodeRevoke) {
        setThreadState(ksCurThread, ThreadState_Restart);
        return invokeCNodeRevoke(destSlot);
    }

    if (invLabel == CNodeDelete) {
        setThreadState(ksCurThread, ThreadState_Restart);
        return invokeCNodeDelete(destSlot);
    }


    if (invLabel == CNodeSaveCaller) {
        status = ensureEmptySlot(destSlot);
        if (status != EXCEPTION_NONE) {
            ;
            return status;
        }

        setThreadState(ksCurThread, ThreadState_Restart);
        return invokeCNodeSaveCaller(destSlot);
    }


    if (invLabel == CNodeCancelBadgedSends) {
        cap_t destCap;

        destCap = destSlot->cap;

        if (!hasCancelSendRights(destCap)) {
            ;
            current_syscall_error.type = seL4_IllegalOperation;
            return EXCEPTION_SYSCALL_ERROR;
        }
        setThreadState(ksCurThread, ThreadState_Restart);
        return invokeCNodeCancelBadgedSends(destCap);
    }

    if (invLabel == CNodeRotate) {
        word_t pivotNewData, pivotIndex, pivotDepth;
        word_t srcNewData, srcIndex, srcDepth;
        cte_t *pivotSlot, *srcSlot;
        cap_t pivotRoot, srcRoot, newSrcCap, newPivotCap;

        if (length < 8 || current_extra_caps.excaprefs[0] == ((void *)0)
            || current_extra_caps.excaprefs[1] == ((void *)0)) {
            current_syscall_error.type = seL4_TruncatedMessage;
            return EXCEPTION_SYSCALL_ERROR;
        }
        pivotNewData = getSyscallArg(2, buffer);
        pivotIndex = getSyscallArg(3, buffer);
        pivotDepth = getSyscallArg(4, buffer);
        srcNewData = getSyscallArg(5, buffer);
        srcIndex = getSyscallArg(6, buffer);
        srcDepth = getSyscallArg(7, buffer);

        pivotRoot = current_extra_caps.excaprefs[0]->cap;
        srcRoot = current_extra_caps.excaprefs[1]->cap;

        lu_ret = lookupSourceSlot(srcRoot, srcIndex, srcDepth);
        if (lu_ret.status != EXCEPTION_NONE) {
            return lu_ret.status;
        }
        srcSlot = lu_ret.slot;

        lu_ret = lookupPivotSlot(pivotRoot, pivotIndex, pivotDepth);
        if (lu_ret.status != EXCEPTION_NONE) {
            return lu_ret.status;
        }
        pivotSlot = lu_ret.slot;

        if (pivotSlot == srcSlot || pivotSlot == destSlot) {
            ;
            current_syscall_error.type = seL4_IllegalOperation;
            return EXCEPTION_SYSCALL_ERROR;
        }

        if (srcSlot != destSlot) {
            status = ensureEmptySlot(destSlot);
            if (status != EXCEPTION_NONE) {
                return status;
            }
        }

        if (cap_get_capType(srcSlot->cap) == cap_null_cap) {
            current_syscall_error.type = seL4_FailedLookup;
            current_syscall_error.failedLookupWasSource = 1;
            current_lookup_fault = lookup_fault_missing_capability_new(srcDepth);
            return EXCEPTION_SYSCALL_ERROR;
        }

        if (cap_get_capType(pivotSlot->cap) == cap_null_cap) {
            current_syscall_error.type = seL4_FailedLookup;
            current_syscall_error.failedLookupWasSource = 0;
            current_lookup_fault = lookup_fault_missing_capability_new(pivotDepth);
            return EXCEPTION_SYSCALL_ERROR;
        }

        newSrcCap = updateCapData(true, srcNewData, srcSlot->cap);
        newPivotCap = updateCapData(true, pivotNewData, pivotSlot->cap);

        if (cap_get_capType(newSrcCap) == cap_null_cap) {
            ;
            current_syscall_error.type = seL4_IllegalOperation;
            return EXCEPTION_SYSCALL_ERROR;
        }

        if (cap_get_capType(newPivotCap) == cap_null_cap) {
            ;
            current_syscall_error.type = seL4_IllegalOperation;
            return EXCEPTION_SYSCALL_ERROR;
        }

        setThreadState(ksCurThread, ThreadState_Restart);
        return invokeCNodeRotate(newSrcCap, newPivotCap,
                                 srcSlot, pivotSlot, destSlot);
    }

    return EXCEPTION_NONE;
}

exception_t invokeCNodeRevoke(cte_t *destSlot)
{
    return cteRevoke(destSlot);
}

exception_t invokeCNodeDelete(cte_t *destSlot)
{
    return cteDelete(destSlot, true);
}

exception_t invokeCNodeCancelBadgedSends(cap_t cap)
{
    word_t badge = cap_endpoint_cap_get_capEPBadge(cap);
    if (badge) {
        endpoint_t *ep = (endpoint_t *)
                         cap_endpoint_cap_get_capEPPtr(cap);
        cancelBadgedSends(ep, badge);
    }
    return EXCEPTION_NONE;
}

exception_t invokeCNodeInsert(cap_t cap, cte_t *srcSlot, cte_t *destSlot)
{
    cteInsert(cap, srcSlot, destSlot);

    return EXCEPTION_NONE;
}

exception_t invokeCNodeMove(cap_t cap, cte_t *srcSlot, cte_t *destSlot)
{
    cteMove(cap, srcSlot, destSlot);

    return EXCEPTION_NONE;
}

exception_t invokeCNodeRotate(cap_t cap1, cap_t cap2, cte_t *slot1,
                              cte_t *slot2, cte_t *slot3)
{
    if (slot1 == slot3) {
        cteSwap(cap1, slot1, cap2, slot2);
    } else {
        cteMove(cap2, slot2, slot3);
        cteMove(cap1, slot1, slot2);
    }

    return EXCEPTION_NONE;
}


exception_t invokeCNodeSaveCaller(cte_t *destSlot)
{
    cap_t cap;
    cte_t *srcSlot;

    srcSlot = (((cte_t *)((word_t)(ksCurThread)&~((1ul << (11)) - 1ul)))+(tcbCaller));
    cap = srcSlot->cap;

    switch (cap_get_capType(cap)) {
    case cap_null_cap:
        ;
        break;

    case cap_reply_cap:
        if (!cap_reply_cap_get_capReplyMaster(cap)) {
            cteMove(cap, srcSlot, destSlot);
        }
        break;

    default:
        halt();
        break;
    }

    return EXCEPTION_NONE;
}






static void setUntypedCapAsFull(cap_t srcCap, cap_t newCap, cte_t *srcSlot)
{
    if ((cap_get_capType(srcCap) == cap_untyped_cap)
        && (cap_get_capType(newCap) == cap_untyped_cap)) {
        if ((cap_untyped_cap_get_capPtr(srcCap)
             == cap_untyped_cap_get_capPtr(newCap))
            && (cap_untyped_cap_get_capBlockSize(newCap)
                == cap_untyped_cap_get_capBlockSize(srcCap))) {
            cap_untyped_cap_ptr_set_capFreeIndex(&(srcSlot->cap),
                                                 ((1ul << ((cap_untyped_cap_get_capBlockSize(srcCap)) - 4))));
        }
    }
}

void cteInsert(cap_t newCap, cte_t *srcSlot, cte_t *destSlot)
{
    mdb_node_t srcMDB, newMDB;
    cap_t srcCap;
    bool_t newCapIsRevocable;

    srcMDB = srcSlot->cteMDBNode;
    srcCap = srcSlot->cap;

    newCapIsRevocable = isCapRevocable(newCap, srcCap);

    newMDB = mdb_node_set_mdbPrev(srcMDB, ((word_t)(srcSlot)));
    newMDB = mdb_node_set_mdbRevocable(newMDB, newCapIsRevocable);
    newMDB = mdb_node_set_mdbFirstBadged(newMDB, newCapIsRevocable);


    ;

   
                                                                       ;



    setUntypedCapAsFull(srcCap, newCap, srcSlot);

    destSlot->cap = newCap;
    destSlot->cteMDBNode = newMDB;
    mdb_node_ptr_set_mdbNext(&srcSlot->cteMDBNode, ((word_t)(destSlot)));
    if (mdb_node_get_mdbNext(newMDB)) {
        mdb_node_ptr_set_mdbPrev(
            &((cte_t *)(mdb_node_get_mdbNext(newMDB)))->cteMDBNode,
            ((word_t)(destSlot)));
    }
}

void cteMove(cap_t newCap, cte_t *srcSlot, cte_t *destSlot)
{
    mdb_node_t mdb;
    word_t prev_ptr, next_ptr;


    ;

   
                                                                       ;

    mdb = srcSlot->cteMDBNode;
    destSlot->cap = newCap;
    srcSlot->cap = cap_null_cap_new();
    destSlot->cteMDBNode = mdb;
    srcSlot->cteMDBNode = mdb_node_new(0, false, false, 0);

    prev_ptr = mdb_node_get_mdbPrev(mdb);
    if (prev_ptr)
        mdb_node_ptr_set_mdbNext(
            &((cte_t *)(prev_ptr))->cteMDBNode,
            ((word_t)(destSlot)));

    next_ptr = mdb_node_get_mdbNext(mdb);
    if (next_ptr)
        mdb_node_ptr_set_mdbPrev(
            &((cte_t *)(next_ptr))->cteMDBNode,
            ((word_t)(destSlot)));
}

void capSwapForDelete(cte_t *slot1, cte_t *slot2)
{
    cap_t cap1, cap2;

    if (slot1 == slot2) {
        return;
    }

    cap1 = slot1->cap;
    cap2 = slot2->cap;

    cteSwap(cap1, slot1, cap2, slot2);
}

void cteSwap(cap_t cap1, cte_t *slot1, cap_t cap2, cte_t *slot2)
{
    mdb_node_t mdb1, mdb2;
    word_t next_ptr, prev_ptr;

    slot1->cap = cap2;
    slot2->cap = cap1;

    mdb1 = slot1->cteMDBNode;

    prev_ptr = mdb_node_get_mdbPrev(mdb1);
    if (prev_ptr)
        mdb_node_ptr_set_mdbNext(
            &((cte_t *)(prev_ptr))->cteMDBNode,
            ((word_t)(slot2)));

    next_ptr = mdb_node_get_mdbNext(mdb1);
    if (next_ptr)
        mdb_node_ptr_set_mdbPrev(
            &((cte_t *)(next_ptr))->cteMDBNode,
            ((word_t)(slot2)));

    mdb2 = slot2->cteMDBNode;
    slot1->cteMDBNode = mdb2;
    slot2->cteMDBNode = mdb1;

    prev_ptr = mdb_node_get_mdbPrev(mdb2);
    if (prev_ptr)
        mdb_node_ptr_set_mdbNext(
            &((cte_t *)(prev_ptr))->cteMDBNode,
            ((word_t)(slot1)));

    next_ptr = mdb_node_get_mdbNext(mdb2);
    if (next_ptr)
        mdb_node_ptr_set_mdbPrev(
            &((cte_t *)(next_ptr))->cteMDBNode,
            ((word_t)(slot1)));
}

exception_t cteRevoke(cte_t *slot)
{
    cte_t *nextPtr;
    exception_t status;



    for (nextPtr = ((cte_t *)(mdb_node_get_mdbNext(slot->cteMDBNode)));
         nextPtr && isMDBParentOf(slot, nextPtr);
         nextPtr = ((cte_t *)(mdb_node_get_mdbNext(slot->cteMDBNode)))) {
        status = cteDelete(nextPtr, true);
        if (status != EXCEPTION_NONE) {
            return status;
        }

        status = preemptionPoint();
        if (status != EXCEPTION_NONE) {
            return status;
        }
    }

    return EXCEPTION_NONE;
}

exception_t cteDelete(cte_t *slot, bool_t exposed)
{
    finaliseSlot_ret_t fs_ret;

    fs_ret = finaliseSlot(slot, exposed);
    if (fs_ret.status != EXCEPTION_NONE) {
        return fs_ret.status;
    }

    if (exposed || fs_ret.success) {
        emptySlot(slot, fs_ret.cleanupInfo);
    }
    return EXCEPTION_NONE;
}

static void emptySlot(cte_t *slot, cap_t cleanupInfo)
{
    if (cap_get_capType(slot->cap) != cap_null_cap) {
        mdb_node_t mdbNode;
        cte_t *prev, *next;

        mdbNode = slot->cteMDBNode;
        prev = ((cte_t *)(mdb_node_get_mdbPrev(mdbNode)));
        next = ((cte_t *)(mdb_node_get_mdbNext(mdbNode)));

        if (prev) {
            mdb_node_ptr_set_mdbNext(&prev->cteMDBNode, ((word_t)(next)));
        }
        if (next) {
            mdb_node_ptr_set_mdbPrev(&next->cteMDBNode, ((word_t)(prev)));
        }
        if (next)
            mdb_node_ptr_set_mdbFirstBadged(&next->cteMDBNode,
                                            mdb_node_get_mdbFirstBadged(next->cteMDBNode) ||
                                            mdb_node_get_mdbFirstBadged(mdbNode));
        slot->cap = cap_null_cap_new();
        slot->cteMDBNode = mdb_node_new(0, false, false, 0);

        postCapDeletion(cleanupInfo);
    }
}

static inline bool_t __attribute__((__const__)) capRemovable(cap_t cap, cte_t *slot)
{
    switch (cap_get_capType(cap)) {
    case cap_null_cap:
        return true;
    case cap_zombie_cap: {
        word_t n = cap_zombie_cap_get_capZombieNumber(cap);
        cte_t *z_slot = (cte_t *)cap_zombie_cap_get_capZombiePtr(cap);
        return (n == 0 || (n == 1 && slot == z_slot));
    }
    default:
        halt();
    }
}

static inline bool_t __attribute__((__const__)) capCyclicZombie(cap_t cap, cte_t *slot)
{
    return cap_get_capType(cap) == cap_zombie_cap &&
           ((cte_t *)(cap_zombie_cap_get_capZombiePtr(cap))) == slot;
}

static finaliseSlot_ret_t finaliseSlot(cte_t *slot, bool_t immediate)
{
    bool_t final;
    finaliseCap_ret_t fc_ret;
    exception_t status;
    finaliseSlot_ret_t ret;

    while (cap_get_capType(slot->cap) != cap_null_cap) {
        final = isFinalCapability(slot);
        fc_ret = finaliseCap(slot->cap, final, false);

        if (capRemovable(fc_ret.remainder, slot)) {
            ret.status = EXCEPTION_NONE;
            ret.success = true;
            ret.cleanupInfo = fc_ret.cleanupInfo;
            return ret;
        }

        slot->cap = fc_ret.remainder;

        if (!immediate && capCyclicZombie(fc_ret.remainder, slot)) {
            ret.status = EXCEPTION_NONE;
            ret.success = false;
            ret.cleanupInfo = fc_ret.cleanupInfo;
            return ret;
        }

        status = reduceZombie(slot, immediate);
        if (status != EXCEPTION_NONE) {
            ret.status = status;
            ret.success = false;
            ret.cleanupInfo = cap_null_cap_new();
            return ret;
        }

        status = preemptionPoint();
        if (status != EXCEPTION_NONE) {
            ret.status = status;
            ret.success = false;
            ret.cleanupInfo = cap_null_cap_new();
            return ret;
        }
    }
    ret.status = EXCEPTION_NONE;
    ret.success = true;
    ret.cleanupInfo = cap_null_cap_new();
    return ret;
}

static exception_t reduceZombie(cte_t *slot, bool_t immediate)
{
    cte_t *ptr;
    word_t n, type;
    exception_t status;

    ;
    ptr = (cte_t *)cap_zombie_cap_get_capZombiePtr(slot->cap);
    n = cap_zombie_cap_get_capZombieNumber(slot->cap);
    type = cap_zombie_cap_get_capZombieType(slot->cap);


    ;

    if (immediate) {
        cte_t *endSlot = &ptr[n - 1];

        status = cteDelete(endSlot, false);
        if (status != EXCEPTION_NONE) {
            return status;
        }

        switch (cap_get_capType(slot->cap)) {
        case cap_null_cap:
            break;

        case cap_zombie_cap: {
            cte_t *ptr2 =
                (cte_t *)cap_zombie_cap_get_capZombiePtr(slot->cap);

            if (ptr == ptr2 &&
                cap_zombie_cap_get_capZombieNumber(slot->cap) == n &&
                cap_zombie_cap_get_capZombieType(slot->cap) == type) {
                ;
                slot->cap =
                    cap_zombie_cap_set_capZombieNumber(slot->cap, n - 1);
            } else {



                ;
            }
            break;
        }

        default:
            halt();
        }
    } else {

        ;

        if (cap_get_capType(ptr->cap) == cap_zombie_cap) {

            ;
        }

        capSwapForDelete(ptr, slot);
    }
    return EXCEPTION_NONE;
}

void cteDeleteOne(cte_t *slot)
{
    word_t cap_type = cap_get_capType(slot->cap);
    if (cap_type != cap_null_cap) {
        bool_t final;
        finaliseCap_ret_t fc_ret __attribute__((unused));




        final = isFinalCapability(slot);
        fc_ret = finaliseCap(slot->cap, final, true);

       
                                                                   ;
        emptySlot(slot, cap_null_cap_new());
    }
}

void insertNewCap(cte_t *parent, cte_t *slot, cap_t cap)
{
    cte_t *next;

    next = ((cte_t *)(mdb_node_get_mdbNext(parent->cteMDBNode)));
    slot->cap = cap;
    slot->cteMDBNode = mdb_node_new(((word_t)(next)), true, true, ((word_t)(parent)));
    if (next) {
        mdb_node_ptr_set_mdbPrev(&next->cteMDBNode, ((word_t)(slot)));
    }
    mdb_node_ptr_set_mdbNext(&parent->cteMDBNode, ((word_t)(slot)));
}


void setupReplyMaster(tcb_t *thread)
{
    cte_t *slot;

    slot = (((cte_t *)((word_t)(thread)&~((1ul << (11)) - 1ul)))+(tcbReply));
    if (cap_get_capType(slot->cap) == cap_null_cap) {


        slot->cap = cap_reply_cap_new(true, true, ((word_t)(thread)));
        slot->cteMDBNode = mdb_node_new(0, false, false, 0);
        mdb_node_ptr_set_mdbRevocable(&slot->cteMDBNode, true);
        mdb_node_ptr_set_mdbFirstBadged(&slot->cteMDBNode, true);
    }
}


bool_t __attribute__((__pure__)) isMDBParentOf(cte_t *cte_a, cte_t *cte_b)
{
    if (!mdb_node_get_mdbRevocable(cte_a->cteMDBNode)) {
        return false;
    }
    if (!sameRegionAs(cte_a->cap, cte_b->cap)) {
        return false;
    }



    if (!Arch_isMDBParentOf(cte_a->cap, cte_b->cap,
                            mdb_node_get_mdbFirstBadged(cte_b->cteMDBNode))) {
        return false;
    }
    switch (cap_get_capType(cte_a->cap)) {
    case cap_endpoint_cap: {
        word_t badge;

        badge = cap_endpoint_cap_get_capEPBadge(cte_a->cap);
        if (badge == 0) {
            return true;
        }
        return (badge == cap_endpoint_cap_get_capEPBadge(cte_b->cap)) &&
               !mdb_node_get_mdbFirstBadged(cte_b->cteMDBNode);
        break;
    }

    case cap_notification_cap: {
        word_t badge;

        badge = cap_notification_cap_get_capNtfnBadge(cte_a->cap);
        if (badge == 0) {
            return true;
        }
        return (badge == cap_notification_cap_get_capNtfnBadge(cte_b->cap)) &&
               !mdb_node_get_mdbFirstBadged(cte_b->cteMDBNode);
        break;
    }

    default:
        return true;
        break;
    }
}

exception_t ensureNoChildren(cte_t *slot)
{
    if (mdb_node_get_mdbNext(slot->cteMDBNode) != 0) {
        cte_t *next;

        next = ((cte_t *)(mdb_node_get_mdbNext(slot->cteMDBNode)));
        if (isMDBParentOf(slot, next)) {
            current_syscall_error.type = seL4_RevokeFirst;
            return EXCEPTION_SYSCALL_ERROR;
        }
    }

    return EXCEPTION_NONE;
}

exception_t ensureEmptySlot(cte_t *slot)
{
    if (cap_get_capType(slot->cap) != cap_null_cap) {
        current_syscall_error.type = seL4_DeleteFirst;
        return EXCEPTION_SYSCALL_ERROR;
    }

    return EXCEPTION_NONE;
}

bool_t __attribute__((__pure__)) isFinalCapability(cte_t *cte)
{
    mdb_node_t mdb;
    bool_t prevIsSameObject;

    mdb = cte->cteMDBNode;

    if (mdb_node_get_mdbPrev(mdb) == 0) {
        prevIsSameObject = false;
    } else {
        cte_t *prev;

        prev = ((cte_t *)(mdb_node_get_mdbPrev(mdb)));
        prevIsSameObject = sameObjectAs(prev->cap, cte->cap);
    }

    if (prevIsSameObject) {
        return false;
    } else {
        if (mdb_node_get_mdbNext(mdb) == 0) {
            return true;
        } else {
            cte_t *next;

            next = ((cte_t *)(mdb_node_get_mdbNext(mdb)));
            return !sameObjectAs(cte->cap, next->cap);
        }
    }
}

bool_t __attribute__((__pure__)) slotCapLongRunningDelete(cte_t *slot)
{
    if (cap_get_capType(slot->cap) == cap_null_cap) {
        return false;
    } else if (! isFinalCapability(slot)) {
        return false;
    }
    switch (cap_get_capType(slot->cap)) {
    case cap_thread_cap:
    case cap_zombie_cap:
    case cap_cnode_cap:
        return true;
    default:
        return false;
    }
}



cte_t *getReceiveSlots(tcb_t *thread, word_t *buffer)
{
    cap_transfer_t ct;
    cptr_t cptr;
    lookupCap_ret_t luc_ret;
    lookupSlot_ret_t lus_ret;
    cte_t *slot;
    cap_t cnode;

    if (!buffer) {
        return ((void *)0);
    }

    ct = loadCapTransfer(buffer);
    cptr = ct.ctReceiveRoot;

    luc_ret = lookupCap(thread, cptr);
    if (luc_ret.status != EXCEPTION_NONE) {
        return ((void *)0);
    }
    cnode = luc_ret.cap;

    lus_ret = lookupTargetSlot(cnode, ct.ctReceiveIndex, ct.ctReceiveDepth);
    if (lus_ret.status != EXCEPTION_NONE) {
        return ((void *)0);
    }
    slot = lus_ret.slot;

    if (cap_get_capType(slot->cap) != cap_null_cap) {
        return ((void *)0);
    }

    return slot;
}

cap_transfer_t __attribute__((__pure__)) loadCapTransfer(word_t *buffer)
{
    const int offset = seL4_MsgMaxLength + ((1ul<<(seL4_MsgExtraCapBits))-1) + 2;
    return capTransferFromWords(buffer + offset);
}
# 1 "/workspace/seL4-c89/preconfigured/src/object/endpoint.c"
# 23 "/workspace/seL4-c89/preconfigured/src/object/endpoint.c"
void sendIPC(bool_t blocking, bool_t do_call, word_t badge,
             bool_t canGrant, bool_t canGrantReply, tcb_t *thread, endpoint_t *epptr)

{
    switch (endpoint_ptr_get_state(epptr)) {
    case EPState_Idle:
    case EPState_Send:
        if (blocking) {
            tcb_queue_t queue;


            thread_state_ptr_set_tsType(&thread->tcbState,
                                        ThreadState_BlockedOnSend);
            thread_state_ptr_set_blockingObject(
                &thread->tcbState, ((word_t)(epptr)));
            thread_state_ptr_set_blockingIPCBadge(
                &thread->tcbState, badge);
            thread_state_ptr_set_blockingIPCCanGrant(
                &thread->tcbState, canGrant);
            thread_state_ptr_set_blockingIPCCanGrantReply(
                &thread->tcbState, canGrantReply);
            thread_state_ptr_set_blockingIPCIsCall(
                &thread->tcbState, do_call);

            scheduleTCB(thread);


            queue = ep_ptr_get_queue(epptr);
            queue = tcbEPAppend(thread, queue);
            endpoint_ptr_set_state(epptr, EPState_Send);
            ep_ptr_set_queue(epptr, queue);
        }
        break;

    case EPState_Recv: {
        tcb_queue_t queue;
        tcb_t *dest;


        queue = ep_ptr_get_queue(epptr);
        dest = queue.head;


        ;


        queue = tcbEPDequeue(dest, queue);
        ep_ptr_set_queue(epptr, queue);

        if (!queue.head) {
            endpoint_ptr_set_state(epptr, EPState_Idle);
        }


        doIPCTransfer(thread, epptr, badge, canGrant, dest);
# 105 "/workspace/seL4-c89/preconfigured/src/object/endpoint.c"
        bool_t replyCanGrant = thread_state_ptr_get_blockingIPCCanGrant(&dest->tcbState);;

        setThreadState(dest, ThreadState_Running);
        possibleSwitchTo(dest);

        if (do_call) {
            if (canGrant || canGrantReply) {
                setupCallerCap(thread, dest, replyCanGrant);
            } else {
                setThreadState(thread, ThreadState_Inactive);
            }
        }

        break;
    }
    }
}




void receiveIPC(tcb_t *thread, cap_t cap, bool_t isBlocking)

{
    endpoint_t *epptr;
    notification_t *ntfnPtr;


    ;

    epptr = ((endpoint_t *)(cap_endpoint_cap_get_capEPPtr(cap)));
# 149 "/workspace/seL4-c89/preconfigured/src/object/endpoint.c"
    ntfnPtr = thread->tcbBoundNotification;
    if (ntfnPtr && notification_ptr_get_state(ntfnPtr) == NtfnState_Active) {
        completeSignal(ntfnPtr, thread);
    } else {
# 163 "/workspace/seL4-c89/preconfigured/src/object/endpoint.c"
        switch (endpoint_ptr_get_state(epptr)) {
        case EPState_Idle:
        case EPState_Recv: {
            tcb_queue_t queue;

            if (isBlocking) {

                thread_state_ptr_set_tsType(&thread->tcbState,
                                            ThreadState_BlockedOnReceive);
                thread_state_ptr_set_blockingObject(
                    &thread->tcbState, ((word_t)(epptr)));






                thread_state_ptr_set_blockingIPCCanGrant(
                    &thread->tcbState, cap_endpoint_cap_get_capCanGrant(cap));

                scheduleTCB(thread);


                queue = ep_ptr_get_queue(epptr);
                queue = tcbEPAppend(thread, queue);
                endpoint_ptr_set_state(epptr, EPState_Recv);
                ep_ptr_set_queue(epptr, queue);
            } else {
                doNBRecvFailedTransfer(thread);
            }
            break;
        }

        case EPState_Send: {
            tcb_queue_t queue;
            tcb_t *sender;
            word_t badge;
            bool_t canGrant;
            bool_t canGrantReply;
            bool_t do_call;


            queue = ep_ptr_get_queue(epptr);
            sender = queue.head;


            ;


            queue = tcbEPDequeue(sender, queue);
            ep_ptr_set_queue(epptr, queue);

            if (!queue.head) {
                endpoint_ptr_set_state(epptr, EPState_Idle);
            }


            badge = thread_state_ptr_get_blockingIPCBadge(&sender->tcbState);
            canGrant =
                thread_state_ptr_get_blockingIPCCanGrant(&sender->tcbState);
            canGrantReply =
                thread_state_ptr_get_blockingIPCCanGrantReply(&sender->tcbState);


            doIPCTransfer(sender, epptr, badge,
                          canGrant, thread);

            do_call = thread_state_ptr_get_blockingIPCIsCall(&sender->tcbState);
# 261 "/workspace/seL4-c89/preconfigured/src/object/endpoint.c"
            if (do_call) {
                if (canGrant || canGrantReply) {
                    setupCallerCap(sender, thread, cap_endpoint_cap_get_capCanGrant(cap));
                } else {
                    setThreadState(sender, ThreadState_Inactive);
                }
            } else {
                setThreadState(sender, ThreadState_Running);
                possibleSwitchTo(sender);
            }

            break;
        }
        }
    }
}

void replyFromKernel_error(tcb_t *thread)
{
    word_t len;
    word_t *ipcBuffer;

    ipcBuffer = lookupIPCBuffer(true, thread);
    setRegister(thread, badgeRegister, 0);
    len = setMRs_syscall_error(thread, ipcBuffer);
# 295 "/workspace/seL4-c89/preconfigured/src/object/endpoint.c"
    setRegister(thread, msgInfoRegister, wordFromMessageInfo(
                    seL4_MessageInfo_new(current_syscall_error.type, 0, 0, len)));
}

void replyFromKernel_success_empty(tcb_t *thread)
{
    setRegister(thread, badgeRegister, 0);
    setRegister(thread, msgInfoRegister, wordFromMessageInfo(
                    seL4_MessageInfo_new(0, 0, 0, 0)));
}

void cancelIPC(tcb_t *tptr)
{
    thread_state_t *state = &tptr->tcbState;






    switch (thread_state_ptr_get_tsType(state)) {
    case ThreadState_BlockedOnSend:
    case ThreadState_BlockedOnReceive: {

        endpoint_t *epptr;
        tcb_queue_t queue;

        epptr = ((endpoint_t *)(thread_state_ptr_get_blockingObject(state)));


        ;


        queue = ep_ptr_get_queue(epptr);
        queue = tcbEPDequeue(tptr, queue);
        ep_ptr_set_queue(epptr, queue);

        if (!queue.head) {
            endpoint_ptr_set_state(epptr, EPState_Idle);
        }
# 344 "/workspace/seL4-c89/preconfigured/src/object/endpoint.c"
        setThreadState(tptr, ThreadState_Inactive);
        break;
    }

    case ThreadState_BlockedOnNotification:
        cancelSignal(tptr,
                     ((notification_t *)(thread_state_ptr_get_blockingObject(state))));
        break;

    case ThreadState_BlockedOnReply: {



        cte_t *slot, *callerCap;

        tptr->tcbFault = seL4_Fault_NullFault_new();


        slot = (((cte_t *)((word_t)(tptr)&~((1ul << (11)) - 1ul)))+(tcbReply));

        callerCap = ((cte_t *)(mdb_node_get_mdbNext(slot->cteMDBNode)));
        if (callerCap) {


            cteDeleteOne(callerCap);
        }


        break;
    }
    }
}
# 400 "/workspace/seL4-c89/preconfigured/src/object/endpoint.c"
void cancelAllIPC(endpoint_t *epptr)
{
    switch (endpoint_ptr_get_state(epptr)) {
    case EPState_Idle:
        break;

    default: {
        tcb_t *thread = ((tcb_t *)(endpoint_ptr_get_epQueue_head(epptr)));


        endpoint_ptr_set_state(epptr, EPState_Idle);
        endpoint_ptr_set_epQueue_head(epptr, 0);
        endpoint_ptr_set_epQueue_tail(epptr, 0);


        for (; thread; thread = thread->tcbEPNext) {
# 425 "/workspace/seL4-c89/preconfigured/src/object/endpoint.c"
            setThreadState(thread, ThreadState_Restart);
            tcbSchedEnqueue(thread);

        }

        rescheduleRequired();
        break;
    }
    }
}

void cancelBadgedSends(endpoint_t *epptr, word_t badge)
{
    switch (endpoint_ptr_get_state(epptr)) {
    case EPState_Idle:
    case EPState_Recv:
        break;

    case EPState_Send: {
        tcb_t *thread, *next;
        tcb_queue_t queue = ep_ptr_get_queue(epptr);




        endpoint_ptr_set_state(epptr, EPState_Idle);
        endpoint_ptr_set_epQueue_head(epptr, 0);
        endpoint_ptr_set_epQueue_tail(epptr, 0);

        for (thread = queue.head; thread; thread = next) {
            word_t b = thread_state_ptr_get_blockingIPCBadge(
                           &thread->tcbState);
            next = thread->tcbEPNext;
# 466 "/workspace/seL4-c89/preconfigured/src/object/endpoint.c"
            if (b == badge) {
                setThreadState(thread, ThreadState_Restart);
                tcbSchedEnqueue(thread);
                queue = tcbEPDequeue(thread, queue);
            }

        }
        ep_ptr_set_queue(epptr, queue);

        if (queue.head) {
            endpoint_ptr_set_state(epptr, EPState_Send);
        }

        rescheduleRequired();

        break;
    }

    default:
        halt();
    }
}
# 1 "/workspace/seL4-c89/preconfigured/src/object/interrupt.c"
# 20 "/workspace/seL4-c89/preconfigured/src/object/interrupt.c"
# 1 "/workspace/seL4-c89/preconfigured/include/machine/timer.h" 1






       
# 34 "/workspace/seL4-c89/preconfigured/include/machine/timer.h"
static inline void resetTimer(void);
# 21 "/workspace/seL4-c89/preconfigured/src/object/interrupt.c" 2


exception_t decodeIRQControlInvocation(word_t invLabel, word_t length,
                                       cte_t *srcSlot, word_t *buffer)
{
    if (invLabel == IRQIssueIRQHandler) {
        word_t index, depth, irq_w;
        irq_t irq;
        cte_t *destSlot;
        cap_t cnodeCap;
        lookupSlot_ret_t lu_ret;
        exception_t status;

        if (length < 3 || current_extra_caps.excaprefs[0] == ((void *)0)) {
            current_syscall_error.type = seL4_TruncatedMessage;
            return EXCEPTION_SYSCALL_ERROR;
        }
        irq_w = getSyscallArg(0, buffer);
        irq = (irq_w);
        index = getSyscallArg(1, buffer);
        depth = getSyscallArg(2, buffer);

        cnodeCap = current_extra_caps.excaprefs[0]->cap;

        status = Arch_checkIRQ(irq_w);
        if (status != EXCEPTION_NONE) {
            return status;
        }

        if (isIRQActive(irq)) {
            current_syscall_error.type = seL4_RevokeFirst;
            ;
            return EXCEPTION_SYSCALL_ERROR;
        }

        lu_ret = lookupTargetSlot(cnodeCap, index, depth);
        if (lu_ret.status != EXCEPTION_NONE) {
           
                                                                     ;
            return lu_ret.status;
        }
        destSlot = lu_ret.slot;

        status = ensureEmptySlot(destSlot);
        if (status != EXCEPTION_NONE) {
           
                                                                     ;
            return status;
        }

        setThreadState(ksCurThread, ThreadState_Restart);
        return invokeIRQControl(irq, destSlot, srcSlot);
    } else {
        return Arch_decodeIRQControlInvocation(invLabel, length, srcSlot, buffer);
    }
}

exception_t invokeIRQControl(irq_t irq, cte_t *handlerSlot, cte_t *controlSlot)
{
    setIRQState(IRQSignal, irq);
    cteInsert(cap_irq_handler_cap_new((irq)), controlSlot, handlerSlot);

    return EXCEPTION_NONE;
}

exception_t decodeIRQHandlerInvocation(word_t invLabel, irq_t irq)
{
    switch (invLabel) {
    case IRQAckIRQ:
        setThreadState(ksCurThread, ThreadState_Restart);
        invokeIRQHandler_AckIRQ(irq);
        return EXCEPTION_NONE;

    case IRQSetIRQHandler: {
        cap_t ntfnCap;
        cte_t *slot;

        if (current_extra_caps.excaprefs[0] == ((void *)0)) {
            current_syscall_error.type = seL4_TruncatedMessage;
            return EXCEPTION_SYSCALL_ERROR;
        }
        ntfnCap = current_extra_caps.excaprefs[0]->cap;
        slot = current_extra_caps.excaprefs[0];

        if (cap_get_capType(ntfnCap) != cap_notification_cap ||
            !cap_notification_cap_get_capNtfnCanSend(ntfnCap)) {
            if (cap_get_capType(ntfnCap) != cap_notification_cap) {
                ;
            } else {
                ;
            }
            current_syscall_error.type = seL4_InvalidCapability;
            current_syscall_error.invalidCapNumber = 0;
            return EXCEPTION_SYSCALL_ERROR;
        }

        setThreadState(ksCurThread, ThreadState_Restart);
        invokeIRQHandler_SetIRQHandler(irq, ntfnCap, slot);
        return EXCEPTION_NONE;
    }

    case IRQClearIRQHandler:
        setThreadState(ksCurThread, ThreadState_Restart);
        invokeIRQHandler_ClearIRQHandler(irq);
        return EXCEPTION_NONE;

    default:
        ;
        current_syscall_error.type = seL4_IllegalOperation;
        return EXCEPTION_SYSCALL_ERROR;
    }
}

void invokeIRQHandler_AckIRQ(irq_t irq)
{
# 159 "/workspace/seL4-c89/preconfigured/src/object/interrupt.c"
    if (wrap_config_set(0)) {
        deactivateInterrupt(irq);
    } else {
        maskInterrupt(false, irq);
    }

}

void invokeIRQHandler_SetIRQHandler(irq_t irq, cap_t cap, cte_t *slot)
{
    cte_t *irqSlot;

    irqSlot = intStateIRQNode + (irq);

    cteDeleteOne(irqSlot);
    cteInsert(cap, slot, irqSlot);
}

void invokeIRQHandler_ClearIRQHandler(irq_t irq)
{
    cte_t *irqSlot;

    irqSlot = intStateIRQNode + (irq);

    cteDeleteOne(irqSlot);
}

void deletingIRQHandler(irq_t irq)
{
    cte_t *slot;

    slot = intStateIRQNode + (irq);

    cteDeleteOne(slot);
}

void deletedIRQHandler(irq_t irq)
{
    setIRQState(IRQInactive, irq);
}

void handleInterrupt(irq_t irq)
{
    if (__builtin_expect(!!((irq) > maxIRQ), 0)) {






        ((void)(0));
        maskInterrupt(true, irq);
        ackInterrupt(irq);
        return;
    }

    switch (intStateIRQTable[(irq)]) {
    case IRQSignal: {



        cap_t cap;
        cap = intStateIRQNode[(irq)].cap;
        if (cap_get_capType(cap) == cap_notification_cap &&
            cap_notification_cap_get_capNtfnCanSend(cap)) {
            sendSignal(((notification_t *)(cap_notification_cap_get_capNtfnPtr(cap))),
                       cap_notification_cap_get_capNtfnBadge(cap));
        } else {



        }

        if (!wrap_config_set(0)) {
            maskInterrupt(true, irq);
        }


        break;
    }

    case IRQTimer:




        timerTick();
        resetTimer();

        break;







    case IRQReserved:
        handleReservedIRQ(irq);
        break;

    case IRQInactive:




        maskInterrupt(true, irq);



        break;

    default:

        halt();
    }




    ackInterrupt(irq);
}

bool_t isIRQActive(irq_t irq)
{
    return intStateIRQTable[(irq)] != IRQInactive;
}

void setIRQState(irq_state_t irqState, irq_t irq)
{
    intStateIRQTable[(irq)] = irqState;






    maskInterrupt(irqState == IRQInactive, irq);
}
# 1 "/workspace/seL4-c89/preconfigured/src/object/notification.c"
# 19 "/workspace/seL4-c89/preconfigured/src/object/notification.c"
static inline tcb_queue_t __attribute__((__pure__)) ntfn_ptr_get_queue(notification_t *ntfnPtr)
{
    tcb_queue_t ntfn_queue;

    ntfn_queue.head = (tcb_t *)notification_ptr_get_ntfnQueue_head(ntfnPtr);
    ntfn_queue.end = (tcb_t *)notification_ptr_get_ntfnQueue_tail(ntfnPtr);

    return ntfn_queue;
}

static inline void ntfn_ptr_set_queue(notification_t *ntfnPtr, tcb_queue_t ntfn_queue)
{
    notification_ptr_set_ntfnQueue_head(ntfnPtr, (word_t)ntfn_queue.head);
    notification_ptr_set_ntfnQueue_tail(ntfnPtr, (word_t)ntfn_queue.end);
}
# 62 "/workspace/seL4-c89/preconfigured/src/object/notification.c"
void sendSignal(notification_t *ntfnPtr, word_t badge)
{
    switch (notification_ptr_get_state(ntfnPtr)) {
    case NtfnState_Idle: {
        tcb_t *tcb = (tcb_t *)notification_ptr_get_ntfnBoundTCB(ntfnPtr);

        if (tcb) {
            if (thread_state_ptr_get_tsType(&tcb->tcbState) == ThreadState_BlockedOnReceive) {

                cancelIPC(tcb);
                setThreadState(tcb, ThreadState_Running);
                setRegister(tcb, badgeRegister, badge);
                { { possibleSwitchTo(tcb); } }
# 122 "/workspace/seL4-c89/preconfigured/src/object/notification.c"
            } else {







                ntfn_set_active(ntfnPtr, badge);
            }
        } else {
            ntfn_set_active(ntfnPtr, badge);
        }
        break;
    }
    case NtfnState_Waiting: {
        tcb_queue_t ntfn_queue;
        tcb_t *dest;

        ntfn_queue = ntfn_ptr_get_queue(ntfnPtr);
        dest = ntfn_queue.head;


        ;


        ntfn_queue = tcbEPDequeue(dest, ntfn_queue);
        ntfn_ptr_set_queue(ntfnPtr, ntfn_queue);


        if (!ntfn_queue.head) {
            notification_ptr_set_state(ntfnPtr, NtfnState_Idle);
        }

        setThreadState(dest, ThreadState_Running);
        setRegister(dest, badgeRegister, badge);
        { { possibleSwitchTo(dest); } }
# 175 "/workspace/seL4-c89/preconfigured/src/object/notification.c"
        break;
    }

    case NtfnState_Active: {
        word_t badge2;

        badge2 = notification_ptr_get_ntfnMsgIdentifier(ntfnPtr);
        badge2 |= badge;

        notification_ptr_set_ntfnMsgIdentifier(ntfnPtr, badge2);
        break;
    }
    }
}

void receiveSignal(tcb_t *thread, cap_t cap, bool_t isBlocking)
{
    notification_t *ntfnPtr;

    ntfnPtr = ((notification_t *)(cap_notification_cap_get_capNtfnPtr(cap)));

    switch (notification_ptr_get_state(ntfnPtr)) {
    case NtfnState_Idle:
    case NtfnState_Waiting: {
        tcb_queue_t ntfn_queue;

        if (isBlocking) {

            thread_state_ptr_set_tsType(&thread->tcbState,
                                        ThreadState_BlockedOnNotification);
            thread_state_ptr_set_blockingObject(&thread->tcbState,
                                                ((word_t)(ntfnPtr)));
            scheduleTCB(thread);


            ntfn_queue = ntfn_ptr_get_queue(ntfnPtr);
            ntfn_queue = tcbEPAppend(thread, ntfn_queue);

            notification_ptr_set_state(ntfnPtr, NtfnState_Waiting);
            ntfn_ptr_set_queue(ntfnPtr, ntfn_queue);




        } else {
            doNBRecvFailedTransfer(thread);
        }

        break;
    }

    case NtfnState_Active:
        setRegister(
            thread, badgeRegister,
            notification_ptr_get_ntfnMsgIdentifier(ntfnPtr));
        notification_ptr_set_state(ntfnPtr, NtfnState_Idle);
# 239 "/workspace/seL4-c89/preconfigured/src/object/notification.c"
        break;
    }
}

void cancelAllSignals(notification_t *ntfnPtr)
{
    if (notification_ptr_get_state(ntfnPtr) == NtfnState_Waiting) {
        tcb_t *thread = ((tcb_t *)(notification_ptr_get_ntfnQueue_head(ntfnPtr)));

        notification_ptr_set_state(ntfnPtr, NtfnState_Idle);
        notification_ptr_set_ntfnQueue_head(ntfnPtr, 0);
        notification_ptr_set_ntfnQueue_tail(ntfnPtr, 0);


        for (; thread; thread = thread->tcbEPNext) {
            setThreadState(thread, ThreadState_Restart);
# 269 "/workspace/seL4-c89/preconfigured/src/object/notification.c"
            tcbSchedEnqueue(thread);

        }
        rescheduleRequired();
    }
}

void cancelSignal(tcb_t *threadPtr, notification_t *ntfnPtr)
{
    tcb_queue_t ntfn_queue;


    ;


    ntfn_queue = ntfn_ptr_get_queue(ntfnPtr);
    ntfn_queue = tcbEPDequeue(threadPtr, ntfn_queue);
    ntfn_ptr_set_queue(ntfnPtr, ntfn_queue);


    if (!ntfn_queue.head) {
        notification_ptr_set_state(ntfnPtr, NtfnState_Idle);
    }


    setThreadState(threadPtr, ThreadState_Inactive);
}

void completeSignal(notification_t *ntfnPtr, tcb_t *tcb)
{
    word_t badge;

    if (__builtin_expect(!!(tcb && notification_ptr_get_state(ntfnPtr) == NtfnState_Active), 1)) {
        badge = notification_ptr_get_ntfnMsgIdentifier(ntfnPtr);
        setRegister(tcb, badgeRegister, badge);
        notification_ptr_set_state(ntfnPtr, NtfnState_Idle);
# 321 "/workspace/seL4-c89/preconfigured/src/object/notification.c"
    } else {
        halt();
    }
}

static inline void doUnbindNotification(notification_t *ntfnPtr, tcb_t *tcbptr)
{
    notification_ptr_set_ntfnBoundTCB(ntfnPtr, (word_t) 0);
    tcbptr->tcbBoundNotification = ((void *)0);
}

void unbindMaybeNotification(notification_t *ntfnPtr)
{
    tcb_t *boundTCB;
    boundTCB = (tcb_t *)notification_ptr_get_ntfnBoundTCB(ntfnPtr);

    if (boundTCB) {
        doUnbindNotification(ntfnPtr, boundTCB);
    }
}

void unbindNotification(tcb_t *tcb)
{
    notification_t *ntfnPtr;
    ntfnPtr = tcb->tcbBoundNotification;

    if (ntfnPtr) {
        doUnbindNotification(ntfnPtr, tcb);
    }
}

void bindNotification(tcb_t *tcb, notification_t *ntfnPtr)
{
    notification_ptr_set_ntfnBoundTCB(ntfnPtr, (word_t)tcb);
    tcb->tcbBoundNotification = ntfnPtr;
}
# 1 "/workspace/seL4-c89/preconfigured/src/object/objecttype.c"
# 33 "/workspace/seL4-c89/preconfigured/src/object/objecttype.c"
word_t getObjectSize(word_t t, word_t userObjSize)
{
    if (t >= seL4_NonArchObjectTypeCount) {
        return Arch_getObjectSize(t);
    } else {
        switch (t) {
        case seL4_TCBObject:
            return 11;
        case seL4_EndpointObject:
            return 4;
        case seL4_NotificationObject:
            return 5;
        case seL4_CapTableObject:
            return 5 + userObjSize;
        case seL4_UntypedObject:
            return userObjSize;






        default:
            halt();
            return 0;
        }
    }
}

deriveCap_ret_t deriveCap(cte_t *slot, cap_t cap)
{
    deriveCap_ret_t ret;

    if (isArchCap(cap)) {
        return Arch_deriveCap(slot, cap);
    }

    switch (cap_get_capType(cap)) {
    case cap_zombie_cap:
        ret.status = EXCEPTION_NONE;
        ret.cap = cap_null_cap_new();
        break;

    case cap_irq_control_cap:
        ret.status = EXCEPTION_NONE;
        ret.cap = cap_null_cap_new();
        break;

    case cap_untyped_cap:
        ret.status = ensureNoChildren(slot);
        if (ret.status != EXCEPTION_NONE) {
            ret.cap = cap_null_cap_new();
        } else {
            ret.cap = cap;
        }
        break;


    case cap_reply_cap:
        ret.status = EXCEPTION_NONE;
        ret.cap = cap_null_cap_new();
        break;

    default:
        ret.status = EXCEPTION_NONE;
        ret.cap = cap;
    }

    return ret;
}

finaliseCap_ret_t finaliseCap(cap_t cap, bool_t final, bool_t exposed)
{
    finaliseCap_ret_t fc_ret;

    if (isArchCap(cap)) {
        return Arch_finaliseCap(cap, final);
    }

    switch (cap_get_capType(cap)) {
    case cap_endpoint_cap:
        if (final) {
            cancelAllIPC(((endpoint_t *)(cap_endpoint_cap_get_capEPPtr(cap))));
        }

        fc_ret.remainder = cap_null_cap_new();
        fc_ret.cleanupInfo = cap_null_cap_new();
        return fc_ret;

    case cap_notification_cap:
        if (final) {
            notification_t *ntfn = ((notification_t *)(cap_notification_cap_get_capNtfnPtr(cap)));



            unbindMaybeNotification(ntfn);
            cancelAllSignals(ntfn);
        }
        fc_ret.remainder = cap_null_cap_new();
        fc_ret.cleanupInfo = cap_null_cap_new();
        return fc_ret;

    case cap_reply_cap:
# 156 "/workspace/seL4-c89/preconfigured/src/object/objecttype.c"
    case cap_null_cap:
    case cap_domain_cap:
        fc_ret.remainder = cap_null_cap_new();
        fc_ret.cleanupInfo = cap_null_cap_new();
        return fc_ret;
    }

    if (exposed) {
        halt();
    }

    switch (cap_get_capType(cap)) {
    case cap_cnode_cap: {
        if (final) {
            fc_ret.remainder =
                Zombie_new(
                    1ul << cap_cnode_cap_get_capCNodeRadix(cap),
                    cap_cnode_cap_get_capCNodeRadix(cap),
                    cap_cnode_cap_get_capCNodePtr(cap)
                );
            fc_ret.cleanupInfo = cap_null_cap_new();
            return fc_ret;
        }
        break;
    }

    case cap_thread_cap: {
        if (final) {
            tcb_t *tcb;
            cte_t *cte_ptr;

            tcb = ((tcb_t *)(cap_thread_cap_get_capTCBPtr(cap)));
           
            cte_ptr = (((cte_t *)((word_t)(tcb)&~((1ul << (11)) - 1ul)))+(tcbCTable));
            unbindNotification(tcb);
# 200 "/workspace/seL4-c89/preconfigured/src/object/objecttype.c"
            suspend(tcb);



            Arch_prepareThreadDelete(tcb);
            fc_ret.remainder =
                Zombie_new(
                    tcbArchCNodeEntries,
                    (1ul << (6)),
                    ((word_t)(cte_ptr))
                );
            fc_ret.cleanupInfo = cap_null_cap_new();
            return fc_ret;
        }
        break;
    }
# 241 "/workspace/seL4-c89/preconfigured/src/object/objecttype.c"
    case cap_zombie_cap:
        fc_ret.remainder = cap;
        fc_ret.cleanupInfo = cap_null_cap_new();
        return fc_ret;

    case cap_irq_handler_cap:
        if (final) {
            irq_t irq = (cap_irq_handler_cap_get_capIRQ(cap));

            deletingIRQHandler(irq);

            fc_ret.remainder = cap_null_cap_new();
            fc_ret.cleanupInfo = cap;
            return fc_ret;
        }
        break;
    }

    fc_ret.remainder = cap_null_cap_new();
    fc_ret.cleanupInfo = cap_null_cap_new();
    return fc_ret;
}

bool_t __attribute__((__const__)) hasCancelSendRights(cap_t cap)
{
    switch (cap_get_capType(cap)) {
    case cap_endpoint_cap:
        return cap_endpoint_cap_get_capCanSend(cap) &&
               cap_endpoint_cap_get_capCanReceive(cap) &&
               cap_endpoint_cap_get_capCanGrantReply(cap) &&
               cap_endpoint_cap_get_capCanGrant(cap);

    default:
        return false;
    }
}

bool_t __attribute__((__const__)) sameRegionAs(cap_t cap_a, cap_t cap_b)
{
    switch (cap_get_capType(cap_a)) {
    case cap_untyped_cap:
        if (cap_get_capIsPhysical(cap_b)) {
            word_t aBase, bBase, aTop, bTop;

            aBase = (word_t)((word_t *)(cap_untyped_cap_get_capPtr(cap_a)));
            bBase = (word_t)cap_get_capPtr(cap_b);

            aTop = aBase + ((1ul << (cap_untyped_cap_get_capBlockSize(cap_a))) - 1ul);
            bTop = bBase + ((1ul << (cap_get_capSizeBits(cap_b))) - 1ul);

            return (aBase <= bBase) && (bTop <= aTop) && (bBase <= bTop);
        }
        break;

    case cap_endpoint_cap:
        if (cap_get_capType(cap_b) == cap_endpoint_cap) {
            return cap_endpoint_cap_get_capEPPtr(cap_a) ==
                   cap_endpoint_cap_get_capEPPtr(cap_b);
        }
        break;

    case cap_notification_cap:
        if (cap_get_capType(cap_b) == cap_notification_cap) {
            return cap_notification_cap_get_capNtfnPtr(cap_a) ==
                   cap_notification_cap_get_capNtfnPtr(cap_b);
        }
        break;

    case cap_cnode_cap:
        if (cap_get_capType(cap_b) == cap_cnode_cap) {
            return (cap_cnode_cap_get_capCNodePtr(cap_a) ==
                    cap_cnode_cap_get_capCNodePtr(cap_b)) &&
                   (cap_cnode_cap_get_capCNodeRadix(cap_a) ==
                    cap_cnode_cap_get_capCNodeRadix(cap_b));
        }
        break;

    case cap_thread_cap:
        if (cap_get_capType(cap_b) == cap_thread_cap) {
            return cap_thread_cap_get_capTCBPtr(cap_a) ==
                   cap_thread_cap_get_capTCBPtr(cap_b);
        }
        break;

    case cap_reply_cap:
        if (cap_get_capType(cap_b) == cap_reply_cap) {




            return cap_reply_cap_get_capTCBPtr(cap_a) ==
                   cap_reply_cap_get_capTCBPtr(cap_b);

        }
        break;

    case cap_domain_cap:
        if (cap_get_capType(cap_b) == cap_domain_cap) {
            return true;
        }
        break;

    case cap_irq_control_cap:
        if (cap_get_capType(cap_b) == cap_irq_control_cap ||
            cap_get_capType(cap_b) == cap_irq_handler_cap ||
            Arch_isIRQControlDescendant(cap_b)) {
            return true;
        }
        break;

    case cap_irq_handler_cap:
        if (cap_get_capType(cap_b) == cap_irq_handler_cap) {
            return (word_t)cap_irq_handler_cap_get_capIRQ(cap_a) ==
                   (word_t)cap_irq_handler_cap_get_capIRQ(cap_b);
        }
        break;
# 373 "/workspace/seL4-c89/preconfigured/src/object/objecttype.c"
    default:
        if (isArchCap(cap_a) &&
            isArchCap(cap_b)) {
            return Arch_sameRegionAs(cap_a, cap_b);
        }
        break;
    }

    return false;
}

bool_t __attribute__((__const__)) sameObjectAs(cap_t cap_a, cap_t cap_b)
{
    if (cap_get_capType(cap_a) == cap_untyped_cap) {
        return false;
    }
    if (cap_get_capType(cap_a) == cap_irq_control_cap) {
        return false;
    }
    if (isArchCap(cap_a) && isArchCap(cap_b)) {
        return Arch_sameObjectAs(cap_a, cap_b);
    }
    return sameRegionAs(cap_a, cap_b);
}

cap_t __attribute__((__const__)) updateCapData(bool_t preserve, word_t newData, cap_t cap)
{
    if (isArchCap(cap)) {
        return Arch_updateCapData(preserve, newData, cap);
    }

    switch (cap_get_capType(cap)) {
    case cap_endpoint_cap:
        if (!preserve && cap_endpoint_cap_get_capEPBadge(cap) == 0) {
            return cap_endpoint_cap_set_capEPBadge(cap, newData);
        } else {
            return cap_null_cap_new();
        }

    case cap_notification_cap:
        if (!preserve && cap_notification_cap_get_capNtfnBadge(cap) == 0) {
            return cap_notification_cap_set_capNtfnBadge(cap, newData);
        } else {
            return cap_null_cap_new();
        }

    case cap_cnode_cap: {
        word_t guard, guardSize;
        seL4_CNode_CapData_t w = { .words = { newData } };

        guardSize = seL4_CNode_CapData_get_guardSize(w);

        if (guardSize + cap_cnode_cap_get_capCNodeRadix(cap) > (1 << 6)) {
            return cap_null_cap_new();
        } else {
            cap_t new_cap;

            guard = seL4_CNode_CapData_get_guard(w) & ((1ul << (guardSize)) - 1ul);
            new_cap = cap_cnode_cap_set_capCNodeGuard(cap, guard);
            new_cap = cap_cnode_cap_set_capCNodeGuardSize(new_cap,
                                                          guardSize);

            return new_cap;
        }
    }

    default:
        return cap;
    }
}

cap_t __attribute__((__const__)) maskCapRights(seL4_CapRights_t cap_rights, cap_t cap)
{
    if (isArchCap(cap)) {
        return Arch_maskCapRights(cap_rights, cap);
    }

    switch (cap_get_capType(cap)) {
    case cap_null_cap:
    case cap_domain_cap:
    case cap_cnode_cap:
    case cap_untyped_cap:
    case cap_irq_control_cap:
    case cap_irq_handler_cap:
    case cap_zombie_cap:
    case cap_thread_cap:




        return cap;

    case cap_endpoint_cap: {
        cap_t new_cap;

        new_cap = cap_endpoint_cap_set_capCanSend(
                      cap, cap_endpoint_cap_get_capCanSend(cap) &
                      seL4_CapRights_get_capAllowWrite(cap_rights));
        new_cap = cap_endpoint_cap_set_capCanReceive(
                      new_cap, cap_endpoint_cap_get_capCanReceive(cap) &
                      seL4_CapRights_get_capAllowRead(cap_rights));
        new_cap = cap_endpoint_cap_set_capCanGrant(
                      new_cap, cap_endpoint_cap_get_capCanGrant(cap) &
                      seL4_CapRights_get_capAllowGrant(cap_rights));
        new_cap = cap_endpoint_cap_set_capCanGrantReply(
                      new_cap, cap_endpoint_cap_get_capCanGrantReply(cap) &
                      seL4_CapRights_get_capAllowGrantReply(cap_rights));

        return new_cap;
    }

    case cap_notification_cap: {
        cap_t new_cap;

        new_cap = cap_notification_cap_set_capNtfnCanSend(
                      cap, cap_notification_cap_get_capNtfnCanSend(cap) &
                      seL4_CapRights_get_capAllowWrite(cap_rights));
        new_cap = cap_notification_cap_set_capNtfnCanReceive(new_cap,
                                                             cap_notification_cap_get_capNtfnCanReceive(cap) &
                                                             seL4_CapRights_get_capAllowRead(cap_rights));

        return new_cap;
    }
    case cap_reply_cap: {
        cap_t new_cap;

        new_cap = cap_reply_cap_set_capReplyCanGrant(
                      cap, cap_reply_cap_get_capReplyCanGrant(cap) &
                      seL4_CapRights_get_capAllowGrant(cap_rights));
        return new_cap;
    }


    default:
        halt();
    }
}

cap_t createObject(object_t t, void *regionBase, word_t userSize, bool_t deviceMemory)
{

    if (t >= (object_t) seL4_NonArchObjectTypeCount) {
        return Arch_createObject(t, regionBase, userSize, deviceMemory);
    }


    switch ((api_object_t)t) {
    case seL4_TCBObject: {
        tcb_t *tcb;
        tcb = ((tcb_t *)((word_t)regionBase + (1ul << ((11 - 1)))));






        Arch_initContext(&tcb->tcbArch.tcbContext);

        tcb->tcbTimeSlice = 5;

        tcb->tcbDomain = ksCurDomain;


        ;
# 545 "/workspace/seL4-c89/preconfigured/src/object/objecttype.c"
        return cap_thread_cap_new(((word_t)(tcb)));
    }

    case seL4_EndpointObject:


        return cap_endpoint_cap_new(0, true, true, true, true,
                                    ((word_t)(regionBase)));

    case seL4_NotificationObject:


        return cap_notification_cap_new(0, true, true,
                                        ((word_t)(regionBase)));

    case seL4_CapTableObject:





        return cap_cnode_cap_new(userSize, 0, 0, ((word_t)(regionBase)));

    case seL4_UntypedObject:




        return cap_untyped_cap_new(0, !!deviceMemory, userSize, ((word_t)(regionBase)));
# 593 "/workspace/seL4-c89/preconfigured/src/object/objecttype.c"
    default:
        halt();
    }
}

void createNewObjects(object_t t, cte_t *parent,
                      cte_t *destCNode, word_t destOffset, word_t destLength,
                      void *regionBase, word_t userSize, bool_t deviceMemory)
{
    word_t objectSize;
    void *nextFreeArea;
    word_t i;
    word_t totalObjectSize __attribute__((unused));


    objectSize = getObjectSize(t, userSize);
    totalObjectSize = destLength << objectSize;




    nextFreeArea = regionBase;
    for (i = 0; i < destLength; i++) {


        cap_t cap = createObject(t, (void *)((word_t)nextFreeArea + (i << objectSize)), userSize, deviceMemory);


        insertNewCap(parent, &destCNode[destOffset + i], cap);


    }
}







exception_t decodeInvocation(word_t invLabel, word_t length,
                             cptr_t capIndex, cte_t *slot, cap_t cap,
                             bool_t block, bool_t call,
                             word_t *buffer)

{
    if (isArchCap(cap)) {
        return Arch_decodeInvocation(invLabel, length, capIndex,
                                     slot, cap, call, buffer);
    }

    switch (cap_get_capType(cap)) {
    case cap_null_cap:
        ;
        current_syscall_error.type = seL4_InvalidCapability;
        current_syscall_error.invalidCapNumber = 0;
        return EXCEPTION_SYSCALL_ERROR;

    case cap_zombie_cap:
        ;
        current_syscall_error.type = seL4_InvalidCapability;
        current_syscall_error.invalidCapNumber = 0;
        return EXCEPTION_SYSCALL_ERROR;

    case cap_endpoint_cap:
        if (__builtin_expect(!!(!cap_endpoint_cap_get_capCanSend(cap)), 0)) {
           
                               ;
            current_syscall_error.type = seL4_InvalidCapability;
            current_syscall_error.invalidCapNumber = 0;
            return EXCEPTION_SYSCALL_ERROR;
        }

        setThreadState(ksCurThread, ThreadState_Restart);







        return performInvocation_Endpoint(
                   ((endpoint_t *)(cap_endpoint_cap_get_capEPPtr(cap))),
                   cap_endpoint_cap_get_capEPBadge(cap),
                   cap_endpoint_cap_get_capCanGrant(cap),
                   cap_endpoint_cap_get_capCanGrantReply(cap), block, call);


    case cap_notification_cap: {
        if (__builtin_expect(!!(!cap_notification_cap_get_capNtfnCanSend(cap)), 0)) {
           
                               ;
            current_syscall_error.type = seL4_InvalidCapability;
            current_syscall_error.invalidCapNumber = 0;
            return EXCEPTION_SYSCALL_ERROR;
        }

        setThreadState(ksCurThread, ThreadState_Restart);
        return performInvocation_Notification(
                   ((notification_t *)(cap_notification_cap_get_capNtfnPtr(cap))),
                   cap_notification_cap_get_capNtfnBadge(cap));
    }
# 704 "/workspace/seL4-c89/preconfigured/src/object/objecttype.c"
    case cap_reply_cap:
        if (__builtin_expect(!!(cap_reply_cap_get_capReplyMaster(cap)), 0)) {
           
                               ;
            current_syscall_error.type = seL4_InvalidCapability;
            current_syscall_error.invalidCapNumber = 0;
            return EXCEPTION_SYSCALL_ERROR;
        }

        setThreadState(ksCurThread, ThreadState_Restart);
        return performInvocation_Reply(
                   ((tcb_t *)(cap_reply_cap_get_capTCBPtr(cap))), slot,
                   cap_reply_cap_get_capReplyCanGrant(cap));



    case cap_thread_cap:
# 729 "/workspace/seL4-c89/preconfigured/src/object/objecttype.c"
        return decodeTCBInvocation(invLabel, length, cap, slot, call, buffer);

    case cap_domain_cap:
# 740 "/workspace/seL4-c89/preconfigured/src/object/objecttype.c"
        return decodeDomainInvocation(invLabel, length, buffer);

    case cap_cnode_cap:
# 751 "/workspace/seL4-c89/preconfigured/src/object/objecttype.c"
        return decodeCNodeInvocation(invLabel, length, cap, buffer);

    case cap_untyped_cap:
        return decodeUntypedInvocation(invLabel, length, slot, cap, call, buffer);

    case cap_irq_control_cap:
        return decodeIRQControlInvocation(invLabel, length, slot, buffer);

    case cap_irq_handler_cap:
        return decodeIRQHandlerInvocation(invLabel,
                                          (cap_irq_handler_cap_get_capIRQ(cap)));
# 783 "/workspace/seL4-c89/preconfigured/src/object/objecttype.c"
    default:
        halt();
    }
}
# 798 "/workspace/seL4-c89/preconfigured/src/object/objecttype.c"
exception_t performInvocation_Endpoint(endpoint_t *ep, word_t badge,
                                       bool_t canGrant, bool_t canGrantReply,
                                       bool_t block, bool_t call)
{
    sendIPC(block, call, badge, canGrant, canGrantReply, ksCurThread, ep);

    return EXCEPTION_NONE;
}


exception_t performInvocation_Notification(notification_t *ntfn, word_t badge)
{
    sendSignal(ntfn, badge);

    return EXCEPTION_NONE;
}
# 822 "/workspace/seL4-c89/preconfigured/src/object/objecttype.c"
exception_t performInvocation_Reply(tcb_t *thread, cte_t *slot, bool_t canGrant)
{
    doReplyTransfer(ksCurThread, thread, slot, canGrant);
    return EXCEPTION_NONE;
}


word_t __attribute__((__const__)) cap_get_capSizeBits(cap_t cap)
{

    cap_tag_t ctag;

    ctag = cap_get_capType(cap);

    switch (ctag) {
    case cap_untyped_cap:
        return cap_untyped_cap_get_capBlockSize(cap);

    case cap_endpoint_cap:
        return 4;

    case cap_notification_cap:
        return 5;

    case cap_cnode_cap:
        return cap_cnode_cap_get_capCNodeRadix(cap) + 5;

    case cap_thread_cap:
        return 11;

    case cap_zombie_cap: {
        word_t type = cap_zombie_cap_get_capZombieType(cap);
        if (type == (1ul << (6))) {
            return 11;
        }
        return ((type) & ((1ul << (6)) - 1ul)) + 5;
    }

    case cap_null_cap:
        return 0;

    case cap_domain_cap:
        return 0;

    case cap_reply_cap:



        return 0;


    case cap_irq_control_cap:



        return 0;

    case cap_irq_handler_cap:
        return 0;






    default:
        return cap_get_archCapSizeBits(cap);
    }

}




bool_t __attribute__((__const__)) cap_get_capIsPhysical(cap_t cap)
{
    cap_tag_t ctag;

    ctag = cap_get_capType(cap);

    switch (ctag) {
    case cap_untyped_cap:
        return true;

    case cap_endpoint_cap:
        return true;

    case cap_notification_cap:
        return true;

    case cap_cnode_cap:
        return true;

    case cap_thread_cap:



        return true;

    case cap_zombie_cap:
        return true;

    case cap_domain_cap:
        return false;

    case cap_reply_cap:



        return false;


    case cap_irq_control_cap:



        return false;

    case cap_irq_handler_cap:
        return false;

    default:
        return cap_get_archCapIsPhysical(cap);
    }
}

void *__attribute__((__const__)) cap_get_capPtr(cap_t cap)
{
    cap_tag_t ctag;

    ctag = cap_get_capType(cap);

    switch (ctag) {
    case cap_untyped_cap:
        return ((word_t *)(cap_untyped_cap_get_capPtr(cap)));

    case cap_endpoint_cap:
        return ((endpoint_t *)(cap_endpoint_cap_get_capEPPtr(cap)));

    case cap_notification_cap:
        return ((notification_t *)(cap_notification_cap_get_capNtfnPtr(cap)));

    case cap_cnode_cap:
        return ((cte_t *)(cap_cnode_cap_get_capCNodePtr(cap)));

    case cap_thread_cap:
        return (((cte_t *)((word_t)(cap_thread_cap_get_capTCBPtr(cap))&~((1ul << (11)) - 1ul)))+(0));

    case cap_zombie_cap:
        return ((cte_t *)(cap_zombie_cap_get_capZombiePtr(cap)));

    case cap_domain_cap:
        return ((void *)0);

    case cap_reply_cap:



        return ((void *)0);


    case cap_irq_control_cap:



        return ((void *)0);

    case cap_irq_handler_cap:
        return ((void *)0);






    default:
        return cap_get_archCapPtr(cap);

    }
}

bool_t __attribute__((__const__)) isCapRevocable(cap_t derivedCap, cap_t srcCap)
{
    if (isArchCap(derivedCap)) {
        return Arch_isCapRevocable(derivedCap, srcCap);
    }
    switch (cap_get_capType(derivedCap)) {
    case cap_endpoint_cap:
        return (cap_endpoint_cap_get_capEPBadge(derivedCap) !=
                cap_endpoint_cap_get_capEPBadge(srcCap));

    case cap_notification_cap:
        return (cap_notification_cap_get_capNtfnBadge(derivedCap) !=
                cap_notification_cap_get_capNtfnBadge(srcCap));

    case cap_irq_handler_cap:
        return (cap_get_capType(srcCap) ==
                cap_irq_control_cap);

    case cap_untyped_cap:
        return true;

    default:
        return false;
    }
}
# 1 "/workspace/seL4-c89/preconfigured/src/object/tcb.c"
# 32 "/workspace/seL4-c89/preconfigured/src/object/tcb.c"
static exception_t checkPrio(prio_t prio, tcb_t *auth)
{
    prio_t mcp;

    mcp = auth->tcbMCP;


    ;


    if (prio > mcp) {
        current_syscall_error.type = seL4_RangeError;
        current_syscall_error.rangeErrorMin = seL4_MinPrio;
        current_syscall_error.rangeErrorMax = mcp;
        return EXCEPTION_SYSCALL_ERROR;
    }

    return EXCEPTION_NONE;
}

static inline void addToBitmap(word_t cpu, word_t dom, word_t prio)
{
    word_t l1index;
    word_t l1index_inverted;

    l1index = prio_to_l1index(prio);
    l1index_inverted = invert_l1index(l1index);

    ksReadyQueuesL1Bitmap[dom] |= (1ul << (l1index));




    ksReadyQueuesL2Bitmap[dom][l1index_inverted] |= (1ul << (prio & ((1ul << (6)) - 1ul)));
}

static inline void removeFromBitmap(word_t cpu, word_t dom, word_t prio)
{
    word_t l1index;
    word_t l1index_inverted;

    l1index = prio_to_l1index(prio);
    l1index_inverted = invert_l1index(l1index);
    ksReadyQueuesL2Bitmap[dom][l1index_inverted] &= ~(1ul << (prio & ((1ul << (6)) - 1ul)));
    if (__builtin_expect(!!(!ksReadyQueuesL2Bitmap[dom][l1index_inverted]), 0)) {
        ksReadyQueuesL1Bitmap[dom] &= ~(1ul << (l1index));
    }
}

tcb_queue_t tcb_queue_remove(tcb_queue_t queue, tcb_t *tcb)
{
    tcb_t *before;
    tcb_t *after;

    before = tcb->tcbSchedPrev;
    after = tcb->tcbSchedNext;

    if (queue.head == tcb && queue.end == tcb) {
        queue.head = ((void *)0);
        queue.end = ((void *)0);
    } else {
        if (queue.head == tcb) {
            after->tcbSchedPrev = ((void *)0);
            tcb->tcbSchedNext = ((void *)0);
            queue.head = after;
        } else {
            if (queue.end == tcb) {
                before->tcbSchedNext = ((void *)0);
                tcb->tcbSchedPrev = ((void *)0);
                queue.end = before;
            } else {
                before->tcbSchedNext = after;
                after->tcbSchedPrev = before;
                tcb->tcbSchedPrev = ((void *)0);
                tcb->tcbSchedNext = ((void *)0);
            }
        }
    }

    return queue;
}


void tcbSchedEnqueue(tcb_t *tcb)
{





    if (!thread_state_get_tcbQueued(tcb->tcbState)) {
        tcb_queue_t queue;
        dom_t dom;
        prio_t prio;
        word_t idx;

        dom = tcb->tcbDomain;
        prio = tcb->tcbPriority;
        idx = ready_queues_index(dom, prio);
        queue = ksReadyQueues[idx];

        if (tcb_queue_empty(queue)) {
            addToBitmap(0, dom, prio);
        }

        ksReadyQueues[idx] = tcb_queue_prepend(queue, tcb);

        thread_state_ptr_set_tcbQueued(&tcb->tcbState, true);
    }
}


void tcbSchedAppend(tcb_t *tcb)
{





    if (!thread_state_get_tcbQueued(tcb->tcbState)) {
        tcb_queue_t queue;
        dom_t dom;
        prio_t prio;
        word_t idx;

        dom = tcb->tcbDomain;
        prio = tcb->tcbPriority;
        idx = ready_queues_index(dom, prio);
        queue = ksReadyQueues[idx];

        if (tcb_queue_empty(queue)) {
            addToBitmap(0, dom, prio);
        }

        ksReadyQueues[idx] = tcb_queue_append(queue, tcb);

        thread_state_ptr_set_tcbQueued(&tcb->tcbState, true);
    }
}


void tcbSchedDequeue(tcb_t *tcb)
{
    if (thread_state_get_tcbQueued(tcb->tcbState)) {
        tcb_queue_t queue;
        tcb_queue_t new_queue;
        dom_t dom;
        prio_t prio;
        word_t idx;

        dom = tcb->tcbDomain;
        prio = tcb->tcbPriority;
        idx = ready_queues_index(dom, prio);
        queue = ksReadyQueues[idx];

        new_queue = tcb_queue_remove(queue, tcb);

        ksReadyQueues[idx] = new_queue;

        thread_state_ptr_set_tcbQueued(&tcb->tcbState, false);

        if (__builtin_expect(!!(tcb_queue_empty(new_queue)), 1)) {
            removeFromBitmap(0, dom, prio);
        }
    }
}
# 239 "/workspace/seL4-c89/preconfigured/src/object/tcb.c"
tcb_queue_t tcbEPAppend(tcb_t *tcb, tcb_queue_t queue)
{
    if (!queue.head) {
        queue.head = tcb;
    } else {
        queue.end->tcbEPNext = tcb;
    }
    tcb->tcbEPPrev = queue.end;
    tcb->tcbEPNext = ((void *)0);
    queue.end = tcb;

    return queue;
}



tcb_queue_t tcbEPDequeue(tcb_t *tcb, tcb_queue_t queue)
{
    if (tcb->tcbEPPrev) {
        tcb->tcbEPPrev->tcbEPNext = tcb->tcbEPNext;
    } else {
        queue.head = tcb->tcbEPNext;
    }

    if (tcb->tcbEPNext) {
        tcb->tcbEPNext->tcbEPPrev = tcb->tcbEPPrev;
    } else {
        queue.end = tcb->tcbEPPrev;
    }

    return queue;
}
# 338 "/workspace/seL4-c89/preconfigured/src/object/tcb.c"
cptr_t __attribute__((__pure__)) getExtraCPtr(word_t *bufferPtr, word_t i)
{
    return (cptr_t)bufferPtr[seL4_MsgMaxLength + 2 + i];
}

void setExtraBadge(word_t *bufferPtr, word_t badge,
                   word_t i)
{
    bufferPtr[seL4_MsgMaxLength + 2 + i] = badge;
}


void setupCallerCap(tcb_t *sender, tcb_t *receiver, bool_t canGrant)
{
    cte_t *replySlot, *callerSlot;
    cap_t masterCap __attribute__((unused)), callerCap __attribute__((unused));

    setThreadState(sender, ThreadState_BlockedOnReply);
    replySlot = (((cte_t *)((word_t)(sender)&~((1ul << (11)) - 1ul)))+(tcbReply));
    masterCap = replySlot->cap;

    ;
    ;
    ;
    ;
    callerSlot = (((cte_t *)((word_t)(receiver)&~((1ul << (11)) - 1ul)))+(tcbCaller));
    callerCap = callerSlot->cap;

    ;
    cteInsert(cap_reply_cap_new(canGrant, false, ((word_t)(sender))),
              replySlot, callerSlot);
}

void deleteCallerCap(tcb_t *receiver)
{
    cte_t *callerSlot;

    callerSlot = (((cte_t *)((word_t)(receiver)&~((1ul << (11)) - 1ul)))+(tcbCaller));

    cteDeleteOne(callerSlot);
}


extra_caps_t current_extra_caps;

exception_t lookupExtraCaps(tcb_t *thread, word_t *bufferPtr, seL4_MessageInfo_t info)
{
    lookupSlot_raw_ret_t lu_ret;
    cptr_t cptr;
    word_t i, length;

    if (!bufferPtr) {
        current_extra_caps.excaprefs[0] = ((void *)0);
        return EXCEPTION_NONE;
    }

    length = seL4_MessageInfo_get_extraCaps(info);

    for (i = 0; i < length; i++) {
        cptr = getExtraCPtr(bufferPtr, i);

        lu_ret = lookupSlot(thread, cptr);
        if (lu_ret.status != EXCEPTION_NONE) {
            current_fault = seL4_Fault_CapFault_new(cptr, false);
            return lu_ret.status;
        }

        current_extra_caps.excaprefs[i] = lu_ret.slot;
    }
    if (i < ((1ul<<(seL4_MsgExtraCapBits))-1)) {
        current_extra_caps.excaprefs[i] = ((void *)0);
    }

    return EXCEPTION_NONE;
}


word_t copyMRs(tcb_t *sender, word_t *sendBuf, tcb_t *receiver,
               word_t *recvBuf, word_t n)
{
    word_t i;


    for (i = 0; i < n && i < n_msgRegisters; i++) {
        setRegister(receiver, msgRegisters[i],
                    getRegister(sender, msgRegisters[i]));
    }

    if (!recvBuf || !sendBuf) {
        return i;
    }


    for (; i < n; i++) {
        recvBuf[i + 1] = sendBuf[i + 1];
    }

    return i;
}
# 767 "/workspace/seL4-c89/preconfigured/src/object/tcb.c"
static exception_t invokeSetTLSBase(tcb_t *thread, word_t tls_base)
{
    setRegister(thread, TLS_BASE, tls_base);
    if (thread == ksCurThread) {


        rescheduleRequired();
    }

    return EXCEPTION_NONE;
}

static exception_t decodeSetTLSBase(cap_t cap, word_t length, word_t *buffer)
{
    word_t tls_base;

    if (length < 1) {
        ;
        current_syscall_error.type = seL4_TruncatedMessage;
        return EXCEPTION_SYSCALL_ERROR;
    }

    tls_base = getSyscallArg(0, buffer);

    setThreadState(ksCurThread, ThreadState_Restart);
    return invokeSetTLSBase(((tcb_t *)(cap_thread_cap_get_capTCBPtr(cap))), tls_base);
}

static void invokeSetFlags(tcb_t *thread, word_t clear, word_t set, bool_t call)
{
    tcb_t *cur_thread = ksCurThread;
    word_t flags = thread->tcbFlags;

    flags &= ~clear;
    flags |= set & seL4_TCBFlag_MASK;
    thread->tcbFlags = flags;



    if (flags & seL4_TCBFlag_fpuDisabled) {
        fpuRelease(thread);
    }

    if (call) {
        word_t *ipcBuffer = lookupIPCBuffer(true, cur_thread);
        setRegister(cur_thread, badgeRegister, 0);
        unsigned int length = setMR(cur_thread, ipcBuffer, 0, flags);
        setRegister(cur_thread, msgInfoRegister, wordFromMessageInfo(
                        seL4_MessageInfo_new(0, 0, 0, length)));
    }
    setThreadState(cur_thread, ThreadState_Running);
}

static exception_t decodeSetFlags(cap_t cap, word_t length, bool_t call, word_t *buffer)
{
    tcb_t *thread = ((tcb_t *)(cap_thread_cap_get_capTCBPtr(cap)));

    if (length < 2) {
        ;
        current_syscall_error.type = seL4_TruncatedMessage;
        return EXCEPTION_SYSCALL_ERROR;
    }

    word_t clear = getSyscallArg(0, buffer);
    word_t set = getSyscallArg(1, buffer);

    setThreadState(ksCurThread, ThreadState_Restart);
    invokeSetFlags(thread, clear, set, call);
    return EXCEPTION_NONE;
}





exception_t decodeTCBInvocation(word_t invLabel, word_t length, cap_t cap,
                                cte_t *slot, bool_t call, word_t *buffer)
{

   

    switch (invLabel) {
    case TCBReadRegisters:

        return decodeReadRegisters(cap, length, call, buffer);

    case TCBWriteRegisters:
        return decodeWriteRegisters(cap, length, buffer);

    case TCBCopyRegisters:
        return decodeCopyRegisters(cap, length, buffer);

    case TCBSuspend:

        setThreadState(ksCurThread, ThreadState_Restart);
        return invokeTCB_Suspend(
                   ((tcb_t *)(cap_thread_cap_get_capTCBPtr(cap))));

    case TCBResume:
        setThreadState(ksCurThread, ThreadState_Restart);
        return invokeTCB_Resume(
                   ((tcb_t *)(cap_thread_cap_get_capTCBPtr(cap))));

    case TCBConfigure:
        return decodeTCBConfigure(cap, length, slot, buffer);

    case TCBSetPriority:
        return decodeSetPriority(cap, length, buffer);

    case TCBSetMCPriority:
        return decodeSetMCPriority(cap, length, buffer);

    case TCBSetSchedParams:



        return decodeSetSchedParams(cap, length, buffer);


    case TCBSetIPCBuffer:
        return decodeSetIPCBuffer(cap, length, slot, buffer);

    case TCBSetSpace:
        return decodeSetSpace(cap, length, slot, buffer);

    case TCBBindNotification:
        return decodeBindNotification(cap);

    case TCBUnbindNotification:
        return decodeUnbindNotification(cap);
# 928 "/workspace/seL4-c89/preconfigured/src/object/tcb.c"
    case TCBSetTLSBase:
        return decodeSetTLSBase(cap, length, buffer);

    case TCBSetFlags:
        return decodeSetFlags(cap, length, call, buffer);

    default:

        ;
        current_syscall_error.type = seL4_IllegalOperation;
        return EXCEPTION_SYSCALL_ERROR;
    }
}

enum CopyRegistersFlags {
    CopyRegisters_suspendSource = 0,
    CopyRegisters_resumeTarget = 1,
    CopyRegisters_transferFrame = 2,
    CopyRegisters_transferInteger = 3
};

exception_t decodeCopyRegisters(cap_t cap, word_t length, word_t *buffer)
{
    word_t transferArch;
    tcb_t *srcTCB;
    cap_t source_cap;
    word_t flags;

    if (length < 1 || current_extra_caps.excaprefs[0] == ((void *)0)) {
        ;
        current_syscall_error.type = seL4_TruncatedMessage;
        return EXCEPTION_SYSCALL_ERROR;
    }

    flags = getSyscallArg(0, buffer);

    transferArch = Arch_decodeTransfer(flags >> 8);

    source_cap = current_extra_caps.excaprefs[0]->cap;

    if (cap_get_capType(source_cap) == cap_thread_cap) {
        srcTCB = ((tcb_t *)(cap_thread_cap_get_capTCBPtr(source_cap)));
    } else {
        ;
        current_syscall_error.type = seL4_InvalidCapability;
        current_syscall_error.invalidCapNumber = 1;
        return EXCEPTION_SYSCALL_ERROR;
    }

    setThreadState(ksCurThread, ThreadState_Restart);
    return invokeTCB_CopyRegisters(
               ((tcb_t *)(cap_thread_cap_get_capTCBPtr(cap))), srcTCB,
               flags & (1ul << (CopyRegisters_suspendSource)),
               flags & (1ul << (CopyRegisters_resumeTarget)),
               flags & (1ul << (CopyRegisters_transferFrame)),
               flags & (1ul << (CopyRegisters_transferInteger)),
               transferArch);

}

enum ReadRegistersFlags {
    ReadRegisters_suspend = 0
};

exception_t decodeReadRegisters(cap_t cap, word_t length, bool_t call,
                                word_t *buffer)
{
    word_t transferArch, flags, n;
    tcb_t *thread;

    if (length < 2) {
        ;
        current_syscall_error.type = seL4_TruncatedMessage;
        return EXCEPTION_SYSCALL_ERROR;
    }

    flags = getSyscallArg(0, buffer);
    n = getSyscallArg(1, buffer);

    if (n < 1 || n > n_frameRegisters + n_gpRegisters) {
       
                         ;
        current_syscall_error.type = seL4_RangeError;
        current_syscall_error.rangeErrorMin = 1;
        current_syscall_error.rangeErrorMax = n_frameRegisters +
                                              n_gpRegisters;
        return EXCEPTION_SYSCALL_ERROR;
    }

    transferArch = Arch_decodeTransfer(flags >> 8);

    thread = ((tcb_t *)(cap_thread_cap_get_capTCBPtr(cap)));
    if (thread == ksCurThread) {
        ;
        current_syscall_error.type = seL4_IllegalOperation;
        return EXCEPTION_SYSCALL_ERROR;
    }

    setThreadState(ksCurThread, ThreadState_Restart);
    return invokeTCB_ReadRegisters(
               ((tcb_t *)(cap_thread_cap_get_capTCBPtr(cap))),
               flags & (1ul << (ReadRegisters_suspend)),
               n, transferArch, call);
}

enum WriteRegistersFlags {
    WriteRegisters_resume = 0
};

exception_t decodeWriteRegisters(cap_t cap, word_t length, word_t *buffer)
{
    word_t flags, w;
    word_t transferArch;
    tcb_t *thread;

    if (length < 2) {
        ;
        current_syscall_error.type = seL4_TruncatedMessage;
        return EXCEPTION_SYSCALL_ERROR;
    }

    flags = getSyscallArg(0, buffer);
    w = getSyscallArg(1, buffer);

    if (length - 2 < w) {
       
                                            ;
        current_syscall_error.type = seL4_TruncatedMessage;
        return EXCEPTION_SYSCALL_ERROR;
    }

    transferArch = Arch_decodeTransfer(flags >> 8);

    thread = ((tcb_t *)(cap_thread_cap_get_capTCBPtr(cap)));
    if (thread == ksCurThread) {
        ;
        current_syscall_error.type = seL4_IllegalOperation;
        return EXCEPTION_SYSCALL_ERROR;
    }

    setThreadState(ksCurThread, ThreadState_Restart);
    return invokeTCB_WriteRegisters(thread,
                                    flags & (1ul << (WriteRegisters_resume)),
                                    w, transferArch, buffer);
}
# 1096 "/workspace/seL4-c89/preconfigured/src/object/tcb.c"
exception_t decodeTCBConfigure(cap_t cap, word_t length, cte_t *slot, word_t *buffer)
{
    cte_t *bufferSlot, *cRootSlot, *vRootSlot;
    cap_t bufferCap, cRootCap, vRootCap;
    deriveCap_ret_t dc_ret;
    word_t cRootData, vRootData, bufferAddr;





    if (length < 4 || current_extra_caps.excaprefs[0] == ((void *)0)
        || current_extra_caps.excaprefs[1] == ((void *)0)
        || current_extra_caps.excaprefs[2] == ((void *)0)) {
        ;
        current_syscall_error.type = seL4_TruncatedMessage;
        return EXCEPTION_SYSCALL_ERROR;
    }






    cptr_t faultEP = getSyscallArg(0, buffer);
    cRootData = getSyscallArg(1, buffer);
    vRootData = getSyscallArg(2, buffer);
    bufferAddr = getSyscallArg(3, buffer);


    cRootSlot = current_extra_caps.excaprefs[0];
    cRootCap = current_extra_caps.excaprefs[0]->cap;
    vRootSlot = current_extra_caps.excaprefs[1];
    vRootCap = current_extra_caps.excaprefs[1]->cap;
    bufferSlot = current_extra_caps.excaprefs[2];
    bufferCap = current_extra_caps.excaprefs[2]->cap;

    if (bufferAddr == 0) {
        bufferSlot = ((void *)0);
    } else {
        dc_ret = deriveCap(bufferSlot, bufferCap);
        if (dc_ret.status != EXCEPTION_NONE) {
            return dc_ret.status;
        }
        bufferCap = dc_ret.cap;

        exception_t e = checkValidIPCBuffer(bufferAddr, bufferCap);
        if (e != EXCEPTION_NONE) {
            return e;
        }
    }

    if (slotCapLongRunningDelete(
            (((cte_t *)((word_t)(cap_thread_cap_get_capTCBPtr(cap))&~((1ul << (11)) - 1ul)))+(tcbCTable))) ||
        slotCapLongRunningDelete(
            (((cte_t *)((word_t)(cap_thread_cap_get_capTCBPtr(cap))&~((1ul << (11)) - 1ul)))+(tcbVTable)))) {
        ;
        current_syscall_error.type = seL4_IllegalOperation;
        return EXCEPTION_SYSCALL_ERROR;
    }

    if (cRootData != 0) {
        cRootCap = updateCapData(false, cRootData, cRootCap);
    }

    dc_ret = deriveCap(cRootSlot, cRootCap);
    if (dc_ret.status != EXCEPTION_NONE) {
        return dc_ret.status;
    }
    cRootCap = dc_ret.cap;

    if (cap_get_capType(cRootCap) != cap_cnode_cap) {
        ;
        current_syscall_error.type = seL4_IllegalOperation;
        return EXCEPTION_SYSCALL_ERROR;
    }

    if (vRootData != 0) {
        vRootCap = updateCapData(false, vRootData, vRootCap);
    }

    dc_ret = deriveCap(vRootSlot, vRootCap);
    if (dc_ret.status != EXCEPTION_NONE) {
        return dc_ret.status;
    }
    vRootCap = dc_ret.cap;

    if (!isValidVTableRoot(vRootCap)) {
        ;
        current_syscall_error.type = seL4_IllegalOperation;
        return EXCEPTION_SYSCALL_ERROR;
    }

    setThreadState(ksCurThread, ThreadState_Restart);
# 1201 "/workspace/seL4-c89/preconfigured/src/object/tcb.c"
    return invokeTCB_ThreadControl(
               ((tcb_t *)(cap_thread_cap_get_capTCBPtr(cap))), slot,
               faultEP, 0, 0,
               cRootCap, cRootSlot,
               vRootCap, vRootSlot,
               bufferAddr, bufferCap,
               bufferSlot, thread_control_update_space |
               thread_control_update_ipc_buffer);

}

exception_t decodeSetPriority(cap_t cap, word_t length, word_t *buffer)
{
    if (length < 1 || current_extra_caps.excaprefs[0] == ((void *)0)) {
        ;
        current_syscall_error.type = seL4_TruncatedMessage;
        return EXCEPTION_SYSCALL_ERROR;
    }

    prio_t newPrio = getSyscallArg(0, buffer);
    cap_t authCap = current_extra_caps.excaprefs[0]->cap;

    if (cap_get_capType(authCap) != cap_thread_cap) {
        ;
        current_syscall_error.type = seL4_InvalidCapability;
        current_syscall_error.invalidCapNumber = 1;
        return EXCEPTION_SYSCALL_ERROR;
    }

    tcb_t *authTCB = ((tcb_t *)(cap_thread_cap_get_capTCBPtr(authCap)));
    exception_t status = checkPrio(newPrio, authTCB);
    if (status != EXCEPTION_NONE) {
       
                                                                           ;
        return status;
    }

    setThreadState(ksCurThread, ThreadState_Restart);







    return invokeTCB_ThreadControl(
               ((tcb_t *)(cap_thread_cap_get_capTCBPtr(cap))), ((void *)0),
               0, 0, newPrio,
               cap_null_cap_new(), ((void *)0),
               cap_null_cap_new(), ((void *)0),
               0, cap_null_cap_new(),
               ((void *)0), thread_control_update_priority);

}

exception_t decodeSetMCPriority(cap_t cap, word_t length, word_t *buffer)
{
    if (length < 1 || current_extra_caps.excaprefs[0] == ((void *)0)) {
        ;
        current_syscall_error.type = seL4_TruncatedMessage;
        return EXCEPTION_SYSCALL_ERROR;
    }

    prio_t newMcp = getSyscallArg(0, buffer);
    cap_t authCap = current_extra_caps.excaprefs[0]->cap;

    if (cap_get_capType(authCap) != cap_thread_cap) {
        ;
        current_syscall_error.type = seL4_InvalidCapability;
        current_syscall_error.invalidCapNumber = 1;
        return EXCEPTION_SYSCALL_ERROR;
    }

    tcb_t *authTCB = ((tcb_t *)(cap_thread_cap_get_capTCBPtr(authCap)));
    exception_t status = checkPrio(newMcp, authTCB);
    if (status != EXCEPTION_NONE) {
       
                                                                          ;
        return status;
    }

    setThreadState(ksCurThread, ThreadState_Restart);







    return invokeTCB_ThreadControl(
               ((tcb_t *)(cap_thread_cap_get_capTCBPtr(cap))), ((void *)0),
               0, newMcp, 0,
               cap_null_cap_new(), ((void *)0),
               cap_null_cap_new(), ((void *)0),
               0, cap_null_cap_new(),
               ((void *)0), thread_control_update_mcp);

}
# 1335 "/workspace/seL4-c89/preconfigured/src/object/tcb.c"
exception_t decodeSetSchedParams(cap_t cap, word_t length, word_t *buffer)

{
    if (length < 2 || current_extra_caps.excaprefs[0] == ((void *)0)



       ) {
        ;
        current_syscall_error.type = seL4_TruncatedMessage;
        return EXCEPTION_SYSCALL_ERROR;
    }

    prio_t newMcp = getSyscallArg(0, buffer);
    prio_t newPrio = getSyscallArg(1, buffer);
    cap_t authCap = current_extra_caps.excaprefs[0]->cap;






    if (cap_get_capType(authCap) != cap_thread_cap) {
        ;
        current_syscall_error.type = seL4_InvalidCapability;
        current_syscall_error.invalidCapNumber = 1;
        return EXCEPTION_SYSCALL_ERROR;
    }

    tcb_t *authTCB = ((tcb_t *)(cap_thread_cap_get_capTCBPtr(authCap)));
    exception_t status = checkPrio(newMcp, authTCB);
    if (status != EXCEPTION_NONE) {
       
                                                                          ;
        return status;
    }

    status = checkPrio(newPrio, authTCB);
    if (status != EXCEPTION_NONE) {
       
                                                                           ;
        return status;
    }
# 1432 "/workspace/seL4-c89/preconfigured/src/object/tcb.c"
    setThreadState(ksCurThread, ThreadState_Restart);







    return invokeTCB_ThreadControl(
               ((tcb_t *)(cap_thread_cap_get_capTCBPtr(cap))), ((void *)0),
               0, newMcp, newPrio,
               cap_null_cap_new(), ((void *)0),
               cap_null_cap_new(), ((void *)0),
               0, cap_null_cap_new(),
               ((void *)0), thread_control_update_mcp |
               thread_control_update_priority);

}


exception_t decodeSetIPCBuffer(cap_t cap, word_t length, cte_t *slot, word_t *buffer)
{
    cptr_t cptr_bufferPtr;
    cap_t bufferCap;
    cte_t *bufferSlot;

    if (length < 1 || current_extra_caps.excaprefs[0] == ((void *)0)) {
        ;
        current_syscall_error.type = seL4_TruncatedMessage;
        return EXCEPTION_SYSCALL_ERROR;
    }

    cptr_bufferPtr = getSyscallArg(0, buffer);
    bufferSlot = current_extra_caps.excaprefs[0];
    bufferCap = current_extra_caps.excaprefs[0]->cap;

    if (cptr_bufferPtr == 0) {
        bufferSlot = ((void *)0);
    } else {
        exception_t e;
        deriveCap_ret_t dc_ret;

        dc_ret = deriveCap(bufferSlot, bufferCap);
        if (dc_ret.status != EXCEPTION_NONE) {
            return dc_ret.status;
        }
        bufferCap = dc_ret.cap;
        e = checkValidIPCBuffer(cptr_bufferPtr, bufferCap);
        if (e != EXCEPTION_NONE) {
            return e;
        }
    }

    setThreadState(ksCurThread, ThreadState_Restart);
# 1496 "/workspace/seL4-c89/preconfigured/src/object/tcb.c"
    return invokeTCB_ThreadControl(
               ((tcb_t *)(cap_thread_cap_get_capTCBPtr(cap))), slot,
               0, 0, 0,
               cap_null_cap_new(), ((void *)0),
               cap_null_cap_new(), ((void *)0),
               cptr_bufferPtr, bufferCap,
               bufferSlot, thread_control_update_ipc_buffer);


}






exception_t decodeSetSpace(cap_t cap, word_t length, cte_t *slot, word_t *buffer)
{
    word_t cRootData, vRootData;
    cte_t *cRootSlot, *vRootSlot;
    cap_t cRootCap, vRootCap;
    deriveCap_ret_t dc_ret;

    if (length < 3 || current_extra_caps.excaprefs[0] == ((void *)0)
        || current_extra_caps.excaprefs[1] == ((void *)0)



       ) {
        ;
        current_syscall_error.type = seL4_TruncatedMessage;
        return EXCEPTION_SYSCALL_ERROR;
    }
# 1541 "/workspace/seL4-c89/preconfigured/src/object/tcb.c"
    cptr_t faultEP = getSyscallArg(0, buffer);
    cRootData = getSyscallArg(1, buffer);
    vRootData = getSyscallArg(2, buffer);

    cRootSlot = current_extra_caps.excaprefs[0];
    cRootCap = current_extra_caps.excaprefs[0]->cap;
    vRootSlot = current_extra_caps.excaprefs[1];
    vRootCap = current_extra_caps.excaprefs[1]->cap;


    if (slotCapLongRunningDelete(
            (((cte_t *)((word_t)(cap_thread_cap_get_capTCBPtr(cap))&~((1ul << (11)) - 1ul)))+(tcbCTable))) ||
        slotCapLongRunningDelete(
            (((cte_t *)((word_t)(cap_thread_cap_get_capTCBPtr(cap))&~((1ul << (11)) - 1ul)))+(tcbVTable)))) {
        ;
        current_syscall_error.type = seL4_IllegalOperation;
        return EXCEPTION_SYSCALL_ERROR;
    }

    if (cRootData != 0) {
        cRootCap = updateCapData(false, cRootData, cRootCap);
    }

    dc_ret = deriveCap(cRootSlot, cRootCap);
    if (dc_ret.status != EXCEPTION_NONE) {
        return dc_ret.status;
    }
    cRootCap = dc_ret.cap;

    if (cap_get_capType(cRootCap) != cap_cnode_cap) {
        ;
        current_syscall_error.type = seL4_IllegalOperation;
        return EXCEPTION_SYSCALL_ERROR;
    }

    if (vRootData != 0) {
        vRootCap = updateCapData(false, vRootData, vRootCap);
    }

    dc_ret = deriveCap(vRootSlot, vRootCap);
    if (dc_ret.status != EXCEPTION_NONE) {
        return dc_ret.status;
    }
    vRootCap = dc_ret.cap;

    if (!isValidVTableRoot(vRootCap)) {
        ;
        current_syscall_error.type = seL4_IllegalOperation;
        return EXCEPTION_SYSCALL_ERROR;
    }
# 1602 "/workspace/seL4-c89/preconfigured/src/object/tcb.c"
    setThreadState(ksCurThread, ThreadState_Restart);
# 1612 "/workspace/seL4-c89/preconfigured/src/object/tcb.c"
    return invokeTCB_ThreadControl(
               ((tcb_t *)(cap_thread_cap_get_capTCBPtr(cap))), slot,
               faultEP,
               0, 0,
               cRootCap, cRootSlot,
               vRootCap, vRootSlot,
               0, cap_null_cap_new(), ((void *)0), thread_control_update_space);

}

exception_t decodeDomainInvocation(word_t invLabel, word_t length, word_t *buffer)
{
    dom_t domain;
    cap_t tcap;

    if (__builtin_expect(!!(invLabel != DomainSetSet), 0)) {
        current_syscall_error.type = seL4_IllegalOperation;
        return EXCEPTION_SYSCALL_ERROR;
    }

    if (__builtin_expect(!!(length == 0), 0)) {
        ;
        current_syscall_error.type = seL4_TruncatedMessage;
        return EXCEPTION_SYSCALL_ERROR;
    } else {
        domain = getSyscallArg(0, buffer);
        if (domain >= numDomains) {
           
                                         ;
            current_syscall_error.type = seL4_InvalidArgument;
            current_syscall_error.invalidArgumentNumber = 0;
            return EXCEPTION_SYSCALL_ERROR;
        }
    }

    if (__builtin_expect(!!(current_extra_caps.excaprefs[0] == ((void *)0)), 0)) {
        ;
        current_syscall_error.type = seL4_TruncatedMessage;
        return EXCEPTION_SYSCALL_ERROR;
    }

    tcap = current_extra_caps.excaprefs[0]->cap;
    if (__builtin_expect(!!(cap_get_capType(tcap) != cap_thread_cap), 0)) {
        ;
        current_syscall_error.type = seL4_InvalidArgument;
        current_syscall_error.invalidArgumentNumber = 1;
        return EXCEPTION_SYSCALL_ERROR;
    }
    setThreadState(ksCurThread, ThreadState_Restart);
    invokeDomainSetSet(((tcb_t *)(cap_thread_cap_get_capTCBPtr(tcap))), domain);
    return EXCEPTION_NONE;
}

void invokeDomainSetSet(tcb_t *tcb, dom_t domain)
{
    prepareSetDomain(tcb, domain);
    setDomain(tcb, domain);
}

exception_t decodeBindNotification(cap_t cap)
{
    notification_t *ntfnPtr;
    tcb_t *tcb;
    cap_t ntfn_cap;

    if (current_extra_caps.excaprefs[0] == ((void *)0)) {
        ;
        current_syscall_error.type = seL4_TruncatedMessage;
        return EXCEPTION_SYSCALL_ERROR;
    }

    tcb = ((tcb_t *)(cap_thread_cap_get_capTCBPtr(cap)));

    if (tcb->tcbBoundNotification) {
        ;
        current_syscall_error.type = seL4_IllegalOperation;
        return EXCEPTION_SYSCALL_ERROR;
    }

    ntfn_cap = current_extra_caps.excaprefs[0]->cap;

    if (cap_get_capType(ntfn_cap) == cap_notification_cap) {
        ntfnPtr = ((notification_t *)(cap_notification_cap_get_capNtfnPtr(ntfn_cap)));
    } else {
        ;
        current_syscall_error.type = seL4_IllegalOperation;
        return EXCEPTION_SYSCALL_ERROR;
    }

    if (!cap_notification_cap_get_capNtfnCanReceive(ntfn_cap)) {
        ;
        current_syscall_error.type = seL4_IllegalOperation;
        return EXCEPTION_SYSCALL_ERROR;
    }

    if ((tcb_t *)notification_ptr_get_ntfnQueue_head(ntfnPtr)
        || (tcb_t *)notification_ptr_get_ntfnBoundTCB(ntfnPtr)) {
        ;
        current_syscall_error.type = seL4_IllegalOperation;
        return EXCEPTION_SYSCALL_ERROR;
    }


    setThreadState(ksCurThread, ThreadState_Restart);
    return invokeTCB_NotificationControl(tcb, ntfnPtr);
}

exception_t decodeUnbindNotification(cap_t cap)
{
    tcb_t *tcb;

    tcb = ((tcb_t *)(cap_thread_cap_get_capTCBPtr(cap)));

    if (!tcb->tcbBoundNotification) {
        ;
        current_syscall_error.type = seL4_IllegalOperation;
        return EXCEPTION_SYSCALL_ERROR;
    }

    setThreadState(ksCurThread, ThreadState_Restart);
    return invokeTCB_NotificationControl(tcb, ((void *)0));
}



exception_t invokeTCB_Suspend(tcb_t *thread)
{
    suspend(thread);
    return EXCEPTION_NONE;
}

exception_t invokeTCB_Resume(tcb_t *thread)
{
    restart(thread);
    return EXCEPTION_NONE;
}
# 1833 "/workspace/seL4-c89/preconfigured/src/object/tcb.c"
exception_t invokeTCB_ThreadControl(tcb_t *target, cte_t *slot,
                                    cptr_t faultep, prio_t mcp, prio_t priority,
                                    cap_t cRoot_newCap, cte_t *cRoot_srcSlot,
                                    cap_t vRoot_newCap, cte_t *vRoot_srcSlot,
                                    word_t bufferAddr, cap_t bufferCap,
                                    cte_t *bufferSrcSlot,
                                    thread_control_flag_t updateFlags)
{
    exception_t e;
    cap_t tCap = cap_thread_cap_new((word_t)target);

    if (updateFlags & thread_control_update_space) {
        target->tcbFaultHandler = faultep;
    }

    if (updateFlags & thread_control_update_mcp) {
        setMCPriority(target, mcp);
    }

    if (updateFlags & thread_control_update_space) {
        cte_t *rootSlot;

        rootSlot = (((cte_t *)((word_t)(target)&~((1ul << (11)) - 1ul)))+(tcbCTable));
        e = cteDelete(rootSlot, true);
        if (e != EXCEPTION_NONE) {
            return e;
        }
        if (sameObjectAs(cRoot_newCap, cRoot_srcSlot->cap) &&
            sameObjectAs(tCap, slot->cap)) {
            cteInsert(cRoot_newCap, cRoot_srcSlot, rootSlot);
        }
    }

    if (updateFlags & thread_control_update_space) {
        cte_t *rootSlot;

        rootSlot = (((cte_t *)((word_t)(target)&~((1ul << (11)) - 1ul)))+(tcbVTable));
        e = cteDelete(rootSlot, true);
        if (e != EXCEPTION_NONE) {
            return e;
        }
        if (sameObjectAs(vRoot_newCap, vRoot_srcSlot->cap) &&
            sameObjectAs(tCap, slot->cap)) {
            cteInsert(vRoot_newCap, vRoot_srcSlot, rootSlot);
        }
    }

    if (updateFlags & thread_control_update_ipc_buffer) {
        cte_t *bufferSlot;

        bufferSlot = (((cte_t *)((word_t)(target)&~((1ul << (11)) - 1ul)))+(tcbBuffer));
        e = cteDelete(bufferSlot, true);
        if (e != EXCEPTION_NONE) {
            return e;
        }
        target->tcbIPCBuffer = bufferAddr;

        if (bufferSrcSlot && sameObjectAs(bufferCap, bufferSrcSlot->cap) &&
            sameObjectAs(tCap, slot->cap)) {
            cteInsert(bufferCap, bufferSrcSlot, bufferSlot);
        }

        if (target == ksCurThread) {
            rescheduleRequired();
        }
    }

    if (updateFlags & thread_control_update_priority) {
        setPriority(target, priority);
    }

    return EXCEPTION_NONE;
}
# 1943 "/workspace/seL4-c89/preconfigured/src/object/tcb.c"
exception_t invokeTCB_CopyRegisters(tcb_t *dest, tcb_t *tcb_src,
                                    bool_t suspendSource, bool_t resumeTarget,
                                    bool_t transferFrame, bool_t transferInteger,
                                    word_t transferArch)
{
    if (suspendSource) {
        suspend(tcb_src);
    }

    if (resumeTarget) {
        restart(dest);
    }

    if (transferFrame) {
        word_t i;
        word_t v;
        word_t pc;

        for (i = 0; i < n_frameRegisters; i++) {
            v = getRegister(tcb_src, frameRegisters[i]);
            setRegister(dest, frameRegisters[i], v);
        }

        pc = getRestartPC(dest);
        setNextPC(dest, pc);
    }

    if (transferInteger) {
        word_t i;
        word_t v;

        for (i = 0; i < n_gpRegisters; i++) {
            v = getRegister(tcb_src, gpRegisters[i]);
            setRegister(dest, gpRegisters[i], v);
        }
    }

    Arch_postModifyRegisters(dest);

    if (dest == ksCurThread) {


        rescheduleRequired();
    }

    return Arch_performTransfer(transferArch, tcb_src, dest);
}







exception_t invokeTCB_ReadRegisters(tcb_t *tcb_src, bool_t suspendSource,
                                    word_t n, word_t arch, bool_t call)
{
    word_t i, j;
    exception_t e;
    tcb_t *thread;

    thread = ksCurThread;

    if (suspendSource) {
        suspend(tcb_src);
    }

    e = Arch_performTransfer(arch, tcb_src, ksCurThread);
    if (e != EXCEPTION_NONE) {
        return e;
    }

    if (call) {
        word_t *ipcBuffer;

        ipcBuffer = lookupIPCBuffer(true, thread);

        setRegister(thread, badgeRegister, 0);

        for (i = 0; i < n && i < n_frameRegisters && i < n_msgRegisters; i++) {
            setRegister(thread, msgRegisters[i],
                        getRegister(tcb_src, frameRegisters[i]));
        }

        if (ipcBuffer != ((void *)0) && i < n && i < n_frameRegisters) {
            for (; i < n && i < n_frameRegisters; i++) {
                ipcBuffer[i + 1] = getRegister(tcb_src, frameRegisters[i]);
            }
        }

        j = i;

        for (i = 0; i < n_gpRegisters && i + n_frameRegisters < n
             && i + n_frameRegisters < n_msgRegisters; i++) {
            setRegister(thread, msgRegisters[i + n_frameRegisters],
                        getRegister(tcb_src, gpRegisters[i]));
        }

        if (ipcBuffer != ((void *)0) && i < n_gpRegisters
            && i + n_frameRegisters < n) {
            for (; i < n_gpRegisters && i + n_frameRegisters < n; i++) {
                ipcBuffer[i + n_frameRegisters + 1] =
                    getRegister(tcb_src, gpRegisters[i]);
            }
        }

        setRegister(thread, msgInfoRegister, wordFromMessageInfo(
                        seL4_MessageInfo_new(0, 0, 0, i + j)));
    }
    setThreadState(thread, ThreadState_Running);

    return EXCEPTION_NONE;
}

exception_t invokeTCB_WriteRegisters(tcb_t *dest, bool_t resumeTarget,
                                     word_t n, word_t arch, word_t *buffer)
{
    word_t i;
    word_t pc;
    exception_t e;
    bool_t archInfo;

    e = Arch_performTransfer(arch, ksCurThread, dest);
    if (e != EXCEPTION_NONE) {
        return e;
    }

    if (n > n_frameRegisters + n_gpRegisters) {
        n = n_frameRegisters + n_gpRegisters;
    }

    archInfo = Arch_getSanitiseRegisterInfo(dest);

    for (i = 0; i < n_frameRegisters && i < n; i++) {

        setRegister(dest, frameRegisters[i],
                    sanitiseRegister(frameRegisters[i],
                                     getSyscallArg(i + 2, buffer), archInfo));
    }

    for (i = 0; i < n_gpRegisters && i + n_frameRegisters < n; i++) {
        setRegister(dest, gpRegisters[i],
                    sanitiseRegister(gpRegisters[i],
                                     getSyscallArg(i + n_frameRegisters + 2,
                                                   buffer), archInfo));
    }

    pc = getRestartPC(dest);
    setNextPC(dest, pc);

    Arch_postModifyRegisters(dest);

    if (resumeTarget) {
        restart(dest);
    }

    if (dest == ksCurThread) {


        rescheduleRequired();
    }

    return EXCEPTION_NONE;
}

exception_t invokeTCB_NotificationControl(tcb_t *tcb, notification_t *ntfnPtr)
{
    if (ntfnPtr) {
        bindNotification(tcb, ntfnPtr);
    } else {
        unbindNotification(tcb);
    }

    return EXCEPTION_NONE;
}
# 2126 "/workspace/seL4-c89/preconfigured/src/object/tcb.c"
word_t setMRs_syscall_error(tcb_t *thread, word_t *receiveIPCBuffer)
{
    switch (current_syscall_error.type) {
    case seL4_InvalidArgument:
        return setMR(thread, receiveIPCBuffer, 0,
                     current_syscall_error.invalidArgumentNumber);

    case seL4_InvalidCapability:
        return setMR(thread, receiveIPCBuffer, 0,
                     current_syscall_error.invalidCapNumber);

    case seL4_IllegalOperation:
        return 0;

    case seL4_RangeError:
        setMR(thread, receiveIPCBuffer, 0,
              current_syscall_error.rangeErrorMin);
        return setMR(thread, receiveIPCBuffer, 1,
                     current_syscall_error.rangeErrorMax);

    case seL4_AlignmentError:
        return 0;

    case seL4_FailedLookup:
        setMR(thread, receiveIPCBuffer, 0,
              current_syscall_error.failedLookupWasSource ? 1 : 0);
        return setMRs_lookup_failure(thread, receiveIPCBuffer,
                                     current_lookup_fault, 1);

    case seL4_TruncatedMessage:
    case seL4_DeleteFirst:
    case seL4_RevokeFirst:
        return 0;
    case seL4_NotEnoughMemory:
        return setMR(thread, receiveIPCBuffer, 0,
                     current_syscall_error.memoryLeft);
    default:
        halt();
    }
}
# 1 "/workspace/seL4-c89/preconfigured/src/object/untyped.c"
# 21 "/workspace/seL4-c89/preconfigured/src/object/untyped.c"
static word_t alignUp(word_t baseValue, word_t alignment)
{
    return (baseValue + ((1ul << (alignment)) - 1)) & ~((1ul << (alignment)) - 1ul);
}

exception_t decodeUntypedInvocation(word_t invLabel, word_t length, cte_t *slot,
                                    cap_t cap, bool_t call, word_t *buffer)
{
    word_t newType, userObjSize, nodeIndex;
    word_t nodeDepth, nodeOffset, nodeWindow;
    cte_t *rootSlot;
    exception_t status;
    cap_t nodeCap;
    lookupSlot_ret_t lu_ret;
    word_t nodeSize;
    word_t i;
    cte_t *destCNode;
    word_t freeRef, alignedFreeRef, objectSize, untypedFreeBytes;
    word_t freeIndex;
    bool_t deviceMemory;
    bool_t reset;


    if (invLabel != UntypedRetype) {
        ;
        current_syscall_error.type = seL4_IllegalOperation;
        return EXCEPTION_SYSCALL_ERROR;
    }


    if (length < 6 || current_extra_caps.excaprefs[0] == ((void *)0)) {
        ;
        current_syscall_error.type = seL4_TruncatedMessage;
        return EXCEPTION_SYSCALL_ERROR;
    }


    newType = getSyscallArg(0, buffer);
    userObjSize = getSyscallArg(1, buffer);
    nodeIndex = getSyscallArg(2, buffer);
    nodeDepth = getSyscallArg(3, buffer);
    nodeOffset = getSyscallArg(4, buffer);
    nodeWindow = getSyscallArg(5, buffer);
    rootSlot = current_extra_caps.excaprefs[0];


    if (newType >= seL4_ObjectTypeCount) {
        ;
        current_syscall_error.type = seL4_InvalidArgument;
        current_syscall_error.invalidArgumentNumber = 0;
        return EXCEPTION_SYSCALL_ERROR;
    }

    objectSize = getObjectSize(newType, userObjSize);




    if (userObjSize >= (1 << 6) || objectSize > 47) {
        ;
        current_syscall_error.type = seL4_RangeError;
        current_syscall_error.rangeErrorMin = 0;
        current_syscall_error.rangeErrorMax = 47;
        return EXCEPTION_SYSCALL_ERROR;
    }


    if (newType == seL4_CapTableObject && userObjSize == 0) {
        ;
        current_syscall_error.type = seL4_InvalidArgument;
        current_syscall_error.invalidArgumentNumber = 1;
        return EXCEPTION_SYSCALL_ERROR;
    }


    if (newType == seL4_UntypedObject && userObjSize < 4) {
        ;
        current_syscall_error.type = seL4_InvalidArgument;
        current_syscall_error.invalidArgumentNumber = 1;
        return EXCEPTION_SYSCALL_ERROR;
    }
# 113 "/workspace/seL4-c89/preconfigured/src/object/untyped.c"
    if (nodeDepth == 0) {
        nodeCap = rootSlot->cap;
    } else {
        cap_t rootCap = rootSlot->cap;
        lu_ret = lookupTargetSlot(rootCap, nodeIndex, nodeDepth);
        if (lu_ret.status != EXCEPTION_NONE) {
            ;
            return lu_ret.status;
        }
        nodeCap = lu_ret.slot->cap;
    }


    if (cap_get_capType(nodeCap) != cap_cnode_cap) {
        ;
        current_syscall_error.type = seL4_FailedLookup;
        current_syscall_error.failedLookupWasSource = 0;
        current_lookup_fault = lookup_fault_missing_capability_new(nodeDepth);
        return EXCEPTION_SYSCALL_ERROR;
    }


    nodeSize = 1ul << cap_cnode_cap_get_capCNodeRadix(nodeCap);
    if (nodeOffset > nodeSize - 1) {
       
                                  ;
        current_syscall_error.type = seL4_RangeError;
        current_syscall_error.rangeErrorMin = 0;
        current_syscall_error.rangeErrorMax = nodeSize - 1;
        return EXCEPTION_SYSCALL_ERROR;
    }
    if (nodeWindow < 1 || nodeWindow > 256) {
       
                                  ;
        current_syscall_error.type = seL4_RangeError;
        current_syscall_error.rangeErrorMin = 1;
        current_syscall_error.rangeErrorMax = 256;
        return EXCEPTION_SYSCALL_ERROR;
    }
    if (nodeWindow > nodeSize - nodeOffset) {
        ;
        current_syscall_error.type = seL4_RangeError;
        current_syscall_error.rangeErrorMin = 1;
        current_syscall_error.rangeErrorMax = nodeSize - nodeOffset;
        return EXCEPTION_SYSCALL_ERROR;
    }


    destCNode = ((cte_t *)(cap_cnode_cap_get_capCNodePtr(nodeCap)));
    for (i = nodeOffset; i < nodeOffset + nodeWindow; i++) {
        status = ensureEmptySlot(destCNode + i);
        if (status != EXCEPTION_NONE) {
           
                             ;
            return status;
        }
    }
# 182 "/workspace/seL4-c89/preconfigured/src/object/untyped.c"
    status = ensureNoChildren(slot);
    if (status != EXCEPTION_NONE) {
        freeIndex = cap_untyped_cap_get_capFreeIndex(cap);
        reset = false;
    } else {
        freeIndex = 0;
        reset = true;
    }
    freeRef = ((word_t)(((word_t)(cap_untyped_cap_get_capPtr(cap))) + ((freeIndex)<<4)));
# 200 "/workspace/seL4-c89/preconfigured/src/object/untyped.c"
    untypedFreeBytes = (1ul << (cap_untyped_cap_get_capBlockSize(cap))) -
                       ((freeIndex)<<4);

    if ((untypedFreeBytes >> objectSize) < nodeWindow) {
       



                                             ;
        current_syscall_error.type = seL4_NotEnoughMemory;
        current_syscall_error.memoryLeft = untypedFreeBytes;
        return EXCEPTION_SYSCALL_ERROR;
    }

    deviceMemory = cap_untyped_cap_get_capIsDevice(cap);
    if ((deviceMemory && !Arch_isFrameType(newType))
        && newType != seL4_UntypedObject) {
        ;
        current_syscall_error.type = seL4_InvalidArgument;
        current_syscall_error.invalidArgumentNumber = 1;
        return EXCEPTION_SYSCALL_ERROR;
    }



    alignedFreeRef = alignUp(freeRef, objectSize);


    setThreadState(ksCurThread, ThreadState_Restart);
    return invokeUntyped_Retype(slot, reset,
                                (void *)alignedFreeRef, newType, userObjSize,
                                destCNode, nodeOffset, nodeWindow, deviceMemory);
}

static exception_t resetUntypedCap(cte_t *srcSlot)
{
    cap_t prev_cap = srcSlot->cap;
    word_t block_size = cap_untyped_cap_get_capBlockSize(prev_cap);
    void *regionBase = ((word_t *)(cap_untyped_cap_get_capPtr(prev_cap)));
    int chunk = 8;
    word_t offset = ((cap_untyped_cap_get_capFreeIndex(prev_cap))<<4);
    exception_t status;
    bool_t deviceMemory = cap_untyped_cap_get_capIsDevice(prev_cap);

    if (offset == 0) {
        return EXCEPTION_NONE;
    }






    if (deviceMemory || block_size < chunk) {
        if (! deviceMemory) {
            clearMemory(regionBase, block_size);
        }
        srcSlot->cap = cap_untyped_cap_set_capFreeIndex(prev_cap, 0);
    } else {
        for (offset = (((offset - 1) >> (chunk)) << (chunk));
             offset != - (1ul << (chunk)); offset -= (1ul << (chunk))) {
            clearMemory(((void *)(((word_t)(regionBase)) + (offset))), chunk);
            srcSlot->cap = cap_untyped_cap_set_capFreeIndex(prev_cap, ((offset)>>4));
            status = preemptionPoint();
            if (status != EXCEPTION_NONE) {
                return status;
            }
        }
    }
    return EXCEPTION_NONE;
}

exception_t invokeUntyped_Retype(cte_t *srcSlot,
                                 bool_t reset, void *retypeBase,
                                 object_t newType, word_t userSize,
                                 cte_t *destCNode, word_t destOffset, word_t destLength,
                                 bool_t deviceMemory)
{
    word_t freeRef;
    word_t totalObjectSize;
    void *regionBase = ((word_t *)(cap_untyped_cap_get_capPtr(srcSlot->cap)));
    exception_t status;

    if (reset) {
        status = resetUntypedCap(srcSlot);
        if (status != EXCEPTION_NONE) {
            return status;
        }
    }






    totalObjectSize = destLength << getObjectSize(newType, userSize);
    freeRef = (word_t)retypeBase + totalObjectSize;
    srcSlot->cap = cap_untyped_cap_set_capFreeIndex(srcSlot->cap,
                                                    (((word_t)(freeRef) - (word_t)(regionBase))>>4));


    createNewObjects(newType, srcSlot, destCNode, destOffset, destLength,
                     retypeBase, userSize, deviceMemory);

    return EXCEPTION_NONE;
}
# 1 "/workspace/seL4-c89/preconfigured/src/plat/pc99/machine/acpi.c"
# 16 "/workspace/seL4-c89/preconfigured/src/plat/pc99/machine/acpi.c"
enum acpi_type {
    ACPI_RSDP,
    ACPI_RSDT
};


typedef struct acpi_dmar {
    acpi_header_t header;
    uint8_t host_addr_width;
    uint8_t flags;
    uint8_t reserved[10];
} acpi_dmar_t;
typedef int __assert_failed_acpi_dmar_packed[(sizeof(acpi_dmar_t) == sizeof(acpi_header_t) + 12) ? 1 : -1] __attribute__((unused));



typedef struct acpi_dmar_header {
    uint16_t type;
    uint16_t length;
} acpi_dmar_header_t;
typedef int __assert_failed_acpi_dmar_header_packed[(sizeof(acpi_dmar_header_t) == 4) ? 1 : -1] __attribute__((unused));


enum acpi_table_dmar_struct_type {
    DMAR_DRHD = 0,
    DMAR_RMRR = 1,
    DMAR_ATSR = 2,
};


typedef struct acpi_dmar_drhd {
    acpi_dmar_header_t header;
    uint8_t flags;
    uint8_t reserved;
    uint16_t segment;
    uint32_t reg_base[2];
} acpi_dmar_drhd_t;
typedef int __assert_failed_acpi_dmar_drhd_packed[(sizeof(acpi_dmar_drhd_t) == sizeof(acpi_dmar_header_t) + 12) ? 1 : -1] __attribute__((unused));



typedef struct acpi_dmar_devscope {
    uint8_t type;
    uint8_t length;
    uint16_t reserved;
    uint8_t enum_id;
    uint8_t start_bus;
    struct {
        uint8_t dev;
        uint8_t fun;
    } path_0;
} acpi_dmar_devscope_t;
typedef int __assert_failed_acpi_dmar_devscope_packed[(sizeof(acpi_dmar_devscope_t) == 8) ? 1 : -1] __attribute__((unused));


typedef struct acpi_dmar_rmrr {
    acpi_dmar_header_t header;
    uint16_t reserved;
    uint16_t segment;
    uint32_t reg_base[2];
    uint32_t reg_limit[2];
    acpi_dmar_devscope_t devscope_0;
} acpi_dmar_rmrr_t;
typedef int __assert_failed_acpi_dmar_rmrr_packed[(sizeof(acpi_dmar_rmrr_t) == sizeof(acpi_dmar_header_t) + 20 + sizeof(acpi_dmar_devscope_t)) ? 1 : -1] __attribute__((unused));



typedef struct acpi_fadt {
    acpi_header_t header;
    uint8_t reserved[76];
    uint32_t flags;
} acpi_fadt_t;
typedef int __assert_failed_acpi_fadt_packed[(sizeof(acpi_fadt_t) == sizeof(acpi_header_t) + 80) ? 1 : -1] __attribute__((unused));



typedef struct acpi_madt {
    acpi_header_t header;
    uint32_t apic_addr;
    uint32_t flags;
} acpi_madt_t;
typedef int __assert_failed_acpi_madt_packed[(sizeof(acpi_madt_t) == sizeof(acpi_header_t) + 8) ? 1 : -1] __attribute__((unused));


typedef struct acpi_madt_header {
    uint8_t type;
    uint8_t length;
} acpi_madt_header_t;
typedef int __assert_failed_acpi_madt_header_packed[(sizeof(acpi_madt_header_t) == 2) ? 1 : -1] __attribute__((unused));

enum acpi_table_madt_struct_type {
    MADT_APIC = 0,
    MADT_IOAPIC = 1,
    MADT_ISO = 2,
    MADT_x2APIC = 9
};

typedef struct acpi_madt_apic {
    acpi_madt_header_t header;
    uint8_t cpu_id;
    uint8_t apic_id;
    uint32_t flags;
} acpi_madt_apic_t;
typedef int __assert_failed_acpi_madt_apic_packed[(sizeof(acpi_madt_apic_t) == sizeof(acpi_madt_header_t) + 6) ? 1 : -1] __attribute__((unused));


typedef struct acpi_madt_x2apic {
    acpi_madt_header_t header;
    uint16_t reserved;
    uint32_t x2apic_id;
    uint32_t flags;
    uint32_t acpi_processor_uid;
} acpi_madt_x2apic_t;
typedef int __assert_failed_acpi_madt_x2apic_packed[(sizeof(acpi_madt_x2apic_t) == sizeof(acpi_madt_header_t) + 14) ? 1 : -1] __attribute__((unused));


typedef struct acpi_madt_ioapic {
    acpi_madt_header_t header;
    uint8_t ioapic_id;
    uint8_t reserved[1];
    uint32_t ioapic_addr;
    uint32_t gsib;
} acpi_madt_ioapic_t;
typedef int __assert_failed_acpi_madt_ioapic_packed[(sizeof(acpi_madt_ioapic_t) == sizeof(acpi_madt_header_t) + 10) ? 1 : -1] __attribute__((unused));


typedef struct acpi_madt_iso {
    acpi_madt_header_t header;
    uint8_t bus;
    uint8_t source;
    uint32_t gsi;
    uint16_t flags;
} acpi_madt_iso_t;







const char acpi_str_rsd[] = {'R', 'S', 'D', ' ', 'P', 'T', 'R', ' ', 0};
const char acpi_str_fadt[] = {'F', 'A', 'C', 'P', 0};
const char acpi_str_apic[] = {'A', 'P', 'I', 'C', 0};
const char acpi_str_dmar[] = {'D', 'M', 'A', 'R', 0};

__attribute__((__section__(".boot.text"))) static uint8_t acpi_calc_checksum(char *start, uint32_t length)
{
    uint8_t checksum = 0;

    while (length > 0) {
        checksum += *start;
        start++;
        length--;
    }
    return checksum;
}

__attribute__((__section__(".boot.text"))) static acpi_rsdp_t *acpi_get_rsdp(void)
{
    char *addr;

    for (addr = (char *)0x0e0000; addr < (char *)0x100000; addr += 16) {
        if (strncmp(addr, acpi_str_rsd, 8) == 0) {
            if (acpi_calc_checksum(addr, ACPI_V1_SIZE) == 0) {
                return (acpi_rsdp_t *)addr;
            }
        }
    }
    return ((void *)0);
}

__attribute__((__section__(".boot.text"))) static void *acpi_table_init(void *entry, enum acpi_type table_type)
{
    void *acpi_table;
    unsigned int pages_for_table;
    unsigned int pages_for_header = 1;


    unsigned long offset_in_page = (unsigned long)entry & ((1ul << (21)) - 1ul);
    if (((1ul << (21)) - 1ul) - offset_in_page < sizeof(acpi_rsdp_t)) {
        pages_for_header++;
    }


    acpi_table = map_temp_boot_page(entry, pages_for_header);

    switch (table_type) {
    case ACPI_RSDP: {
        acpi_rsdp_t *rsdp_entry = (acpi_rsdp_t *)entry;
        pages_for_table = (rsdp_entry->length + offset_in_page) / ((1ul << (21)) - 1ul) + 1;
        break;
    }
    case ACPI_RSDT: {
        acpi_rsdt_t *rsdt_entry = (acpi_rsdt_t *)entry;
        pages_for_table = (rsdt_entry->header.length + offset_in_page) / ((1ul << (21)) - 1ul) + 1;
        break;
    }
    default:
        ((void)(0));
        ;
        return ((void *)0);
    }


    acpi_table = map_temp_boot_page(entry, pages_for_table);

    return acpi_table;
}

__attribute__((__section__(".boot.text"))) bool_t acpi_init(acpi_rsdp_t *rsdp_data)
{
    acpi_rsdp_t *acpi_rsdp = acpi_get_rsdp();

    if (acpi_rsdp == ((void *)0)) {
        ((void)(0));
        return false;
    }
    ((void)(0));
    acpi_rsdp = acpi_table_init(acpi_rsdp, ACPI_RSDP);
    ((void)(0));


    *rsdp_data = *acpi_rsdp;


    return acpi_validate_rsdp(rsdp_data);
}

__attribute__((__section__(".boot.text"))) bool_t acpi_validate_rsdp(acpi_rsdp_t *acpi_rsdp)
{
    acpi_rsdt_t *acpi_rsdt;
    acpi_rsdt_t *acpi_rsdt_mapped;

    if (acpi_calc_checksum((char *)acpi_rsdp, ACPI_V1_SIZE) != 0) {
        ((void)(0));
        return false;
    }

    if (acpi_rsdp->revision > 0 && acpi_calc_checksum((char *)acpi_rsdp, sizeof(*acpi_rsdp)) != 0) {
        ((void)(0));
        return false;
    }


    acpi_rsdt = (acpi_rsdt_t *)(word_t)acpi_rsdp->rsdt_address;
    ((void)(0));
    acpi_rsdt_mapped = (acpi_rsdt_t *)acpi_table_init(acpi_rsdt, ACPI_RSDT);
    ((void)(0));

    ;
    if (acpi_calc_checksum((char *)acpi_rsdt_mapped, acpi_rsdt_mapped->header.length) != 0) {
        ((void)(0));
        return false;
    }

    return true;
}

__attribute__((__section__(".boot.text"))) uint32_t acpi_madt_scan(
    acpi_rsdp_t *acpi_rsdp,
    cpu_id_t *cpu_list,
    uint32_t *num_ioapic,
    paddr_t *ioapic_paddrs
)
{
    unsigned int entries;
    uint32_t num_cpu;
    uint32_t count;
    acpi_madt_t *acpi_madt;
    acpi_madt_header_t *acpi_madt_header;

    acpi_rsdt_t *acpi_rsdt_mapped;
    acpi_madt_t *acpi_madt_mapped;
    acpi_rsdt_mapped = (acpi_rsdt_t *)acpi_table_init((acpi_rsdt_t *)(word_t)acpi_rsdp->rsdt_address, ACPI_RSDT);

    num_cpu = 0;
    *num_ioapic = 0;

    ;

    entries = (acpi_rsdt_mapped->header.length - sizeof(acpi_header_t)) / sizeof(uint32_t);
    for (count = 0; count < entries; count++) {
        acpi_madt = (acpi_madt_t *)(word_t)acpi_rsdt_mapped->entry[count];
        acpi_madt_mapped = (acpi_madt_t *)acpi_table_init(acpi_madt, ACPI_RSDT);

        if (strncmp(acpi_str_apic, acpi_madt_mapped->header.signature, 4) == 0) {
            ((void)(0));
            ((void)(0));
            ((void)(0));
            ((void)(0));

            acpi_madt_header = (acpi_madt_header_t *)(acpi_madt_mapped + 1);

            while ((char *)acpi_madt_header < (char *)acpi_madt_mapped + acpi_madt_mapped->header.length) {
                switch (acpi_madt_header->type) {







                case MADT_APIC: {

                    uint8_t cpu_id = ((acpi_madt_apic_t *)acpi_madt_header)->apic_id;
                    uint32_t flags = ((acpi_madt_apic_t *)acpi_madt_header)->flags;
                    if (flags == 1) {
                        ((void)(0));
                        if (num_cpu == 1) {
                            ((void)(0));
                        } else {
                            cpu_list[num_cpu] = cpu_id;
                            num_cpu++;
                        }
                    }
                    break;
                }
                case MADT_x2APIC: {
                    uint32_t cpu_id = ((acpi_madt_x2apic_t *)acpi_madt_header)->x2apic_id;
                    uint32_t flags = ((acpi_madt_x2apic_t *)acpi_madt_header)->flags;
                    if (flags == 1) {
                        ((void)(0));
                        if (num_cpu == 1) {
                            ((void)(0));
                        } else {
                            cpu_list[num_cpu] = cpu_id;
                            num_cpu++;
                        }
                    }
                    break;
                }
                case MADT_IOAPIC:
                    ((void)(0))




                     ;
                    if (*num_ioapic == 1) {
                        ((void)(0));
                    } else {
                        ioapic_paddrs[*num_ioapic] = ((acpi_madt_ioapic_t *)acpi_madt_header)->ioapic_addr;
                        (*num_ioapic)++;
                    }
                    break;
                case MADT_ISO:
                    ((void)(0))



                                                                        ;
                    break;
                default:
                    break;
                }
                acpi_madt_header = (acpi_madt_header_t *)((char *)acpi_madt_header + acpi_madt_header->length);
            }
        }
    }

    ((void)(0));

    return num_cpu;
}

__attribute__((__section__(".boot.text"))) bool_t acpi_fadt_scan(
    acpi_rsdp_t *acpi_rsdp
)
{
    unsigned int entries;
    uint32_t count;
    acpi_fadt_t *acpi_fadt;

    acpi_rsdt_t *acpi_rsdt_mapped;
    acpi_fadt_t *acpi_fadt_mapped;
    acpi_rsdt_mapped = (acpi_rsdt_t *)acpi_table_init((acpi_rsdt_t *)(word_t)acpi_rsdp->rsdt_address, ACPI_RSDT);

    ;

    entries = (acpi_rsdt_mapped->header.length - sizeof(acpi_header_t)) / sizeof(uint32_t);
    for (count = 0; count < entries; count++) {
        acpi_fadt = (acpi_fadt_t *)(word_t)acpi_rsdt_mapped->entry[count];
        acpi_fadt_mapped = (acpi_fadt_t *)acpi_table_init(acpi_fadt, ACPI_RSDT);

        if (strncmp(acpi_str_fadt, acpi_fadt_mapped->header.signature, 4) == 0) {
            ((void)(0));
            ((void)(0));
            ((void)(0));

            if (wrap_config_set(0) &&
                acpi_fadt_mapped->flags & (1ul << (19))) {
                ((void)(0));
                return false;
            }
        }
    }

    return true;
}

__attribute__((__section__(".boot.text"))) void acpi_dmar_scan(
    acpi_rsdp_t *acpi_rsdp,
    paddr_t *drhu_list,
    uint32_t *num_drhu,
    uint32_t max_drhu_list_len,
    acpi_rmrr_list_t *rmrr_list
)
{
    word_t i;
    unsigned int entries;
    uint32_t count;
    uint32_t reg_basel, reg_baseh;
    int rmrr_count;
    dev_id_t dev_id;

    acpi_dmar_t *acpi_dmar;
    acpi_dmar_header_t *acpi_dmar_header;
    acpi_dmar_rmrr_t *acpi_dmar_rmrr;
    acpi_dmar_devscope_t *acpi_dmar_devscope;

    acpi_rsdt_t *acpi_rsdt_mapped;
    acpi_dmar_t *acpi_dmar_mapped;

    acpi_rsdt_mapped = (acpi_rsdt_t *)acpi_table_init((acpi_rsdt_t *)(word_t)acpi_rsdp->rsdt_address, ACPI_RSDT);

    *num_drhu = 0;
    rmrr_count = 0;

    ;
    entries = (acpi_rsdt_mapped->header.length - sizeof(acpi_header_t)) / sizeof(uint32_t);
    for (count = 0; count < entries; count++) {
        acpi_dmar = (acpi_dmar_t *)(word_t)acpi_rsdt_mapped->entry[count];
        acpi_dmar_mapped = (acpi_dmar_t *)acpi_table_init(acpi_dmar, ACPI_RSDT);

        if (strncmp(acpi_str_dmar, acpi_dmar_mapped->header.signature, 4) == 0) {
            ((void)(0));
            ((void)(0));
            ((void)(0));
            acpi_dmar_header = (acpi_dmar_header_t *)(acpi_dmar_mapped + 1);

            while ((char *)acpi_dmar_header < (char *)acpi_dmar_mapped + acpi_dmar_mapped->header.length) {
                switch (acpi_dmar_header->type) {

                case DMAR_DRHD:
                    if (*num_drhu == max_drhu_list_len) {
                        ((void)(0));

                        *num_drhu = 0;
                        return;
                    }
                    reg_basel = ((acpi_dmar_drhd_t *)acpi_dmar_header)->reg_base[0];
                    reg_baseh = ((acpi_dmar_drhd_t *)acpi_dmar_header)->reg_base[1];

                    if (reg_baseh != 0) {
                        ((void)(0));

                        *num_drhu = 0;
                        return;
                    }
                    drhu_list[*num_drhu] = (paddr_t)reg_basel;
                    (*num_drhu)++;
                    break;

                case DMAR_RMRR:

                    acpi_dmar_rmrr = (acpi_dmar_rmrr_t *)acpi_dmar_header;
                    if (acpi_dmar_rmrr->reg_base[1] != 0 ||
                        acpi_dmar_rmrr->reg_limit[1] != 0) {
                        ((void)(0));
                        *num_drhu = 0;
                        return ;
                    }

                    for (i = 0; i <= (acpi_dmar_header->length - sizeof(acpi_dmar_rmrr_t)) / sizeof(acpi_dmar_devscope_t); i++) {
                        acpi_dmar_devscope = &acpi_dmar_rmrr->devscope_0 + i;

                        if (acpi_dmar_devscope->type != 1) {

                            ((void)(0));
                            *num_drhu = 0;
                            return;
                        }

                        if (acpi_dmar_devscope->length > sizeof(acpi_dmar_devscope_t)) {

                            ((void)(0));
                            *num_drhu = 0;
                            return;
                        }

                        dev_id =
                            (((acpi_dmar_devscope->start_bus) << 8u) | ((acpi_dmar_devscope->path_0.dev) << 3u) | (acpi_dmar_devscope->path_0.fun))



                             ;

                        if (rmrr_count == 1) {
                            ((void)(0));
                            *num_drhu = 0;
                            return;
                        }
                        ((void)(0))



                               ;

                        rmrr_list->entries[rmrr_count].device = dev_id;
                        rmrr_list->entries[rmrr_count].base = acpi_dmar_rmrr->reg_base[0];
                        rmrr_list->entries[rmrr_count].limit = acpi_dmar_rmrr->reg_limit[0];
                        rmrr_count++;
                    }
                    break;

                case DMAR_ATSR:

                    break;

                default:
                    ((void)(0));
                }
                acpi_dmar_header = (acpi_dmar_header_t *)((char *)acpi_dmar_header + acpi_dmar_header->length);
            }
        }
    }
    rmrr_list->num = rmrr_count;
    ((void)(0));
}
# 1 "/workspace/seL4-c89/preconfigured/src/plat/pc99/machine/hardware.c"
# 18 "/workspace/seL4-c89/preconfigured/src/plat/pc99/machine/hardware.c"
__attribute__((__section__(".boot.text"))) bool_t platAddDevices(void)
{



    if (140737488355328 > 0xFFFFFFF8) {
        if (!reserve_region((p_region_t) {
        (word_t)0xFFFFFFF8, (word_t)0xFFFFFFF8 + 8
        })) {
            return false;
        }
    }
    return true;
}





__attribute__((__section__(".boot.text"))) static inline uint32_t measure_tsc_khz(void)
{
# 50 "/workspace/seL4-c89/preconfigured/src/plat/pc99/machine/hardware.c"
    for (int i = 0; i < 10; i++) {


        uint64_t old_ticks = x86_rdtsc();


        pit_wait_wraparound();

        uint64_t new_ticks = x86_rdtsc();

        uint64_t diff = new_ticks - old_ticks;

        if ((uint32_t)diff == diff && new_ticks > old_ticks) {
            return (uint32_t)diff / 50;
        }

        ((void)(0))
                                        ;
    }

    halt();


    return 0;
}

__attribute__((__section__(".boot.text"))) uint32_t tsc_init(void)
{





    x86_cpu_identity_t *model_info = x86_cpuid_get_model_info();
    uint32_t valid_models[] = {
        0x1E, 0x1A, 0x2E,
        0x2A, 0x2D,
        0x3C, 0x3F, 0x45, 0x46,
        0x9A, 0x3E, 0x3A,

        0x56, 0x4F, 0x47, 0x3D,
        0x4E, 0x5E
    };


    if (model_info->family == (0x06)) {
        for (int i = 0; i < (sizeof(valid_models) / sizeof((valid_models)[0])); i++) {
            if (model_info->model == valid_models[i]) {





                rdmsr_safe_result_t info = x86_rdmsr_safe(0xCE);
                if (info.success) {
                    uint32_t ratio = (((uint32_t) info.value) & 0xFF00) >> 8u;

                    if (ratio != 0) {

                        if (model_info->model == 0x1E ||
                            model_info->model == 0x1A ||
                            model_info->model == 0x2E) {
                            return ratio * 13333u / 100u;
                        } else {
                            return ratio * 100u;
                        }
                    }
                }

                break;
            }
        }
    }


    pit_init();


    pit_wait_wraparound();


    uint32_t tsc_khz = measure_tsc_khz();


    return tsc_khz / 1000u;
}
# 1 "/workspace/seL4-c89/preconfigured/src/plat/pc99/machine/intel-vtd.c"
# 1 "/workspace/seL4-c89/preconfigured/src/plat/pc99/machine/io.c"
# 12 "/workspace/seL4-c89/preconfigured/src/plat/pc99/machine/io.c"
# 1 "/workspace/seL4-c89/preconfigured/include/drivers/uart.h" 1






       
# 13 "/workspace/seL4-c89/preconfigured/src/plat/pc99/machine/io.c" 2
# 1 "/workspace/seL4-c89/preconfigured/src/plat/pc99/machine/ioapic.c"
# 48 "/workspace/seL4-c89/preconfigured/src/plat/pc99/machine/ioapic.c"
static uint32_t ioredtbl_state[240 * (((1)>(1))?(1):(1))];



static uint8_t ioapic_nirqs[(((1)>(1))?(1):(1))];


static uint32_t num_ioapics = 0;

static void ioapic_write(uint32_t ioapic, word_t reg, uint32_t value)
{
    *(volatile uint32_t *)((word_t)((0xffffffffc0000000ul + (1ul << (12))) + ioapic * (1ul << (12))) + reg) = value;
}

static uint32_t ioapic_read(uint32_t ioapic, word_t reg)
{
    return *(volatile uint32_t *)((word_t)((0xffffffffc0000000ul + (1ul << (12))) + ioapic * (1ul << (12))) + reg);
}

static void single_ioapic_init(word_t ioapic, cpu_id_t delivery_cpu)
{
    uint32_t i;
    uint32_t nirqs;

    ioapic_write(ioapic, 0x00, 0x01);
    nirqs = ((ioapic_read(ioapic, 0x10) & 0xff0000) >> 16) + 1;
    ioapic_nirqs[ioapic] = nirqs;





    if (nirqs > 240) {
       

                                                            ;
        halt();
    }





    for (i = 0; i < nirqs; i++) {

        ioapic_write(ioapic, 0x00, ((0x10 + (i) * 2) + 1));
        ioapic_write(ioapic, 0x10, (ioapic_read(ioapic,
                                                         0x10) & ((1ul << (24)) - 1ul)) | (delivery_cpu << 24));

        ioredtbl_state[i] = (1ul << (16));
        ioapic_write(ioapic, 0x00, (0x10 + (i) * 2));

        ioredtbl_state[i] |= ioapic_read(ioapic, 0x10) & ~((1ul << (16)) - 1ul);
        ioapic_write(ioapic, 0x10, ioredtbl_state[i]);
    }
}

static cpu_id_t ioapic_target_cpu = 0;
void ioapic_init(uint32_t num_nodes, cpu_id_t *cpu_list, uint32_t num_ioapic)
{
    uint32_t ioapic;
    num_ioapics = num_ioapic;
    ioapic_target_cpu = cpu_list[0];

    for (ioapic = 0; ioapic < num_ioapic; ioapic++) {

        single_ioapic_init(ioapic, cpu_list[0]);
    }
}

void ioapic_mask(bool_t mask, uint32_t ioapic, uint32_t pin)
{
    int index = ioapic * 240 + pin;
    if (ioapic >= num_ioapics || pin >= ioapic_nirqs[ioapic]) {

        return;
    }
    if (mask) {
        ioredtbl_state[index] |= (1ul << (16));
    } else {
        ioredtbl_state[index] &= ~(1ul << (16));


        ;
    }
    ioapic_write(ioapic, 0x00, (0x10 + (pin) * 2));
    ioapic_write(ioapic, 0x10, ioredtbl_state[index]);
}

exception_t ioapic_decode_map_pin_to_vector(word_t ioapic, word_t pin, word_t level,
                                            word_t polarity, word_t vector)
{
    if (num_ioapics == 0) {
        ;
        current_syscall_error.type = seL4_IllegalOperation;
        return EXCEPTION_SYSCALL_ERROR;
    }
    if (ioapic >= num_ioapics) {
        ;
        current_syscall_error.type = seL4_RangeError;
        current_syscall_error.rangeErrorMin = 0;
        current_syscall_error.rangeErrorMax = num_ioapics - 1;
        return EXCEPTION_SYSCALL_ERROR;
    }
    if (pin >= ioapic_nirqs[ioapic]) {
        ;
        current_syscall_error.type = seL4_RangeError;
        current_syscall_error.rangeErrorMin = 0;
        current_syscall_error.rangeErrorMax = ioapic_nirqs[ioapic] - 1;
        return EXCEPTION_SYSCALL_ERROR;
    }

    if (level != 0 && level != 1) {
        ;
        current_syscall_error.type = seL4_RangeError;
        current_syscall_error.rangeErrorMin = 0;
        current_syscall_error.rangeErrorMax = 1;
        return EXCEPTION_SYSCALL_ERROR;
    }
    if (polarity != 0 && polarity != 1) {
        ;
        current_syscall_error.type = seL4_RangeError;
        current_syscall_error.rangeErrorMin = 0;
        current_syscall_error.rangeErrorMax = 1;
        return EXCEPTION_SYSCALL_ERROR;
    }
    return EXCEPTION_NONE;
}

void ioapic_map_pin_to_vector(word_t ioapic, word_t pin, word_t level,
                              word_t polarity, word_t vector)
{
    uint32_t ioredtbl_high = 0;
    uint32_t index = 0;

    index = ioapic * 240 + pin;
    ioapic_write(ioapic, 0x00, ((0x10 + (pin) * 2) + 1));
    ioredtbl_high = ioapic_read(ioapic, 0x10) & ((1ul << (24)) - 1ul);

    ioredtbl_high |= (ioapic_target_cpu << 24);
    ioapic_write(ioapic, 0x10, ioredtbl_high);

    ioredtbl_state[index] = (1ul << (16)) |
                            (level << 15) |
                            (polarity << 13) |
                            vector;

    ioapic_write(ioapic, 0x00, (0x10 + (pin) * 2));

    ioredtbl_state[index] |= ioapic_read(ioapic, 0x10) & ~((1ul << (16)) - 1ul);
    ioapic_write(ioapic, 0x10, ioredtbl_state[index]);
}
# 1 "/workspace/seL4-c89/preconfigured/src/plat/pc99/machine/pic.c"
# 17 "/workspace/seL4-c89/preconfigured/src/plat/pc99/machine/pic.c"
__attribute__((__section__(".boot.text"))) void pic_remap_irqs(interrupt_t interrupt)
{
    out8(0x20, 0x11);
    out8(0xa0, 0x11);
    out8(0x20 + 1, interrupt);
    out8(0xa0 + 1, interrupt + 8);
    out8(0x20 + 1, 0x04);
    out8(0xa0 + 1, 0x02);
    out8(0x20 + 1, 0x01);
    out8(0xa0 + 1, 0x01);
    out8(0x20 + 1, 0x0);
    out8(0xa0 + 1, 0x0);
}

__attribute__((__section__(".boot.text"))) void pic_disable(void)
{


    out8(0x20 + 1, 0xff);
    out8(0xa0 + 1, 0xff);
}

void pic_mask_irq(bool_t mask, irq_t irq)
{
    uint8_t bit_mask;
    uint16_t pic_port;

    ;
    ;

    if (irq < 8) {
        bit_mask = (1ul << (irq));
        pic_port = 0x20 + 1;
    } else {
        bit_mask = (1ul << (irq - 8));
        pic_port = 0xa0 + 1;
    }

    if (mask) {

        out8(pic_port, (in8(pic_port) | bit_mask));
    } else {

        out8(pic_port, (in8(pic_port) & ~bit_mask));
    }
}

bool_t pic_is_irq_pending(void)
{

    uint8_t irr;


    out8(0x20, 0x0a);


    irr = in8(0x20);




    return irr != 0;
}

static uint16_t pic_get_isr(void)
{
    out8(0x20, 0x0b);
    out8(0xa0, 0x0b);
    return (((uint16_t)in8(0xa0)) << 8) | in8(0x20);
}

void pic_ack_active_irq(void)
{
    irq_t irq = getActiveIRQ();
    if (irq >= irq_isa_min + 8) {




        if (irq != irq_isa_min + 15 || (pic_get_isr() & (1ul << (15)))) {
            out8(0xa0, 0x20);
        }
    }


    if (irq != irq_isa_min + 7 || (pic_get_isr() & (1ul << (7)))) {
        out8(0x20, 0x20);
    }
}
# 1 "/workspace/seL4-c89/preconfigured/src/plat/pc99/machine/pit.c"
# 18 "/workspace/seL4-c89/preconfigured/src/plat/pc99/machine/pit.c"
__attribute__((__section__(".boot.text"))) void pit_init(void)
{
    uint16_t divisor = (1193182 * 50) / 1000;

    out8(0x43, 0x34);
    out8(0x40, divisor & 0xff);
    out8(0x40, divisor >> 8);
}

__attribute__((__section__(".boot.text"))) void pit_wait_wraparound(void)
{
    uint16_t count;
    uint16_t count_old;

    out8(0x43, 0x00);
    count = in8(0x40);
    count |= (in8(0x40) << 8);
    count_old = count;

    while (count <= count_old) {
        count_old = count;
        out8(0x43, 0x00);
        count = in8(0x40);
        count |= (in8(0x40) << 8);
    }
}
# 1 "/workspace/seL4-c89/preconfigured/src/smp/ipi.c"
# 1 "/workspace/seL4-c89/preconfigured/src/smp/lock.c"
# 1 "/workspace/seL4-c89/preconfigured/src/string.c"
# 11 "/workspace/seL4-c89/preconfigured/src/string.c"
word_t strnlen(const char *s, word_t maxlen)
{
    word_t len;
    for (len = 0; len < maxlen && s[len]; len++);
    return len;
}

word_t strlcpy(char *dest, const char *src, word_t size)
{
    word_t len;
    for (len = 0; len + 1 < size && src[len]; len++) {
        dest[len] = src[len];
    }
    dest[len] = '\0';
    return len;
}

word_t strlcat(char *dest, const char *src, word_t size)
{
    word_t len;

    for (len = 0; len < size && dest[len]; len++);


    if (len < size) {
        for (; len + 1 < size && *src; len++, src++) {
            dest[len] = *src;
        }
        dest[len] = '\0';
    }
    return len;
}
# 1 "/workspace/seL4-c89/preconfigured/src/util.c"
# 15 "/workspace/seL4-c89/preconfigured/src/util.c"
typedef unsigned long __attribute__((__may_alias__)) ulong_alias;






void memzero(void *s, unsigned long n)
{
    uint8_t *p = s;


    ;
    ;







    while (n != 0) {
        *(ulong_alias *)p = 0;
        p += sizeof(ulong_alias);
        n -= sizeof(ulong_alias);
    }
}

void *__attribute__((externally_visible)) memset(void *s, unsigned long c, unsigned long n)
{
    uint8_t *p;





    if (__builtin_expect(!!(c == 0 && ((unsigned long)s % sizeof(unsigned long)) == 0 && (n % sizeof(unsigned long)) == 0), 1)) {
        memzero(s, n);
    } else {

        for (p = (uint8_t *)s; n > 0; n--, p++) {
            *p = (uint8_t)c;
        }
    }

    return s;
}

void *__attribute__((externally_visible)) memcpy(void *ptr_dst, const void *ptr_src, unsigned long n)
{
    uint8_t *p;
    const uint8_t *q;

    for (p = (uint8_t *)ptr_dst, q = (const uint8_t *)ptr_src; n; n--, p++, q++) {
        *p = *q;
    }

    return ptr_dst;
}

int __attribute__((__pure__)) strncmp(const char *s1, const char *s2, int n)
{
    word_t i;
    int diff;

    for (i = 0; i < n; i++) {
        diff = ((unsigned char *)s1)[i] - ((unsigned char *)s2)[i];
        if (diff != 0 || s1[i] == '\0') {
            return diff;
        }
    }

    return 0;
}

long __attribute__((__const__)) char_to_long(char c)
{
    if (c >= '0' && c <= '9') {
        return c - '0';
    } else if (c >= 'A' && c <= 'F') {
        return c - 'A' + 10;
    } else if (c >= 'a' && c <= 'f') {
        return c - 'a' + 10;
    }
    return -1;
}

long __attribute__((__pure__)) str_to_long(const char *str)
{
    unsigned int base;
    long res;
    long val = 0;
    char c;


    if (str == ((void *)0) || *str == 0) {
        return -1;
    }


    if (*str == '0' && (*(str + 1) == 'x' || *(str + 1) == 'X')) {
        base = 16;
        str += 2;

        if (*str == 0) {
            return -1;
        }
    } else {
        base = 10;
    }

    c = *str;
    while (c != '\0') {
        res = char_to_long(c);
        if (res == -1 || res >= base) {
            return -1;
        }
        val = val * base + res;
        str++;
        c = *str;
    }

    return val;
}
# 171 "/workspace/seL4-c89/preconfigured/src/util.c"
typedef int __assert_failed_clz_ulong_32_or_64[(sizeof(unsigned long) == 4 || sizeof(unsigned long) == 8) ? 1 : -1] __attribute__((unused));;
typedef int __assert_failed_clz_ullong_64[(sizeof(unsigned long long) == 8) ? 1 : -1] __attribute__((unused));;
typedef int __assert_failed_clz_word_size[(sizeof(unsigned long) * 8 == 64) ? 1 : -1] __attribute__((unused));;
# 186 "/workspace/seL4-c89/preconfigured/src/util.c"
static __attribute__((unused)) __attribute__((__const__)) inline unsigned clz32(uint32_t x)
{


    unsigned count = 32;
    uint32_t mask = (0xFFFFFFFF);
# 209 "/workspace/seL4-c89/preconfigured/src/util.c"
    if (1) {

        mask >>= (1 << 4);
        unsigned bits = ((unsigned)(mask < x)) << 4;
        x >>= bits;
        count -= bits;
    }
    if (1) {

        mask >>= (1 << 3);
        unsigned bits = ((unsigned)(mask < x)) << 3;
        x >>= bits;
        count -= bits;
    }
    if (1) {

        mask >>= (1 << 2);
        unsigned bits = ((unsigned)(mask < x)) << 2;
        x >>= bits;
        count -= bits;
    }
    if (1) {

        mask >>= (1 << 1);
        unsigned bits = ((unsigned)(mask < x)) << 1;
        x >>= bits;
        count -= bits;
    }
    if (1) {

        mask >>= (1 << 0);
        unsigned bits = ((unsigned)(mask < x)) << 0;
        x >>= bits;
        count -= bits;
    }




    return count - x;
}

static __attribute__((unused)) __attribute__((__const__)) inline unsigned clz64(uint64_t x)
{
    unsigned count = 64;
    uint64_t mask = (0xFFFFFFFFFFFFFFFF);





    if (1) {

        mask >>= (1 << 5);
        unsigned bits = ((unsigned)(mask < x)) << 5;
        x >>= bits;
        count -= bits;
    }
    if (1) {

        mask >>= (1 << 4);
        unsigned bits = ((unsigned)(mask < x)) << 4;
        x >>= bits;
        count -= bits;
    }
    if (1) {

        mask >>= (1 << 3);
        unsigned bits = ((unsigned)(mask < x)) << 3;
        x >>= bits;
        count -= bits;
    }
    if (1) {

        mask >>= (1 << 2);
        unsigned bits = ((unsigned)(mask < x)) << 2;
        x >>= bits;
        count -= bits;
    }
    if (1) {

        mask >>= (1 << 1);
        unsigned bits = ((unsigned)(mask < x)) << 1;
        x >>= bits;
        count -= bits;
    }
    if (1) {

        mask >>= (1 << 0);
        unsigned bits = ((unsigned)(mask < x)) << 0;
        x >>= bits;
        count -= bits;
    }

    return count - x;
}



static __attribute__((unused)) __attribute__((__const__)) inline unsigned ctz32(uint32_t x)
{
    unsigned count = (x == 0);
    uint32_t mask = (0xFFFFFFFF);
# 331 "/workspace/seL4-c89/preconfigured/src/util.c"
    if (1) {

        mask >>= (1 << 4);
        unsigned bits = ((unsigned)((x & mask) == 0)) << 4;
        x >>= bits;
        count += bits;
    }
    if (1) {

        mask >>= (1 << 3);
        unsigned bits = ((unsigned)((x & mask) == 0)) << 3;
        x >>= bits;
        count += bits;
    }
    if (1) {

        mask >>= (1 << 2);
        unsigned bits = ((unsigned)((x & mask) == 0)) << 2;
        x >>= bits;
        count += bits;
    }
    if (1) {

        mask >>= (1 << 1);
        unsigned bits = ((unsigned)((x & mask) == 0)) << 1;
        x >>= bits;
        count += bits;
    }
    if (1) {

        mask >>= (1 << 0);
        unsigned bits = ((unsigned)((x & mask) == 0)) << 0;
        x >>= bits;
        count += bits;
    }

    return count;
}

static __attribute__((unused)) __attribute__((__const__)) inline unsigned ctz64(uint64_t x)
{
    unsigned count = (x == 0);
    uint64_t mask = (0xFFFFFFFFFFFFFFFF);

    if (1) {

        mask >>= (1 << 5);
        unsigned bits = ((unsigned)((x & mask) == 0)) << 5;
        x >>= bits;
        count += bits;
    }
    if (1) {

        mask >>= (1 << 4);
        unsigned bits = ((unsigned)((x & mask) == 0)) << 4;
        x >>= bits;
        count += bits;
    }
    if (1) {

        mask >>= (1 << 3);
        unsigned bits = ((unsigned)((x & mask) == 0)) << 3;
        x >>= bits;
        count += bits;
    }
    if (1) {

        mask >>= (1 << 2);
        unsigned bits = ((unsigned)((x & mask) == 0)) << 2;
        x >>= bits;
        count += bits;
    }
    if (1) {

        mask >>= (1 << 1);
        unsigned bits = ((unsigned)((x & mask) == 0)) << 1;
        x >>= bits;
        count += bits;
    }
    if (1) {

        mask >>= (1 << 0);
        unsigned bits = ((unsigned)((x & mask) == 0)) << 0;
        x >>= bits;
        count += bits;
    }

    return count;
}
# 1 "/workspace/seL4-c89/preconfigured/src/config/default_domain.c"
# 12 "/workspace/seL4-c89/preconfigured/src/config/default_domain.c"
const dschedule_t ksDomSchedule[] = {
    { .domain = 0, .length = 1 },
};

const word_t ksDomScheduleLength = (sizeof(ksDomSchedule) / sizeof((ksDomSchedule)[0]));
