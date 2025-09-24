/* generated from /workspace/seL4-c89/preconfigured/include/arch/x86/arch/object/structures.bf */

#pragma once

#include <config.h>
#include <assert.h>
#include <stdint.h>
#include <util.h>
struct apic_base_msr {
    uint32_t words[1];
};
typedef struct apic_base_msr apic_base_msr_t;

static inline uint32_t CONST
apic_base_msr_get_base_addr(apic_base_msr_t apic_base_msr) {
    uint32_t ret;
    ret = (apic_base_msr.words[0] & 0xfffff000u) << 0;
    /* Possibly sign extend */
    if (__builtin_expect(!!(0 && (ret & (1u << (31)))), 0)) {
        ret |= 0x0;
    }
    return ret;
}

static inline uint32_t CONST
apic_base_msr_get_enabled(apic_base_msr_t apic_base_msr) {
    uint32_t ret;
    ret = (apic_base_msr.words[0] & 0x800u) >> 11;
    /* Possibly sign extend */
    if (__builtin_expect(!!(0 && (ret & (1u << (31)))), 0)) {
        ret |= 0x0;
    }
    return ret;
}

static inline uint32_t CONST
apic_base_msr_get_x2apic(apic_base_msr_t apic_base_msr) {
    uint32_t ret;
    ret = (apic_base_msr.words[0] & 0x400u) >> 10;
    /* Possibly sign extend */
    if (__builtin_expect(!!(0 && (ret & (1u << (31)))), 0)) {
        ret |= 0x0;
    }
    return ret;
}

struct apic_icr1 {
    uint32_t words[1];
};
typedef struct apic_icr1 apic_icr1_t;

static inline apic_icr1_t CONST
apic_icr1_new(uint32_t dest_shorthand, uint32_t trigger_mode, uint32_t level, uint32_t delivery_status, uint32_t dest_mode, uint32_t delivery_mode, uint32_t vector) {
    apic_icr1_t apic_icr1;

    /* fail if user has passed bits that we will override */  
    assert((dest_shorthand & ~0x3u) == ((0 && (dest_shorthand & (1u << 31))) ? 0x0 : 0));  
    assert((trigger_mode & ~0x1u) == ((0 && (trigger_mode & (1u << 31))) ? 0x0 : 0));  
    assert((level & ~0x1u) == ((0 && (level & (1u << 31))) ? 0x0 : 0));  
    assert((delivery_status & ~0x1u) == ((0 && (delivery_status & (1u << 31))) ? 0x0 : 0));  
    assert((dest_mode & ~0x1u) == ((0 && (dest_mode & (1u << 31))) ? 0x0 : 0));  
    assert((delivery_mode & ~0x7u) == ((0 && (delivery_mode & (1u << 31))) ? 0x0 : 0));  
    assert((vector & ~0xffu) == ((0 && (vector & (1u << 31))) ? 0x0 : 0));

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

static inline uint32_t CONST
apic_icr1_get_delivery_status(apic_icr1_t apic_icr1) {
    uint32_t ret;
    ret = (apic_icr1.words[0] & 0x1000u) >> 12;
    /* Possibly sign extend */
    if (__builtin_expect(!!(0 && (ret & (1u << (31)))), 0)) {
        ret |= 0x0;
    }
    return ret;
}

struct apic_icr2 {
    uint32_t words[1];
};
typedef struct apic_icr2 apic_icr2_t;

static inline apic_icr2_t CONST
apic_icr2_new(uint32_t dest) {
    apic_icr2_t apic_icr2;

    /* fail if user has passed bits that we will override */  
    assert((dest & ~0xffu) == ((0 && (dest & (1u << 31))) ? 0x0 : 0));

    apic_icr2.words[0] = 0
        | (dest & 0xffu) << 24;

    return apic_icr2;
}

struct apic_lvt {
    uint32_t words[1];
};
typedef struct apic_lvt apic_lvt_t;

static inline apic_lvt_t CONST
apic_lvt_new(uint32_t timer_mode, uint32_t masked, uint32_t trigger_mode, uint32_t remote_irr, uint32_t pin_polarity, uint32_t delivery_status, uint32_t delivery_mode, uint32_t vector) {
    apic_lvt_t apic_lvt;

    /* fail if user has passed bits that we will override */  
    assert((timer_mode & ~0x3u) == ((0 && (timer_mode & (1u << 31))) ? 0x0 : 0));  
    assert((masked & ~0x1u) == ((0 && (masked & (1u << 31))) ? 0x0 : 0));  
    assert((trigger_mode & ~0x1u) == ((0 && (trigger_mode & (1u << 31))) ? 0x0 : 0));  
    assert((remote_irr & ~0x1u) == ((0 && (remote_irr & (1u << 31))) ? 0x0 : 0));  
    assert((pin_polarity & ~0x1u) == ((0 && (pin_polarity & (1u << 31))) ? 0x0 : 0));  
    assert((delivery_status & ~0x1u) == ((0 && (delivery_status & (1u << 31))) ? 0x0 : 0));  
    assert((delivery_mode & ~0x7u) == ((0 && (delivery_mode & (1u << 31))) ? 0x0 : 0));  
    assert((vector & ~0xffu) == ((0 && (vector & (1u << 31))) ? 0x0 : 0));

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

static inline apic_svr_t CONST
apic_svr_new(uint32_t focus_processor_chk, uint32_t enabled, uint32_t spurious_vector) {
    apic_svr_t apic_svr;

    /* fail if user has passed bits that we will override */  
    assert((focus_processor_chk & ~0x1u) == ((0 && (focus_processor_chk & (1u << 31))) ? 0x0 : 0));  
    assert((enabled & ~0x1u) == ((0 && (enabled & (1u << 31))) ? 0x0 : 0));  
    assert((spurious_vector & ~0xffu) == ((0 && (spurious_vector & (1u << 31))) ? 0x0 : 0));

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

static inline uint32_t CONST
apic_version_get_max_lvt_entry(apic_version_t apic_version) {
    uint32_t ret;
    ret = (apic_version.words[0] & 0xff0000u) >> 16;
    /* Possibly sign extend */
    if (__builtin_expect(!!(0 && (ret & (1u << (31)))), 0)) {
        ret |= 0x0;
    }
    return ret;
}

static inline uint32_t CONST
apic_version_get_version(apic_version_t apic_version) {
    uint32_t ret;
    ret = (apic_version.words[0] & 0xffu) >> 0;
    /* Possibly sign extend */
    if (__builtin_expect(!!(0 && (ret & (1u << (31)))), 0)) {
        ret |= 0x0;
    }
    return ret;
}

struct cpuid_001h_eax {
    uint32_t words[1];
};
typedef struct cpuid_001h_eax cpuid_001h_eax_t;

static inline uint32_t CONST
cpuid_001h_eax_get_extended_family(cpuid_001h_eax_t cpuid_001h_eax) {
    uint32_t ret;
    ret = (cpuid_001h_eax.words[0] & 0xff00000u) >> 20;
    /* Possibly sign extend */
    if (__builtin_expect(!!(0 && (ret & (1u << (31)))), 0)) {
        ret |= 0x0;
    }
    return ret;
}

static inline uint32_t CONST
cpuid_001h_eax_get_extended_model(cpuid_001h_eax_t cpuid_001h_eax) {
    uint32_t ret;
    ret = (cpuid_001h_eax.words[0] & 0xf0000u) >> 16;
    /* Possibly sign extend */
    if (__builtin_expect(!!(0 && (ret & (1u << (31)))), 0)) {
        ret |= 0x0;
    }
    return ret;
}

static inline uint32_t CONST
cpuid_001h_eax_get_family(cpuid_001h_eax_t cpuid_001h_eax) {
    uint32_t ret;
    ret = (cpuid_001h_eax.words[0] & 0xf00u) >> 8;
    /* Possibly sign extend */
    if (__builtin_expect(!!(0 && (ret & (1u << (31)))), 0)) {
        ret |= 0x0;
    }
    return ret;
}

static inline uint32_t CONST
cpuid_001h_eax_get_model(cpuid_001h_eax_t cpuid_001h_eax) {
    uint32_t ret;
    ret = (cpuid_001h_eax.words[0] & 0xf0u) >> 4;
    /* Possibly sign extend */
    if (__builtin_expect(!!(0 && (ret & (1u << (31)))), 0)) {
        ret |= 0x0;
    }
    return ret;
}

static inline uint32_t CONST
cpuid_001h_eax_get_stepping(cpuid_001h_eax_t cpuid_001h_eax) {
    uint32_t ret;
    ret = (cpuid_001h_eax.words[0] & 0xfu) >> 0;
    /* Possibly sign extend */
    if (__builtin_expect(!!(0 && (ret & (1u << (31)))), 0)) {
        ret |= 0x0;
    }
    return ret;
}

struct cpuid_001h_ebx {
    uint32_t words[1];
};
typedef struct cpuid_001h_ebx cpuid_001h_ebx_t;

static inline uint32_t CONST
cpuid_001h_ebx_get_brand(cpuid_001h_ebx_t cpuid_001h_ebx) {
    uint32_t ret;
    ret = (cpuid_001h_ebx.words[0] & 0xffu) >> 0;
    /* Possibly sign extend */
    if (__builtin_expect(!!(0 && (ret & (1u << (31)))), 0)) {
        ret |= 0x0;
    }
    return ret;
}

struct cpuid_007h_ebx {
    uint32_t words[1];
};
typedef struct cpuid_007h_ebx cpuid_007h_ebx_t;

static inline uint32_t CONST
cpuid_007h_ebx_get_smap(cpuid_007h_ebx_t cpuid_007h_ebx) {
    uint32_t ret;
    ret = (cpuid_007h_ebx.words[0] & 0x100000u) >> 20;
    /* Possibly sign extend */
    if (__builtin_expect(!!(0 && (ret & (1u << (31)))), 0)) {
        ret |= 0x0;
    }
    return ret;
}

static inline uint32_t CONST
cpuid_007h_ebx_get_smep(cpuid_007h_ebx_t cpuid_007h_ebx) {
    uint32_t ret;
    ret = (cpuid_007h_ebx.words[0] & 0x80u) >> 7;
    /* Possibly sign extend */
    if (__builtin_expect(!!(0 && (ret & (1u << (31)))), 0)) {
        ret |= 0x0;
    }
    return ret;
}

struct cpuid_007h_edx {
    uint32_t words[1];
};
typedef struct cpuid_007h_edx cpuid_007h_edx_t;

static inline uint32_t CONST
cpuid_007h_edx_get_ia32_arch_cap_msr(cpuid_007h_edx_t cpuid_007h_edx) {
    uint32_t ret;
    ret = (cpuid_007h_edx.words[0] & 0x20000000u) >> 29;
    /* Possibly sign extend */
    if (__builtin_expect(!!(0 && (ret & (1u << (31)))), 0)) {
        ret |= 0x0;
    }
    return ret;
}

static inline uint32_t CONST
cpuid_007h_edx_get_ibrs_ibpb(cpuid_007h_edx_t cpuid_007h_edx) {
    uint32_t ret;
    ret = (cpuid_007h_edx.words[0] & 0x4000000u) >> 26;
    /* Possibly sign extend */
    if (__builtin_expect(!!(0 && (ret & (1u << (31)))), 0)) {
        ret |= 0x0;
    }
    return ret;
}

struct cr3 {
    uint64_t words[1];
};
typedef struct cr3 cr3_t;

static inline cr3_t CONST
cr3_new(uint64_t pml4_base_address, uint64_t pcid) {
    cr3_t cr3;

    /* fail if user has passed bits that we will override */  
    assert((pml4_base_address & ~ULL_CONST(0x7fffffffff000)) == ((0 && (pml4_base_address & (ULL_CONST(1) << 50))) ? 0x0 : 0));  
    assert((pcid & ~ULL_CONST(0xfff)) == ((0 && (pcid & (ULL_CONST(1) << 50))) ? 0x0 : 0));

    cr3.words[0] = 0
        | (pml4_base_address & ULL_CONST(0x7fffffffff000)) >> 0
        | (pcid & ULL_CONST(0xfff)) << 0;

    return cr3;
}

static inline uint64_t CONST
cr3_get_pml4_base_address(cr3_t cr3) {
    uint64_t ret;
    ret = (cr3.words[0] & ULL_CONST(0x7fffffffff000)) << 0;
    /* Possibly sign extend */
    if (__builtin_expect(!!(0 && (ret & (ULL_CONST(1) << (50)))), 0)) {
        ret |= 0x0;
    }
    return ret;
}

struct endpoint {
    uint64_t words[2];
};
typedef struct endpoint endpoint_t;

static inline uint64_t PURE
endpoint_ptr_get_epQueue_head(endpoint_t *endpoint_ptr) {
    uint64_t ret;
    ret = (endpoint_ptr->words[1] & ULL_CONST(0xffffffffffffffff)) >> 0;
    /* Possibly sign extend */
    if (__builtin_expect(!!(0 && (ret & (ULL_CONST(1) << (47)))), 0)) {
        ret |= 0x0;
    }
    return ret;
}

static inline void
endpoint_ptr_set_epQueue_head(endpoint_t *endpoint_ptr, uint64_t v64) {
    /* fail if user has passed bits that we will override */
    assert((((~ULL_CONST(0xffffffffffffffff) >> 0) | 0x0) & v64) == ((0 && (v64 & (ULL_CONST(1) << (47)))) ? 0x0 : 0));
    endpoint_ptr->words[1] &= ~ULL_CONST(0xffffffffffffffff);
    endpoint_ptr->words[1] |= (v64 << 0) & 0xffffffffffffffff;
}

static inline uint64_t PURE
endpoint_ptr_get_epQueue_tail(endpoint_t *endpoint_ptr) {
    uint64_t ret;
    ret = (endpoint_ptr->words[0] & ULL_CONST(0xfffffffffffc)) << 0;
    /* Possibly sign extend */
    if (__builtin_expect(!!(1 && (ret & (ULL_CONST(1) << (47)))), 1)) {
        ret |= 0xffff000000000000;
    }
    return ret;
}

static inline void
endpoint_ptr_set_epQueue_tail(endpoint_t *endpoint_ptr, uint64_t v64) {
    /* fail if user has passed bits that we will override */
    assert((((~ULL_CONST(0xfffffffffffc) << 0) | 0xffff000000000000) & v64) == ((1 && (v64 & (ULL_CONST(1) << (47)))) ? 0xffff000000000000 : 0));
    endpoint_ptr->words[0] &= ~ULL_CONST(0xfffffffffffc);
    endpoint_ptr->words[0] |= (v64 >> 0) & 0xfffffffffffc;
}

static inline uint64_t PURE
endpoint_ptr_get_state(endpoint_t *endpoint_ptr) {
    uint64_t ret;
    ret = (endpoint_ptr->words[0] & ULL_CONST(0x3)) >> 0;
    /* Possibly sign extend */
    if (__builtin_expect(!!(0 && (ret & (ULL_CONST(1) << (47)))), 0)) {
        ret |= 0x0;
    }
    return ret;
}

static inline void
endpoint_ptr_set_state(endpoint_t *endpoint_ptr, uint64_t v64) {
    /* fail if user has passed bits that we will override */
    assert((((~ULL_CONST(0x3) >> 0) | 0x0) & v64) == ((0 && (v64 & (ULL_CONST(1) << (47)))) ? 0x0 : 0));
    endpoint_ptr->words[0] &= ~ULL_CONST(0x3);
    endpoint_ptr->words[0] |= (v64 << 0) & 0x3;
}

struct gdt_tss {
    uint64_t words[2];
};
typedef struct gdt_tss gdt_tss_t;

static inline gdt_tss_t CONST
gdt_tss_new(uint64_t base_63_32, uint64_t base_31_24, uint64_t granularity, uint64_t avl, uint64_t limit_high, uint64_t present, uint64_t dpl, uint64_t desc_type, uint64_t base_23_16, uint64_t base_15_0, uint64_t limit_low) {
    gdt_tss_t gdt_tss;

    /* fail if user has passed bits that we will override */  
    assert((base_63_32 & ~ULL_CONST(0xffffffff)) == ((1 && (base_63_32 & (ULL_CONST(1) << 47))) ? 0x0 : 0));  
    assert((base_31_24 & ~ULL_CONST(0xff)) == ((1 && (base_31_24 & (ULL_CONST(1) << 47))) ? 0x0 : 0));  
    assert((granularity & ~ULL_CONST(0x1)) == ((1 && (granularity & (ULL_CONST(1) << 47))) ? 0x0 : 0));  
    assert((avl & ~ULL_CONST(0x1)) == ((1 && (avl & (ULL_CONST(1) << 47))) ? 0x0 : 0));  
    assert((limit_high & ~ULL_CONST(0xf)) == ((1 && (limit_high & (ULL_CONST(1) << 47))) ? 0x0 : 0));  
    assert((present & ~ULL_CONST(0x1)) == ((1 && (present & (ULL_CONST(1) << 47))) ? 0x0 : 0));  
    assert((dpl & ~ULL_CONST(0x3)) == ((1 && (dpl & (ULL_CONST(1) << 47))) ? 0x0 : 0));  
    assert((desc_type & ~ULL_CONST(0xf)) == ((1 && (desc_type & (ULL_CONST(1) << 47))) ? 0x0 : 0));  
    assert((base_23_16 & ~ULL_CONST(0xff)) == ((1 && (base_23_16 & (ULL_CONST(1) << 47))) ? 0x0 : 0));  
    assert((base_15_0 & ~ULL_CONST(0xffff)) == ((1 && (base_15_0 & (ULL_CONST(1) << 47))) ? 0x0 : 0));  
    assert((limit_low & ~ULL_CONST(0xffff)) == ((1 && (limit_low & (ULL_CONST(1) << 47))) ? 0x0 : 0));

    gdt_tss.words[0] = 0
        | (base_31_24 & ULL_CONST(0xff)) << 56
        | (granularity & ULL_CONST(0x1)) << 55
        | (avl & ULL_CONST(0x1)) << 52
        | (limit_high & ULL_CONST(0xf)) << 48
        | (present & ULL_CONST(0x1)) << 47
        | (dpl & ULL_CONST(0x3)) << 45
        | (desc_type & ULL_CONST(0xf)) << 40
        | (base_23_16 & ULL_CONST(0xff)) << 32
        | (base_15_0 & ULL_CONST(0xffff)) << 16
        | (limit_low & ULL_CONST(0xffff)) << 0;
    gdt_tss.words[1] = 0
        | (base_63_32 & ULL_CONST(0xffffffff)) << 0;

    return gdt_tss;
}

struct ia32_arch_capabilities_msr {
    uint32_t words[1];
};
typedef struct ia32_arch_capabilities_msr ia32_arch_capabilities_msr_t;

static inline uint32_t CONST
ia32_arch_capabilities_msr_get_ibrs_all(ia32_arch_capabilities_msr_t ia32_arch_capabilities_msr) {
    uint32_t ret;
    ret = (ia32_arch_capabilities_msr.words[0] & 0x2u) >> 1;
    /* Possibly sign extend */
    if (__builtin_expect(!!(0 && (ret & (1u << (31)))), 0)) {
        ret |= 0x0;
    }
    return ret;
}

static inline uint32_t CONST
ia32_arch_capabilities_msr_get_rdcl_no(ia32_arch_capabilities_msr_t ia32_arch_capabilities_msr) {
    uint32_t ret;
    ret = (ia32_arch_capabilities_msr.words[0] & 0x1u) >> 0;
    /* Possibly sign extend */
    if (__builtin_expect(!!(0 && (ret & (1u << (31)))), 0)) {
        ret |= 0x0;
    }
    return ret;
}

struct mdb_node {
    uint64_t words[2];
};
typedef struct mdb_node mdb_node_t;

static inline mdb_node_t CONST
mdb_node_new(uint64_t mdbNext, uint64_t mdbRevocable, uint64_t mdbFirstBadged, uint64_t mdbPrev) {
    mdb_node_t mdb_node;

    /* fail if user has passed bits that we will override */  
    assert((mdbNext & ~ULL_CONST(0xfffffffffffc)) == ((1 && (mdbNext & (ULL_CONST(1) << 47))) ? 0xffff000000000000 : 0));  
    assert((mdbRevocable & ~ULL_CONST(0x1)) == ((1 && (mdbRevocable & (ULL_CONST(1) << 47))) ? 0x0 : 0));  
    assert((mdbFirstBadged & ~ULL_CONST(0x1)) == ((1 && (mdbFirstBadged & (ULL_CONST(1) << 47))) ? 0x0 : 0));

    mdb_node.words[0] = 0
        | mdbPrev << 0;;
    mdb_node.words[1] = 0
        | (mdbNext & ULL_CONST(0xfffffffffffc)) >> 0
        | (mdbRevocable & ULL_CONST(0x1)) << 1
        | (mdbFirstBadged & ULL_CONST(0x1)) << 0;

    return mdb_node;
}

static inline uint64_t CONST
mdb_node_get_mdbNext(mdb_node_t mdb_node) {
    uint64_t ret;
    ret = (mdb_node.words[1] & ULL_CONST(0xfffffffffffc)) << 0;
    /* Possibly sign extend */
    if (__builtin_expect(!!(1 && (ret & (ULL_CONST(1) << (47)))), 1)) {
        ret |= 0xffff000000000000;
    }
    return ret;
}

static inline void
mdb_node_ptr_set_mdbNext(mdb_node_t *mdb_node_ptr, uint64_t v64) {
    /* fail if user has passed bits that we will override */
    assert((((~ULL_CONST(0xfffffffffffc) << 0) | 0xffff000000000000) & v64) == ((1 && (v64 & (ULL_CONST(1) << (47)))) ? 0xffff000000000000 : 0));
    mdb_node_ptr->words[1] &= ~ULL_CONST(0xfffffffffffc);
    mdb_node_ptr->words[1] |= (v64 >> 0) & 0xfffffffffffc;
}

static inline uint64_t CONST
mdb_node_get_mdbRevocable(mdb_node_t mdb_node) {
    uint64_t ret;
    ret = (mdb_node.words[1] & ULL_CONST(0x2)) >> 1;
    /* Possibly sign extend */
    if (__builtin_expect(!!(0 && (ret & (ULL_CONST(1) << (47)))), 0)) {
        ret |= 0x0;
    }
    return ret;
}

static inline mdb_node_t CONST
mdb_node_set_mdbRevocable(mdb_node_t mdb_node, uint64_t v64) {
    /* fail if user has passed bits that we will override */
    assert((((~ULL_CONST(0x2) >> 1 ) | 0x0) & v64) == ((0 && (v64 & (ULL_CONST(1) << (47)))) ? 0x0 : 0));
    mdb_node.words[1] &= ~ULL_CONST(0x2);
    mdb_node.words[1] |= (v64 << 1) & ULL_CONST(0x2);
    return mdb_node;
}

static inline void
mdb_node_ptr_set_mdbRevocable(mdb_node_t *mdb_node_ptr, uint64_t v64) {
    /* fail if user has passed bits that we will override */
    assert((((~ULL_CONST(0x2) >> 1) | 0x0) & v64) == ((0 && (v64 & (ULL_CONST(1) << (47)))) ? 0x0 : 0));
    mdb_node_ptr->words[1] &= ~ULL_CONST(0x2);
    mdb_node_ptr->words[1] |= (v64 << 1) & 0x2;
}

static inline uint64_t CONST
mdb_node_get_mdbFirstBadged(mdb_node_t mdb_node) {
    uint64_t ret;
    ret = (mdb_node.words[1] & ULL_CONST(0x1)) >> 0;
    /* Possibly sign extend */
    if (__builtin_expect(!!(0 && (ret & (ULL_CONST(1) << (47)))), 0)) {
        ret |= 0x0;
    }
    return ret;
}

static inline mdb_node_t CONST
mdb_node_set_mdbFirstBadged(mdb_node_t mdb_node, uint64_t v64) {
    /* fail if user has passed bits that we will override */
    assert((((~ULL_CONST(0x1) >> 0 ) | 0x0) & v64) == ((0 && (v64 & (ULL_CONST(1) << (47)))) ? 0x0 : 0));
    mdb_node.words[1] &= ~ULL_CONST(0x1);
    mdb_node.words[1] |= (v64 << 0) & ULL_CONST(0x1);
    return mdb_node;
}

static inline void
mdb_node_ptr_set_mdbFirstBadged(mdb_node_t *mdb_node_ptr, uint64_t v64) {
    /* fail if user has passed bits that we will override */
    assert((((~ULL_CONST(0x1) >> 0) | 0x0) & v64) == ((0 && (v64 & (ULL_CONST(1) << (47)))) ? 0x0 : 0));
    mdb_node_ptr->words[1] &= ~ULL_CONST(0x1);
    mdb_node_ptr->words[1] |= (v64 << 0) & 0x1;
}

static inline uint64_t CONST
mdb_node_get_mdbPrev(mdb_node_t mdb_node) {
    uint64_t ret;
    ret = (mdb_node.words[0] & ULL_CONST(0xffffffffffffffff)) >> 0;
    /* Possibly sign extend */
    if (__builtin_expect(!!(0 && (ret & (ULL_CONST(1) << (47)))), 0)) {
        ret |= 0x0;
    }
    return ret;
}

static inline mdb_node_t CONST
mdb_node_set_mdbPrev(mdb_node_t mdb_node, uint64_t v64) {
    /* fail if user has passed bits that we will override */
    assert((((~ULL_CONST(0xffffffffffffffff) >> 0 ) | 0x0) & v64) == ((0 && (v64 & (ULL_CONST(1) << (47)))) ? 0x0 : 0));
    mdb_node.words[0] &= ~ULL_CONST(0xffffffffffffffff);
    mdb_node.words[0] |= (v64 << 0) & ULL_CONST(0xffffffffffffffff);
    return mdb_node;
}

static inline void
mdb_node_ptr_set_mdbPrev(mdb_node_t *mdb_node_ptr, uint64_t v64) {
    /* fail if user has passed bits that we will override */
    assert((((~ULL_CONST(0xffffffffffffffff) >> 0) | 0x0) & v64) == ((0 && (v64 & (ULL_CONST(1) << (47)))) ? 0x0 : 0));
    mdb_node_ptr->words[0] &= ~ULL_CONST(0xffffffffffffffff);
    mdb_node_ptr->words[0] |= (v64 << 0) & 0xffffffffffffffff;
}

struct notification {
    uint64_t words[4];
};
typedef struct notification notification_t;

static inline uint64_t PURE
notification_ptr_get_ntfnBoundTCB(notification_t *notification_ptr) {
    uint64_t ret;
    ret = (notification_ptr->words[3] & ULL_CONST(0xffffffffffff)) << 0;
    /* Possibly sign extend */
    if (__builtin_expect(!!(1 && (ret & (ULL_CONST(1) << (47)))), 1)) {
        ret |= 0xffff000000000000;
    }
    return ret;
}

static inline void
notification_ptr_set_ntfnBoundTCB(notification_t *notification_ptr, uint64_t v64) {
    /* fail if user has passed bits that we will override */
    assert((((~ULL_CONST(0xffffffffffff) << 0) | 0xffff000000000000) & v64) == ((1 && (v64 & (ULL_CONST(1) << (47)))) ? 0xffff000000000000 : 0));
    notification_ptr->words[3] &= ~ULL_CONST(0xffffffffffff);
    notification_ptr->words[3] |= (v64 >> 0) & 0xffffffffffff;
}

static inline uint64_t PURE
notification_ptr_get_ntfnMsgIdentifier(notification_t *notification_ptr) {
    uint64_t ret;
    ret = (notification_ptr->words[2] & ULL_CONST(0xffffffffffffffff)) >> 0;
    /* Possibly sign extend */
    if (__builtin_expect(!!(0 && (ret & (ULL_CONST(1) << (47)))), 0)) {
        ret |= 0x0;
    }
    return ret;
}

static inline void
notification_ptr_set_ntfnMsgIdentifier(notification_t *notification_ptr, uint64_t v64) {
    /* fail if user has passed bits that we will override */
    assert((((~ULL_CONST(0xffffffffffffffff) >> 0) | 0x0) & v64) == ((0 && (v64 & (ULL_CONST(1) << (47)))) ? 0x0 : 0));
    notification_ptr->words[2] &= ~ULL_CONST(0xffffffffffffffff);
    notification_ptr->words[2] |= (v64 << 0) & 0xffffffffffffffff;
}

static inline uint64_t PURE
notification_ptr_get_ntfnQueue_head(notification_t *notification_ptr) {
    uint64_t ret;
    ret = (notification_ptr->words[1] & ULL_CONST(0xffffffffffff)) << 0;
    /* Possibly sign extend */
    if (__builtin_expect(!!(1 && (ret & (ULL_CONST(1) << (47)))), 1)) {
        ret |= 0xffff000000000000;
    }
    return ret;
}

static inline void
notification_ptr_set_ntfnQueue_head(notification_t *notification_ptr, uint64_t v64) {
    /* fail if user has passed bits that we will override */
    assert((((~ULL_CONST(0xffffffffffff) << 0) | 0xffff000000000000) & v64) == ((1 && (v64 & (ULL_CONST(1) << (47)))) ? 0xffff000000000000 : 0));
    notification_ptr->words[1] &= ~ULL_CONST(0xffffffffffff);
    notification_ptr->words[1] |= (v64 >> 0) & 0xffffffffffff;
}

static inline uint64_t PURE
notification_ptr_get_ntfnQueue_tail(notification_t *notification_ptr) {
    uint64_t ret;
    ret = (notification_ptr->words[0] & ULL_CONST(0xffffffffffff0000)) >> 16;
    /* Possibly sign extend */
    if (__builtin_expect(!!(1 && (ret & (ULL_CONST(1) << (47)))), 1)) {
        ret |= 0xffff000000000000;
    }
    return ret;
}

static inline void
notification_ptr_set_ntfnQueue_tail(notification_t *notification_ptr, uint64_t v64) {
    /* fail if user has passed bits that we will override */
    assert((((~ULL_CONST(0xffffffffffff0000) >> 16) | 0xffff000000000000) & v64) == ((1 && (v64 & (ULL_CONST(1) << (47)))) ? 0xffff000000000000 : 0));
    notification_ptr->words[0] &= ~ULL_CONST(0xffffffffffff0000);
    notification_ptr->words[0] |= (v64 << 16) & 0xffffffffffff0000;
}

static inline uint64_t PURE
notification_ptr_get_state(notification_t *notification_ptr) {
    uint64_t ret;
    ret = (notification_ptr->words[0] & ULL_CONST(0x3)) >> 0;
    /* Possibly sign extend */
    if (__builtin_expect(!!(0 && (ret & (ULL_CONST(1) << (47)))), 0)) {
        ret |= 0x0;
    }
    return ret;
}

static inline void
notification_ptr_set_state(notification_t *notification_ptr, uint64_t v64) {
    /* fail if user has passed bits that we will override */
    assert((((~ULL_CONST(0x3) >> 0) | 0x0) & v64) == ((0 && (v64 & (ULL_CONST(1) << (47)))) ? 0x0 : 0));
    notification_ptr->words[0] &= ~ULL_CONST(0x3);
    notification_ptr->words[0] |= (v64 << 0) & 0x3;
}

struct pml4e {
    uint64_t words[1];
};
typedef struct pml4e pml4e_t;

static inline pml4e_t CONST
pml4e_new(uint64_t xd, uint64_t pdpt_base_address, uint64_t accessed, uint64_t cache_disabled, uint64_t write_through, uint64_t super_user, uint64_t read_write, uint64_t present) {
    pml4e_t pml4e;

    /* fail if user has passed bits that we will override */  
    assert((xd & ~ULL_CONST(0x1)) == ((0 && (xd & (ULL_CONST(1) << 50))) ? 0x0 : 0));  
    assert((pdpt_base_address & ~ULL_CONST(0x7fffffffff000)) == ((0 && (pdpt_base_address & (ULL_CONST(1) << 50))) ? 0x0 : 0));  
    assert((accessed & ~ULL_CONST(0x1)) == ((0 && (accessed & (ULL_CONST(1) << 50))) ? 0x0 : 0));  
    assert((cache_disabled & ~ULL_CONST(0x1)) == ((0 && (cache_disabled & (ULL_CONST(1) << 50))) ? 0x0 : 0));  
    assert((write_through & ~ULL_CONST(0x1)) == ((0 && (write_through & (ULL_CONST(1) << 50))) ? 0x0 : 0));  
    assert((super_user & ~ULL_CONST(0x1)) == ((0 && (super_user & (ULL_CONST(1) << 50))) ? 0x0 : 0));  
    assert((read_write & ~ULL_CONST(0x1)) == ((0 && (read_write & (ULL_CONST(1) << 50))) ? 0x0 : 0));  
    assert((present & ~ULL_CONST(0x1)) == ((0 && (present & (ULL_CONST(1) << 50))) ? 0x0 : 0));

    pml4e.words[0] = 0
        | (xd & ULL_CONST(0x1)) << 63
        | (pdpt_base_address & ULL_CONST(0x7fffffffff000)) >> 0
        | (accessed & ULL_CONST(0x1)) << 5
        | (cache_disabled & ULL_CONST(0x1)) << 4
        | (write_through & ULL_CONST(0x1)) << 3
        | (super_user & ULL_CONST(0x1)) << 2
        | (read_write & ULL_CONST(0x1)) << 1
        | (present & ULL_CONST(0x1)) << 0;

    return pml4e;
}

static inline uint64_t PURE
pml4e_ptr_get_pdpt_base_address(pml4e_t *pml4e_ptr) {
    uint64_t ret;
    ret = (pml4e_ptr->words[0] & ULL_CONST(0x7fffffffff000)) << 0;
    /* Possibly sign extend */
    if (__builtin_expect(!!(0 && (ret & (ULL_CONST(1) << (50)))), 0)) {
        ret |= 0x0;
    }
    return ret;
}

static inline uint64_t PURE
pml4e_ptr_get_present(pml4e_t *pml4e_ptr) {
    uint64_t ret;
    ret = (pml4e_ptr->words[0] & ULL_CONST(0x1)) >> 0;
    /* Possibly sign extend */
    if (__builtin_expect(!!(0 && (ret & (ULL_CONST(1) << (50)))), 0)) {
        ret |= 0x0;
    }
    return ret;
}

struct pte {
    uint64_t words[1];
};
typedef struct pte pte_t;

static inline pte_t CONST
pte_new(uint64_t xd, uint64_t page_base_address, uint64_t global, uint64_t pat, uint64_t dirty, uint64_t accessed, uint64_t cache_disabled, uint64_t write_through, uint64_t super_user, uint64_t read_write, uint64_t present) {
    pte_t pte;

    /* fail if user has passed bits that we will override */  
    assert((xd & ~ULL_CONST(0x1)) == ((0 && (xd & (ULL_CONST(1) << 50))) ? 0x0 : 0));  
    assert((page_base_address & ~ULL_CONST(0x7fffffffff000)) == ((0 && (page_base_address & (ULL_CONST(1) << 50))) ? 0x0 : 0));  
    assert((global & ~ULL_CONST(0x1)) == ((0 && (global & (ULL_CONST(1) << 50))) ? 0x0 : 0));  
    assert((pat & ~ULL_CONST(0x1)) == ((0 && (pat & (ULL_CONST(1) << 50))) ? 0x0 : 0));  
    assert((dirty & ~ULL_CONST(0x1)) == ((0 && (dirty & (ULL_CONST(1) << 50))) ? 0x0 : 0));  
    assert((accessed & ~ULL_CONST(0x1)) == ((0 && (accessed & (ULL_CONST(1) << 50))) ? 0x0 : 0));  
    assert((cache_disabled & ~ULL_CONST(0x1)) == ((0 && (cache_disabled & (ULL_CONST(1) << 50))) ? 0x0 : 0));  
    assert((write_through & ~ULL_CONST(0x1)) == ((0 && (write_through & (ULL_CONST(1) << 50))) ? 0x0 : 0));  
    assert((super_user & ~ULL_CONST(0x1)) == ((0 && (super_user & (ULL_CONST(1) << 50))) ? 0x0 : 0));  
    assert((read_write & ~ULL_CONST(0x1)) == ((0 && (read_write & (ULL_CONST(1) << 50))) ? 0x0 : 0));  
    assert((present & ~ULL_CONST(0x1)) == ((0 && (present & (ULL_CONST(1) << 50))) ? 0x0 : 0));

    pte.words[0] = 0
        | (xd & ULL_CONST(0x1)) << 63
        | (page_base_address & ULL_CONST(0x7fffffffff000)) >> 0
        | (global & ULL_CONST(0x1)) << 8
        | (pat & ULL_CONST(0x1)) << 7
        | (dirty & ULL_CONST(0x1)) << 6
        | (accessed & ULL_CONST(0x1)) << 5
        | (cache_disabled & ULL_CONST(0x1)) << 4
        | (write_through & ULL_CONST(0x1)) << 3
        | (super_user & ULL_CONST(0x1)) << 2
        | (read_write & ULL_CONST(0x1)) << 1
        | (present & ULL_CONST(0x1)) << 0;

    return pte;
}

static inline uint64_t PURE
pte_ptr_get_page_base_address(pte_t *pte_ptr) {
    uint64_t ret;
    ret = (pte_ptr->words[0] & ULL_CONST(0x7fffffffff000)) << 0;
    /* Possibly sign extend */
    if (__builtin_expect(!!(0 && (ret & (ULL_CONST(1) << (50)))), 0)) {
        ret |= 0x0;
    }
    return ret;
}

static inline uint64_t CONST
pte_get_present(pte_t pte) {
    uint64_t ret;
    ret = (pte.words[0] & ULL_CONST(0x1)) >> 0;
    /* Possibly sign extend */
    if (__builtin_expect(!!(0 && (ret & (ULL_CONST(1) << (50)))), 0)) {
        ret |= 0x0;
    }
    return ret;
}

static inline uint64_t PURE
pte_ptr_get_present(pte_t *pte_ptr) {
    uint64_t ret;
    ret = (pte_ptr->words[0] & ULL_CONST(0x1)) >> 0;
    /* Possibly sign extend */
    if (__builtin_expect(!!(0 && (ret & (ULL_CONST(1) << (50)))), 0)) {
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

static inline uint64_t PURE
thread_state_ptr_get_blockingIPCBadge(thread_state_t *thread_state_ptr) {
    uint64_t ret;
    ret = (thread_state_ptr->words[2] & ULL_CONST(0xffffffffffffffff)) >> 0;
    /* Possibly sign extend */
    if (__builtin_expect(!!(0 && (ret & (ULL_CONST(1) << (47)))), 0)) {
        ret |= 0x0;
    }
    return ret;
}

static inline void
thread_state_ptr_set_blockingIPCBadge(thread_state_t *thread_state_ptr, uint64_t v64) {
    /* fail if user has passed bits that we will override */
    assert((((~ULL_CONST(0xffffffffffffffff) >> 0) | 0x0) & v64) == ((0 && (v64 & (ULL_CONST(1) << (47)))) ? 0x0 : 0));
    thread_state_ptr->words[2] &= ~ULL_CONST(0xffffffffffffffff);
    thread_state_ptr->words[2] |= (v64 << 0) & 0xffffffffffffffff;
}

static inline uint64_t PURE
thread_state_ptr_get_blockingIPCCanGrant(thread_state_t *thread_state_ptr) {
    uint64_t ret;
    ret = (thread_state_ptr->words[1] & ULL_CONST(0x8)) >> 3;
    /* Possibly sign extend */
    if (__builtin_expect(!!(0 && (ret & (ULL_CONST(1) << (47)))), 0)) {
        ret |= 0x0;
    }
    return ret;
}

static inline void
thread_state_ptr_set_blockingIPCCanGrant(thread_state_t *thread_state_ptr, uint64_t v64) {
    /* fail if user has passed bits that we will override */
    assert((((~ULL_CONST(0x8) >> 3) | 0x0) & v64) == ((0 && (v64 & (ULL_CONST(1) << (47)))) ? 0x0 : 0));
    thread_state_ptr->words[1] &= ~ULL_CONST(0x8);
    thread_state_ptr->words[1] |= (v64 << 3) & 0x8;
}

static inline uint64_t PURE
thread_state_ptr_get_blockingIPCCanGrantReply(thread_state_t *thread_state_ptr) {
    uint64_t ret;
    ret = (thread_state_ptr->words[1] & ULL_CONST(0x4)) >> 2;
    /* Possibly sign extend */
    if (__builtin_expect(!!(0 && (ret & (ULL_CONST(1) << (47)))), 0)) {
        ret |= 0x0;
    }
    return ret;
}

static inline void
thread_state_ptr_set_blockingIPCCanGrantReply(thread_state_t *thread_state_ptr, uint64_t v64) {
    /* fail if user has passed bits that we will override */
    assert((((~ULL_CONST(0x4) >> 2) | 0x0) & v64) == ((0 && (v64 & (ULL_CONST(1) << (47)))) ? 0x0 : 0));
    thread_state_ptr->words[1] &= ~ULL_CONST(0x4);
    thread_state_ptr->words[1] |= (v64 << 2) & 0x4;
}

static inline uint64_t PURE
thread_state_ptr_get_blockingIPCIsCall(thread_state_t *thread_state_ptr) {
    uint64_t ret;
    ret = (thread_state_ptr->words[1] & ULL_CONST(0x2)) >> 1;
    /* Possibly sign extend */
    if (__builtin_expect(!!(0 && (ret & (ULL_CONST(1) << (47)))), 0)) {
        ret |= 0x0;
    }
    return ret;
}

static inline void
thread_state_ptr_set_blockingIPCIsCall(thread_state_t *thread_state_ptr, uint64_t v64) {
    /* fail if user has passed bits that we will override */
    assert((((~ULL_CONST(0x2) >> 1) | 0x0) & v64) == ((0 && (v64 & (ULL_CONST(1) << (47)))) ? 0x0 : 0));
    thread_state_ptr->words[1] &= ~ULL_CONST(0x2);
    thread_state_ptr->words[1] |= (v64 << 1) & 0x2;
}

static inline uint64_t CONST
thread_state_get_tcbQueued(thread_state_t thread_state) {
    uint64_t ret;
    ret = (thread_state.words[1] & ULL_CONST(0x1)) >> 0;
    /* Possibly sign extend */
    if (__builtin_expect(!!(0 && (ret & (ULL_CONST(1) << (47)))), 0)) {
        ret |= 0x0;
    }
    return ret;
}

static inline void
thread_state_ptr_set_tcbQueued(thread_state_t *thread_state_ptr, uint64_t v64) {
    /* fail if user has passed bits that we will override */
    assert((((~ULL_CONST(0x1) >> 0) | 0x0) & v64) == ((0 && (v64 & (ULL_CONST(1) << (47)))) ? 0x0 : 0));
    thread_state_ptr->words[1] &= ~ULL_CONST(0x1);
    thread_state_ptr->words[1] |= (v64 << 0) & 0x1;
}

static inline uint64_t PURE
thread_state_ptr_get_blockingObject(thread_state_t *thread_state_ptr) {
    uint64_t ret;
    ret = (thread_state_ptr->words[0] & ULL_CONST(0xfffffffffff0)) << 0;
    /* Possibly sign extend */
    if (__builtin_expect(!!(1 && (ret & (ULL_CONST(1) << (47)))), 1)) {
        ret |= 0xffff000000000000;
    }
    return ret;
}

static inline void
thread_state_ptr_set_blockingObject(thread_state_t *thread_state_ptr, uint64_t v64) {
    /* fail if user has passed bits that we will override */
    assert((((~ULL_CONST(0xfffffffffff0) << 0) | 0xffff000000000000) & v64) == ((1 && (v64 & (ULL_CONST(1) << (47)))) ? 0xffff000000000000 : 0));
    thread_state_ptr->words[0] &= ~ULL_CONST(0xfffffffffff0);
    thread_state_ptr->words[0] |= (v64 >> 0) & 0xfffffffffff0;
}

static inline uint64_t CONST
thread_state_get_tsType(thread_state_t thread_state) {
    uint64_t ret;
    ret = (thread_state.words[0] & ULL_CONST(0xf)) >> 0;
    /* Possibly sign extend */
    if (__builtin_expect(!!(0 && (ret & (ULL_CONST(1) << (47)))), 0)) {
        ret |= 0x0;
    }
    return ret;
}

static inline uint64_t PURE
thread_state_ptr_get_tsType(thread_state_t *thread_state_ptr) {
    uint64_t ret;
    ret = (thread_state_ptr->words[0] & ULL_CONST(0xf)) >> 0;
    /* Possibly sign extend */
    if (__builtin_expect(!!(0 && (ret & (ULL_CONST(1) << (47)))), 0)) {
        ret |= 0x0;
    }
    return ret;
}

static inline void
thread_state_ptr_set_tsType(thread_state_t *thread_state_ptr, uint64_t v64) {
    /* fail if user has passed bits that we will override */
    assert((((~ULL_CONST(0xf) >> 0) | 0x0) & v64) == ((0 && (v64 & (ULL_CONST(1) << (47)))) ? 0x0 : 0));
    thread_state_ptr->words[0] &= ~ULL_CONST(0xf);
    thread_state_ptr->words[0] |= (v64 << 0) & 0xf;
}

struct tss {
    uint64_t words[13];
};
typedef struct tss tss_t;

static inline tss_t CONST
tss_new(uint64_t io_map_base, uint64_t ist7_u, uint64_t ist7_l, uint64_t ist6_u, uint64_t ist6_l, uint64_t ist5_u, uint64_t ist5_l, uint64_t ist4_u, uint64_t ist4_l, uint64_t ist3_u, uint64_t ist3_l, uint64_t ist2_u, uint64_t ist2_l, uint64_t ist1_u, uint64_t ist1_l, uint64_t rsp2_u, uint64_t rsp2_l, uint64_t rsp1_u, uint64_t rsp1_l, uint64_t rsp0_u, uint64_t rsp0_l) {
    tss_t tss;

    /* fail if user has passed bits that we will override */  
    assert((io_map_base & ~ULL_CONST(0xffff)) == ((1 && (io_map_base & (ULL_CONST(1) << 47))) ? 0x0 : 0));  
    assert((ist7_u & ~ULL_CONST(0xffffffff)) == ((1 && (ist7_u & (ULL_CONST(1) << 47))) ? 0x0 : 0));  
    assert((ist7_l & ~ULL_CONST(0xffffffff)) == ((1 && (ist7_l & (ULL_CONST(1) << 47))) ? 0x0 : 0));  
    assert((ist6_u & ~ULL_CONST(0xffffffff)) == ((1 && (ist6_u & (ULL_CONST(1) << 47))) ? 0x0 : 0));  
    assert((ist6_l & ~ULL_CONST(0xffffffff)) == ((1 && (ist6_l & (ULL_CONST(1) << 47))) ? 0x0 : 0));  
    assert((ist5_u & ~ULL_CONST(0xffffffff)) == ((1 && (ist5_u & (ULL_CONST(1) << 47))) ? 0x0 : 0));  
    assert((ist5_l & ~ULL_CONST(0xffffffff)) == ((1 && (ist5_l & (ULL_CONST(1) << 47))) ? 0x0 : 0));  
    assert((ist4_u & ~ULL_CONST(0xffffffff)) == ((1 && (ist4_u & (ULL_CONST(1) << 47))) ? 0x0 : 0));  
    assert((ist4_l & ~ULL_CONST(0xffffffff)) == ((1 && (ist4_l & (ULL_CONST(1) << 47))) ? 0x0 : 0));  
    assert((ist3_u & ~ULL_CONST(0xffffffff)) == ((1 && (ist3_u & (ULL_CONST(1) << 47))) ? 0x0 : 0));  
    assert((ist3_l & ~ULL_CONST(0xffffffff)) == ((1 && (ist3_l & (ULL_CONST(1) << 47))) ? 0x0 : 0));  
    assert((ist2_u & ~ULL_CONST(0xffffffff)) == ((1 && (ist2_u & (ULL_CONST(1) << 47))) ? 0x0 : 0));  
    assert((ist2_l & ~ULL_CONST(0xffffffff)) == ((1 && (ist2_l & (ULL_CONST(1) << 47))) ? 0x0 : 0));  
    assert((ist1_u & ~ULL_CONST(0xffffffff)) == ((1 && (ist1_u & (ULL_CONST(1) << 47))) ? 0x0 : 0));  
    assert((ist1_l & ~ULL_CONST(0xffffffff)) == ((1 && (ist1_l & (ULL_CONST(1) << 47))) ? 0x0 : 0));  
    assert((rsp2_u & ~ULL_CONST(0xffffffff)) == ((1 && (rsp2_u & (ULL_CONST(1) << 47))) ? 0x0 : 0));  
    assert((rsp2_l & ~ULL_CONST(0xffffffff)) == ((1 && (rsp2_l & (ULL_CONST(1) << 47))) ? 0x0 : 0));  
    assert((rsp1_u & ~ULL_CONST(0xffffffff)) == ((1 && (rsp1_u & (ULL_CONST(1) << 47))) ? 0x0 : 0));  
    assert((rsp1_l & ~ULL_CONST(0xffffffff)) == ((1 && (rsp1_l & (ULL_CONST(1) << 47))) ? 0x0 : 0));  
    assert((rsp0_u & ~ULL_CONST(0xffffffff)) == ((1 && (rsp0_u & (ULL_CONST(1) << 47))) ? 0x0 : 0));  
    assert((rsp0_l & ~ULL_CONST(0xffffffff)) == ((1 && (rsp0_l & (ULL_CONST(1) << 47))) ? 0x0 : 0));

    tss.words[0] = 0
        | (rsp0_l & ULL_CONST(0xffffffff)) << 32;
    tss.words[1] = 0
        | (rsp1_l & ULL_CONST(0xffffffff)) << 32
        | (rsp0_u & ULL_CONST(0xffffffff)) << 0;
    tss.words[2] = 0
        | (rsp2_l & ULL_CONST(0xffffffff)) << 32
        | (rsp1_u & ULL_CONST(0xffffffff)) << 0;
    tss.words[3] = 0
        | (rsp2_u & ULL_CONST(0xffffffff)) << 0;
    tss.words[4] = 0
        | (ist1_l & ULL_CONST(0xffffffff)) << 32;
    tss.words[5] = 0
        | (ist2_l & ULL_CONST(0xffffffff)) << 32
        | (ist1_u & ULL_CONST(0xffffffff)) << 0;
    tss.words[6] = 0
        | (ist3_l & ULL_CONST(0xffffffff)) << 32
        | (ist2_u & ULL_CONST(0xffffffff)) << 0;
    tss.words[7] = 0
        | (ist4_l & ULL_CONST(0xffffffff)) << 32
        | (ist3_u & ULL_CONST(0xffffffff)) << 0;
    tss.words[8] = 0
        | (ist5_l & ULL_CONST(0xffffffff)) << 32
        | (ist4_u & ULL_CONST(0xffffffff)) << 0;
    tss.words[9] = 0
        | (ist6_l & ULL_CONST(0xffffffff)) << 32
        | (ist5_u & ULL_CONST(0xffffffff)) << 0;
    tss.words[10] = 0
        | (ist7_l & ULL_CONST(0xffffffff)) << 32
        | (ist6_u & ULL_CONST(0xffffffff)) << 0;
    tss.words[11] = 0
        | (ist7_u & ULL_CONST(0xffffffff)) << 0;
    tss.words[12] = 0
        | (io_map_base & ULL_CONST(0xffff)) << 48;

    return tss;
}

struct vm_attributes {
    uint64_t words[1];
};
typedef struct vm_attributes vm_attributes_t;

static inline uint64_t CONST
vm_attributes_get_x86PATBit(vm_attributes_t vm_attributes) {
    uint64_t ret;
    ret = (vm_attributes.words[0] & ULL_CONST(0x4)) >> 2;
    /* Possibly sign extend */
    if (__builtin_expect(!!(0 && (ret & (ULL_CONST(1) << (47)))), 0)) {
        ret |= 0x0;
    }
    return ret;
}

static inline uint64_t CONST
vm_attributes_get_x86PCDBit(vm_attributes_t vm_attributes) {
    uint64_t ret;
    ret = (vm_attributes.words[0] & ULL_CONST(0x2)) >> 1;
    /* Possibly sign extend */
    if (__builtin_expect(!!(0 && (ret & (ULL_CONST(1) << (47)))), 0)) {
        ret |= 0x0;
    }
    return ret;
}

static inline uint64_t CONST
vm_attributes_get_x86PWTBit(vm_attributes_t vm_attributes) {
    uint64_t ret;
    ret = (vm_attributes.words[0] & ULL_CONST(0x1)) >> 0;
    /* Possibly sign extend */
    if (__builtin_expect(!!(0 && (ret & (ULL_CONST(1) << (47)))), 0)) {
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

static inline x86_pat_msr_t CONST
x86_pat_msr_set_pa4(x86_pat_msr_t x86_pat_msr, uint32_t v32) {
    /* fail if user has passed bits that we will override */
    assert((((~0x7u >> 0 ) | 0x0) & v32) == ((0 && (v32 & (1u << (31)))) ? 0x0 : 0));
    x86_pat_msr.words[1] &= ~0x7u;
    x86_pat_msr.words[1] |= (v32 << 0) & 0x7u;
    return x86_pat_msr;
}

static inline x86_pat_msr_t CONST
x86_pat_msr_set_pa3(x86_pat_msr_t x86_pat_msr, uint32_t v32) {
    /* fail if user has passed bits that we will override */
    assert((((~0x7000000u >> 24 ) | 0x0) & v32) == ((0 && (v32 & (1u << (31)))) ? 0x0 : 0));
    x86_pat_msr.words[0] &= ~0x7000000u;
    x86_pat_msr.words[0] |= (v32 << 24) & 0x7000000u;
    return x86_pat_msr;
}

static inline x86_pat_msr_t CONST
x86_pat_msr_set_pa2(x86_pat_msr_t x86_pat_msr, uint32_t v32) {
    /* fail if user has passed bits that we will override */
    assert((((~0x70000u >> 16 ) | 0x0) & v32) == ((0 && (v32 & (1u << (31)))) ? 0x0 : 0));
    x86_pat_msr.words[0] &= ~0x70000u;
    x86_pat_msr.words[0] |= (v32 << 16) & 0x70000u;
    return x86_pat_msr;
}

static inline x86_pat_msr_t CONST
x86_pat_msr_set_pa1(x86_pat_msr_t x86_pat_msr, uint32_t v32) {
    /* fail if user has passed bits that we will override */
    assert((((~0x700u >> 8 ) | 0x0) & v32) == ((0 && (v32 & (1u << (31)))) ? 0x0 : 0));
    x86_pat_msr.words[0] &= ~0x700u;
    x86_pat_msr.words[0] |= (v32 << 8) & 0x700u;
    return x86_pat_msr;
}

static inline x86_pat_msr_t CONST
x86_pat_msr_set_pa0(x86_pat_msr_t x86_pat_msr, uint32_t v32) {
    /* fail if user has passed bits that we will override */
    assert((((~0x7u >> 0 ) | 0x0) & v32) == ((0 && (v32 & (1u << (31)))) ? 0x0 : 0));
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

static inline uint64_t CONST
asid_map_get_type(asid_map_t asid_map) {
    return (asid_map.words[0] >> 0) & ULL_CONST(0x3);
}

static inline asid_map_t CONST
asid_map_asid_map_none_new(void) {
    asid_map_t asid_map;

    /* fail if user has passed bits that we will override */  
    assert(((uint64_t)asid_map_asid_map_none & ~ULL_CONST(0x3)) == ((1 && ((uint64_t)asid_map_asid_map_none & (ULL_CONST(1) << 47))) ? 0x0 : 0));

    asid_map.words[0] = 0
        | ((uint64_t)asid_map_asid_map_none & ULL_CONST(0x3)) << 0;

    return asid_map;
}

static inline asid_map_t CONST
asid_map_asid_map_vspace_new(uint64_t vspace_root) {
    asid_map_t asid_map;

    /* fail if user has passed bits that we will override */  
    assert((vspace_root & ~ULL_CONST(0xffffffffffff)) == ((1 && (vspace_root & (ULL_CONST(1) << 47))) ? 0xffff000000000000 : 0));  
    assert(((uint64_t)asid_map_asid_map_vspace & ~ULL_CONST(0x3)) == ((1 && ((uint64_t)asid_map_asid_map_vspace & (ULL_CONST(1) << 47))) ? 0x0 : 0));

    asid_map.words[0] = 0
        | (vspace_root & ULL_CONST(0xffffffffffff)) << 16
        | ((uint64_t)asid_map_asid_map_vspace & ULL_CONST(0x3)) << 0;

    return asid_map;
}

static inline uint64_t CONST
asid_map_asid_map_vspace_get_vspace_root(asid_map_t asid_map) {
    uint64_t ret;
    /* fail if union does not have the expected tag */
    assert(((asid_map.words[0] >> 0) & 0x3) == asid_map_asid_map_vspace);

    ret = (asid_map.words[0] & ULL_CONST(0xffffffffffff0000)) >> 16;
    /* Possibly sign extend */
    if (__builtin_expect(!!(1 && (ret & (ULL_CONST(1) << (47)))), 1)) {
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

static inline uint64_t CONST
cap_get_capType(cap_t cap) {
    return (cap.words[0] >> 59) & ULL_CONST(0x1f);
}

static inline int CONST
cap_capType_equals(cap_t cap, uint64_t cap_type_tag) {
    return ((cap.words[0] >> 59) & ULL_CONST(0x1f)) == cap_type_tag;
}

static inline cap_t CONST
cap_null_cap_new(void) {
    cap_t cap;

    /* fail if user has passed bits that we will override */  
    assert(((uint64_t)cap_null_cap & ~ULL_CONST(0x1f)) == ((1 && ((uint64_t)cap_null_cap & (ULL_CONST(1) << 47))) ? 0x0 : 0));

    cap.words[0] = 0
        | ((uint64_t)cap_null_cap & ULL_CONST(0x1f)) << 59;
    cap.words[1] = 0;

    return cap;
}

static inline cap_t CONST
cap_untyped_cap_new(uint64_t capFreeIndex, uint64_t capIsDevice, uint64_t capBlockSize, uint64_t capPtr) {
    cap_t cap;

    /* fail if user has passed bits that we will override */  
    assert((capFreeIndex & ~ULL_CONST(0xffffffffffff)) == ((1 && (capFreeIndex & (ULL_CONST(1) << 47))) ? 0x0 : 0));  
    assert((capIsDevice & ~ULL_CONST(0x1)) == ((1 && (capIsDevice & (ULL_CONST(1) << 47))) ? 0x0 : 0));  
    assert((capBlockSize & ~ULL_CONST(0x3f)) == ((1 && (capBlockSize & (ULL_CONST(1) << 47))) ? 0x0 : 0));  
    assert(((uint64_t)cap_untyped_cap & ~ULL_CONST(0x1f)) == ((1 && ((uint64_t)cap_untyped_cap & (ULL_CONST(1) << 47))) ? 0x0 : 0));  
    assert((capPtr & ~ULL_CONST(0xffffffffffff)) == ((1 && (capPtr & (ULL_CONST(1) << 47))) ? 0xffff000000000000 : 0));

    cap.words[0] = 0
        | ((uint64_t)cap_untyped_cap & ULL_CONST(0x1f)) << 59
        | (capPtr & ULL_CONST(0xffffffffffff)) >> 0;
    cap.words[1] = 0
        | (capFreeIndex & ULL_CONST(0xffffffffffff)) << 16
        | (capIsDevice & ULL_CONST(0x1)) << 6
        | (capBlockSize & ULL_CONST(0x3f)) << 0;

    return cap;
}

static inline uint64_t CONST
cap_untyped_cap_get_capFreeIndex(cap_t cap) {
    uint64_t ret;
    /* fail if union does not have the expected tag */
    assert(((cap.words[0] >> 59) & 0x1f) == cap_untyped_cap);

    ret = (cap.words[1] & ULL_CONST(0xffffffffffff0000)) >> 16;
    /* Possibly sign extend */
    if (__builtin_expect(!!(0 && (ret & (ULL_CONST(1) << (47)))), 0)) {
        ret |= 0x0;
    }
    return ret;
}

static inline cap_t CONST
cap_untyped_cap_set_capFreeIndex(cap_t cap, uint64_t v64) {
    /* fail if union does not have the expected tag */
    assert(((cap.words[0] >> 59) & 0x1f) == cap_untyped_cap);
    /* fail if user has passed bits that we will override */
    assert((((~ULL_CONST(0xffffffffffff0000) >> 16 ) | 0x0) & v64) == ((0 && (v64 & (ULL_CONST(1) << (47)))) ? 0x0 : 0));

    cap.words[1] &= ~ULL_CONST(0xffffffffffff0000);
    cap.words[1] |= (v64 << 16) & ULL_CONST(0xffffffffffff0000);
    return cap;
}

static inline void
cap_untyped_cap_ptr_set_capFreeIndex(cap_t *cap_ptr, uint64_t v64) {
    /* fail if union does not have the expected tag */
    assert(((cap_ptr->words[0] >> 59) & 0x1f) == cap_untyped_cap);

    /* fail if user has passed bits that we will override */
    assert((((~ULL_CONST(0xffffffffffff0000) >> 16) | 0x0) & v64) == ((0 && (v64 & (ULL_CONST(1) << (47)))) ? 0x0 : 0));

    cap_ptr->words[1] &= ~ULL_CONST(0xffffffffffff0000);
    cap_ptr->words[1] |= (v64 << 16) & ULL_CONST(0xffffffffffff0000);
}

static inline uint64_t CONST
cap_untyped_cap_get_capIsDevice(cap_t cap) {
    uint64_t ret;
    /* fail if union does not have the expected tag */
    assert(((cap.words[0] >> 59) & 0x1f) == cap_untyped_cap);

    ret = (cap.words[1] & ULL_CONST(0x40)) >> 6;
    /* Possibly sign extend */
    if (__builtin_expect(!!(0 && (ret & (ULL_CONST(1) << (47)))), 0)) {
        ret |= 0x0;
    }
    return ret;
}

static inline uint64_t CONST
cap_untyped_cap_get_capBlockSize(cap_t cap) {
    uint64_t ret;
    /* fail if union does not have the expected tag */
    assert(((cap.words[0] >> 59) & 0x1f) == cap_untyped_cap);

    ret = (cap.words[1] & ULL_CONST(0x3f)) >> 0;
    /* Possibly sign extend */
    if (__builtin_expect(!!(0 && (ret & (ULL_CONST(1) << (47)))), 0)) {
        ret |= 0x0;
    }
    return ret;
}

static inline uint64_t CONST
cap_untyped_cap_get_capPtr(cap_t cap) {
    uint64_t ret;
    /* fail if union does not have the expected tag */
    assert(((cap.words[0] >> 59) & 0x1f) == cap_untyped_cap);

    ret = (cap.words[0] & ULL_CONST(0xffffffffffff)) << 0;
    /* Possibly sign extend */
    if (__builtin_expect(!!(1 && (ret & (ULL_CONST(1) << (47)))), 1)) {
        ret |= 0xffff000000000000;
    }
    return ret;
}

static inline cap_t CONST
cap_endpoint_cap_new(uint64_t capEPBadge, uint64_t capCanGrantReply, uint64_t capCanGrant, uint64_t capCanSend, uint64_t capCanReceive, uint64_t capEPPtr) {
    cap_t cap;

    /* fail if user has passed bits that we will override */  
    assert((capCanGrantReply & ~ULL_CONST(0x1)) == ((1 && (capCanGrantReply & (ULL_CONST(1) << 47))) ? 0x0 : 0));  
    assert((capCanGrant & ~ULL_CONST(0x1)) == ((1 && (capCanGrant & (ULL_CONST(1) << 47))) ? 0x0 : 0));  
    assert((capCanSend & ~ULL_CONST(0x1)) == ((1 && (capCanSend & (ULL_CONST(1) << 47))) ? 0x0 : 0));  
    assert((capCanReceive & ~ULL_CONST(0x1)) == ((1 && (capCanReceive & (ULL_CONST(1) << 47))) ? 0x0 : 0));  
    assert((capEPPtr & ~ULL_CONST(0xffffffffffff)) == ((1 && (capEPPtr & (ULL_CONST(1) << 47))) ? 0xffff000000000000 : 0));  
    assert(((uint64_t)cap_endpoint_cap & ~ULL_CONST(0x1f)) == ((1 && ((uint64_t)cap_endpoint_cap & (ULL_CONST(1) << 47))) ? 0x0 : 0));

    cap.words[0] = 0
        | (capCanGrantReply & ULL_CONST(0x1)) << 58
        | (capCanGrant & ULL_CONST(0x1)) << 57
        | (capCanSend & ULL_CONST(0x1)) << 55
        | (capCanReceive & ULL_CONST(0x1)) << 56
        | (capEPPtr & ULL_CONST(0xffffffffffff)) >> 0
        | ((uint64_t)cap_endpoint_cap & ULL_CONST(0x1f)) << 59;
    cap.words[1] = 0
        | capEPBadge << 0;

    return cap;
}

static inline uint64_t CONST
cap_endpoint_cap_get_capEPBadge(cap_t cap) {
    uint64_t ret;
    /* fail if union does not have the expected tag */
    assert(((cap.words[0] >> 59) & 0x1f) == cap_endpoint_cap);

    ret = (cap.words[1] & ULL_CONST(0xffffffffffffffff)) >> 0;
    /* Possibly sign extend */
    if (__builtin_expect(!!(0 && (ret & (ULL_CONST(1) << (47)))), 0)) {
        ret |= 0x0;
    }
    return ret;
}

static inline cap_t CONST
cap_endpoint_cap_set_capEPBadge(cap_t cap, uint64_t v64) {
    /* fail if union does not have the expected tag */
    assert(((cap.words[0] >> 59) & 0x1f) == cap_endpoint_cap);
    /* fail if user has passed bits that we will override */
    assert((((~ULL_CONST(0xffffffffffffffff) >> 0 ) | 0x0) & v64) == ((0 && (v64 & (ULL_CONST(1) << (47)))) ? 0x0 : 0));

    cap.words[1] &= ~ULL_CONST(0xffffffffffffffff);
    cap.words[1] |= (v64 << 0) & ULL_CONST(0xffffffffffffffff);
    return cap;
}

static inline uint64_t CONST
cap_endpoint_cap_get_capCanGrantReply(cap_t cap) {
    uint64_t ret;
    /* fail if union does not have the expected tag */
    assert(((cap.words[0] >> 59) & 0x1f) == cap_endpoint_cap);

    ret = (cap.words[0] & ULL_CONST(0x400000000000000)) >> 58;
    /* Possibly sign extend */
    if (__builtin_expect(!!(0 && (ret & (ULL_CONST(1) << (47)))), 0)) {
        ret |= 0x0;
    }
    return ret;
}

static inline cap_t CONST
cap_endpoint_cap_set_capCanGrantReply(cap_t cap, uint64_t v64) {
    /* fail if union does not have the expected tag */
    assert(((cap.words[0] >> 59) & 0x1f) == cap_endpoint_cap);
    /* fail if user has passed bits that we will override */
    assert((((~ULL_CONST(0x400000000000000) >> 58 ) | 0x0) & v64) == ((0 && (v64 & (ULL_CONST(1) << (47)))) ? 0x0 : 0));

    cap.words[0] &= ~ULL_CONST(0x400000000000000);
    cap.words[0] |= (v64 << 58) & ULL_CONST(0x400000000000000);
    return cap;
}

static inline uint64_t CONST
cap_endpoint_cap_get_capCanGrant(cap_t cap) {
    uint64_t ret;
    /* fail if union does not have the expected tag */
    assert(((cap.words[0] >> 59) & 0x1f) == cap_endpoint_cap);

    ret = (cap.words[0] & ULL_CONST(0x200000000000000)) >> 57;
    /* Possibly sign extend */
    if (__builtin_expect(!!(0 && (ret & (ULL_CONST(1) << (47)))), 0)) {
        ret |= 0x0;
    }
    return ret;
}

static inline cap_t CONST
cap_endpoint_cap_set_capCanGrant(cap_t cap, uint64_t v64) {
    /* fail if union does not have the expected tag */
    assert(((cap.words[0] >> 59) & 0x1f) == cap_endpoint_cap);
    /* fail if user has passed bits that we will override */
    assert((((~ULL_CONST(0x200000000000000) >> 57 ) | 0x0) & v64) == ((0 && (v64 & (ULL_CONST(1) << (47)))) ? 0x0 : 0));

    cap.words[0] &= ~ULL_CONST(0x200000000000000);
    cap.words[0] |= (v64 << 57) & ULL_CONST(0x200000000000000);
    return cap;
}

static inline uint64_t CONST
cap_endpoint_cap_get_capCanReceive(cap_t cap) {
    uint64_t ret;
    /* fail if union does not have the expected tag */
    assert(((cap.words[0] >> 59) & 0x1f) == cap_endpoint_cap);

    ret = (cap.words[0] & ULL_CONST(0x100000000000000)) >> 56;
    /* Possibly sign extend */
    if (__builtin_expect(!!(0 && (ret & (ULL_CONST(1) << (47)))), 0)) {
        ret |= 0x0;
    }
    return ret;
}

static inline cap_t CONST
cap_endpoint_cap_set_capCanReceive(cap_t cap, uint64_t v64) {
    /* fail if union does not have the expected tag */
    assert(((cap.words[0] >> 59) & 0x1f) == cap_endpoint_cap);
    /* fail if user has passed bits that we will override */
    assert((((~ULL_CONST(0x100000000000000) >> 56 ) | 0x0) & v64) == ((0 && (v64 & (ULL_CONST(1) << (47)))) ? 0x0 : 0));

    cap.words[0] &= ~ULL_CONST(0x100000000000000);
    cap.words[0] |= (v64 << 56) & ULL_CONST(0x100000000000000);
    return cap;
}

static inline uint64_t CONST
cap_endpoint_cap_get_capCanSend(cap_t cap) {
    uint64_t ret;
    /* fail if union does not have the expected tag */
    assert(((cap.words[0] >> 59) & 0x1f) == cap_endpoint_cap);

    ret = (cap.words[0] & ULL_CONST(0x80000000000000)) >> 55;
    /* Possibly sign extend */
    if (__builtin_expect(!!(0 && (ret & (ULL_CONST(1) << (47)))), 0)) {
        ret |= 0x0;
    }
    return ret;
}

static inline cap_t CONST
cap_endpoint_cap_set_capCanSend(cap_t cap, uint64_t v64) {
    /* fail if union does not have the expected tag */
    assert(((cap.words[0] >> 59) & 0x1f) == cap_endpoint_cap);
    /* fail if user has passed bits that we will override */
    assert((((~ULL_CONST(0x80000000000000) >> 55 ) | 0x0) & v64) == ((0 && (v64 & (ULL_CONST(1) << (47)))) ? 0x0 : 0));

    cap.words[0] &= ~ULL_CONST(0x80000000000000);
    cap.words[0] |= (v64 << 55) & ULL_CONST(0x80000000000000);
    return cap;
}

static inline uint64_t CONST
cap_endpoint_cap_get_capEPPtr(cap_t cap) {
    uint64_t ret;
    /* fail if union does not have the expected tag */
    assert(((cap.words[0] >> 59) & 0x1f) == cap_endpoint_cap);

    ret = (cap.words[0] & ULL_CONST(0xffffffffffff)) << 0;
    /* Possibly sign extend */
    if (__builtin_expect(!!(1 && (ret & (ULL_CONST(1) << (47)))), 1)) {
        ret |= 0xffff000000000000;
    }
    return ret;
}

static inline cap_t CONST
cap_notification_cap_new(uint64_t capNtfnBadge, uint64_t capNtfnCanReceive, uint64_t capNtfnCanSend, uint64_t capNtfnPtr) {
    cap_t cap;

    /* fail if user has passed bits that we will override */  
    assert(((uint64_t)cap_notification_cap & ~ULL_CONST(0x1f)) == ((1 && ((uint64_t)cap_notification_cap & (ULL_CONST(1) << 47))) ? 0x0 : 0));  
    assert((capNtfnCanReceive & ~ULL_CONST(0x1)) == ((1 && (capNtfnCanReceive & (ULL_CONST(1) << 47))) ? 0x0 : 0));  
    assert((capNtfnCanSend & ~ULL_CONST(0x1)) == ((1 && (capNtfnCanSend & (ULL_CONST(1) << 47))) ? 0x0 : 0));  
    assert((capNtfnPtr & ~ULL_CONST(0xffffffffffff)) == ((1 && (capNtfnPtr & (ULL_CONST(1) << 47))) ? 0xffff000000000000 : 0));

    cap.words[0] = 0
        | ((uint64_t)cap_notification_cap & ULL_CONST(0x1f)) << 59
        | (capNtfnCanReceive & ULL_CONST(0x1)) << 58
        | (capNtfnCanSend & ULL_CONST(0x1)) << 57
        | (capNtfnPtr & ULL_CONST(0xffffffffffff)) >> 0;
    cap.words[1] = 0
        | capNtfnBadge << 0;

    return cap;
}

static inline uint64_t CONST
cap_notification_cap_get_capNtfnBadge(cap_t cap) {
    uint64_t ret;
    /* fail if union does not have the expected tag */
    assert(((cap.words[0] >> 59) & 0x1f) == cap_notification_cap);

    ret = (cap.words[1] & ULL_CONST(0xffffffffffffffff)) >> 0;
    /* Possibly sign extend */
    if (__builtin_expect(!!(0 && (ret & (ULL_CONST(1) << (47)))), 0)) {
        ret |= 0x0;
    }
    return ret;
}

static inline cap_t CONST
cap_notification_cap_set_capNtfnBadge(cap_t cap, uint64_t v64) {
    /* fail if union does not have the expected tag */
    assert(((cap.words[0] >> 59) & 0x1f) == cap_notification_cap);
    /* fail if user has passed bits that we will override */
    assert((((~ULL_CONST(0xffffffffffffffff) >> 0 ) | 0x0) & v64) == ((0 && (v64 & (ULL_CONST(1) << (47)))) ? 0x0 : 0));

    cap.words[1] &= ~ULL_CONST(0xffffffffffffffff);
    cap.words[1] |= (v64 << 0) & ULL_CONST(0xffffffffffffffff);
    return cap;
}

static inline uint64_t CONST
cap_notification_cap_get_capNtfnCanReceive(cap_t cap) {
    uint64_t ret;
    /* fail if union does not have the expected tag */
    assert(((cap.words[0] >> 59) & 0x1f) == cap_notification_cap);

    ret = (cap.words[0] & ULL_CONST(0x400000000000000)) >> 58;
    /* Possibly sign extend */
    if (__builtin_expect(!!(0 && (ret & (ULL_CONST(1) << (47)))), 0)) {
        ret |= 0x0;
    }
    return ret;
}

static inline cap_t CONST
cap_notification_cap_set_capNtfnCanReceive(cap_t cap, uint64_t v64) {
    /* fail if union does not have the expected tag */
    assert(((cap.words[0] >> 59) & 0x1f) == cap_notification_cap);
    /* fail if user has passed bits that we will override */
    assert((((~ULL_CONST(0x400000000000000) >> 58 ) | 0x0) & v64) == ((0 && (v64 & (ULL_CONST(1) << (47)))) ? 0x0 : 0));

    cap.words[0] &= ~ULL_CONST(0x400000000000000);
    cap.words[0] |= (v64 << 58) & ULL_CONST(0x400000000000000);
    return cap;
}

static inline uint64_t CONST
cap_notification_cap_get_capNtfnCanSend(cap_t cap) {
    uint64_t ret;
    /* fail if union does not have the expected tag */
    assert(((cap.words[0] >> 59) & 0x1f) == cap_notification_cap);

    ret = (cap.words[0] & ULL_CONST(0x200000000000000)) >> 57;
    /* Possibly sign extend */
    if (__builtin_expect(!!(0 && (ret & (ULL_CONST(1) << (47)))), 0)) {
        ret |= 0x0;
    }
    return ret;
}

static inline cap_t CONST
cap_notification_cap_set_capNtfnCanSend(cap_t cap, uint64_t v64) {
    /* fail if union does not have the expected tag */
    assert(((cap.words[0] >> 59) & 0x1f) == cap_notification_cap);
    /* fail if user has passed bits that we will override */
    assert((((~ULL_CONST(0x200000000000000) >> 57 ) | 0x0) & v64) == ((0 && (v64 & (ULL_CONST(1) << (47)))) ? 0x0 : 0));

    cap.words[0] &= ~ULL_CONST(0x200000000000000);
    cap.words[0] |= (v64 << 57) & ULL_CONST(0x200000000000000);
    return cap;
}

static inline uint64_t CONST
cap_notification_cap_get_capNtfnPtr(cap_t cap) {
    uint64_t ret;
    /* fail if union does not have the expected tag */
    assert(((cap.words[0] >> 59) & 0x1f) == cap_notification_cap);

    ret = (cap.words[0] & ULL_CONST(0xffffffffffff)) << 0;
    /* Possibly sign extend */
    if (__builtin_expect(!!(1 && (ret & (ULL_CONST(1) << (47)))), 1)) {
        ret |= 0xffff000000000000;
    }
    return ret;
}

static inline cap_t CONST
cap_reply_cap_new(uint64_t capReplyCanGrant, uint64_t capReplyMaster, uint64_t capTCBPtr) {
    cap_t cap;

    /* fail if user has passed bits that we will override */  
    assert((capReplyCanGrant & ~ULL_CONST(0x1)) == ((1 && (capReplyCanGrant & (ULL_CONST(1) << 47))) ? 0x0 : 0));  
    assert((capReplyMaster & ~ULL_CONST(0x1)) == ((1 && (capReplyMaster & (ULL_CONST(1) << 47))) ? 0x0 : 0));  
    assert(((uint64_t)cap_reply_cap & ~ULL_CONST(0x1f)) == ((1 && ((uint64_t)cap_reply_cap & (ULL_CONST(1) << 47))) ? 0x0 : 0));

    cap.words[0] = 0
        | (capReplyCanGrant & ULL_CONST(0x1)) << 1
        | (capReplyMaster & ULL_CONST(0x1)) << 0
        | ((uint64_t)cap_reply_cap & ULL_CONST(0x1f)) << 59;
    cap.words[1] = 0
        | capTCBPtr << 0;

    return cap;
}

static inline uint64_t CONST
cap_reply_cap_get_capTCBPtr(cap_t cap) {
    uint64_t ret;
    /* fail if union does not have the expected tag */
    assert(((cap.words[0] >> 59) & 0x1f) == cap_reply_cap);

    ret = (cap.words[1] & ULL_CONST(0xffffffffffffffff)) >> 0;
    /* Possibly sign extend */
    if (__builtin_expect(!!(0 && (ret & (ULL_CONST(1) << (47)))), 0)) {
        ret |= 0x0;
    }
    return ret;
}

static inline uint64_t CONST
cap_reply_cap_get_capReplyCanGrant(cap_t cap) {
    uint64_t ret;
    /* fail if union does not have the expected tag */
    assert(((cap.words[0] >> 59) & 0x1f) == cap_reply_cap);

    ret = (cap.words[0] & ULL_CONST(0x2)) >> 1;
    /* Possibly sign extend */
    if (__builtin_expect(!!(0 && (ret & (ULL_CONST(1) << (47)))), 0)) {
        ret |= 0x0;
    }
    return ret;
}

static inline cap_t CONST
cap_reply_cap_set_capReplyCanGrant(cap_t cap, uint64_t v64) {
    /* fail if union does not have the expected tag */
    assert(((cap.words[0] >> 59) & 0x1f) == cap_reply_cap);
    /* fail if user has passed bits that we will override */
    assert((((~ULL_CONST(0x2) >> 1 ) | 0x0) & v64) == ((0 && (v64 & (ULL_CONST(1) << (47)))) ? 0x0 : 0));

    cap.words[0] &= ~ULL_CONST(0x2);
    cap.words[0] |= (v64 << 1) & ULL_CONST(0x2);
    return cap;
}

static inline uint64_t CONST
cap_reply_cap_get_capReplyMaster(cap_t cap) {
    uint64_t ret;
    /* fail if union does not have the expected tag */
    assert(((cap.words[0] >> 59) & 0x1f) == cap_reply_cap);

    ret = (cap.words[0] & ULL_CONST(0x1)) >> 0;
    /* Possibly sign extend */
    if (__builtin_expect(!!(0 && (ret & (ULL_CONST(1) << (47)))), 0)) {
        ret |= 0x0;
    }
    return ret;
}

static inline cap_t CONST
cap_cnode_cap_new(uint64_t capCNodeRadix, uint64_t capCNodeGuardSize, uint64_t capCNodeGuard, uint64_t capCNodePtr) {
    cap_t cap;

    /* fail if user has passed bits that we will override */  
    assert((capCNodeRadix & ~ULL_CONST(0x3f)) == ((1 && (capCNodeRadix & (ULL_CONST(1) << 47))) ? 0x0 : 0));  
    assert((capCNodeGuardSize & ~ULL_CONST(0x3f)) == ((1 && (capCNodeGuardSize & (ULL_CONST(1) << 47))) ? 0x0 : 0));  
    assert((capCNodePtr & ~ULL_CONST(0xfffffffffffe)) == ((1 && (capCNodePtr & (ULL_CONST(1) << 47))) ? 0xffff000000000000 : 0));  
    assert(((uint64_t)cap_cnode_cap & ~ULL_CONST(0x1f)) == ((1 && ((uint64_t)cap_cnode_cap & (ULL_CONST(1) << 47))) ? 0x0 : 0));

    cap.words[0] = 0
        | (capCNodeRadix & ULL_CONST(0x3f)) << 47
        | (capCNodeGuardSize & ULL_CONST(0x3f)) << 53
        | (capCNodePtr & ULL_CONST(0xfffffffffffe)) >> 1
        | ((uint64_t)cap_cnode_cap & ULL_CONST(0x1f)) << 59;
    cap.words[1] = 0
        | capCNodeGuard << 0;

    return cap;
}

static inline uint64_t CONST
cap_cnode_cap_get_capCNodeGuard(cap_t cap) {
    uint64_t ret;
    /* fail if union does not have the expected tag */
    assert(((cap.words[0] >> 59) & 0x1f) == cap_cnode_cap);

    ret = (cap.words[1] & ULL_CONST(0xffffffffffffffff)) >> 0;
    /* Possibly sign extend */
    if (__builtin_expect(!!(0 && (ret & (ULL_CONST(1) << (47)))), 0)) {
        ret |= 0x0;
    }
    return ret;
}

static inline cap_t CONST
cap_cnode_cap_set_capCNodeGuard(cap_t cap, uint64_t v64) {
    /* fail if union does not have the expected tag */
    assert(((cap.words[0] >> 59) & 0x1f) == cap_cnode_cap);
    /* fail if user has passed bits that we will override */
    assert((((~ULL_CONST(0xffffffffffffffff) >> 0 ) | 0x0) & v64) == ((0 && (v64 & (ULL_CONST(1) << (47)))) ? 0x0 : 0));

    cap.words[1] &= ~ULL_CONST(0xffffffffffffffff);
    cap.words[1] |= (v64 << 0) & ULL_CONST(0xffffffffffffffff);
    return cap;
}

static inline uint64_t CONST
cap_cnode_cap_get_capCNodeGuardSize(cap_t cap) {
    uint64_t ret;
    /* fail if union does not have the expected tag */
    assert(((cap.words[0] >> 59) & 0x1f) == cap_cnode_cap);

    ret = (cap.words[0] & ULL_CONST(0x7e0000000000000)) >> 53;
    /* Possibly sign extend */
    if (__builtin_expect(!!(0 && (ret & (ULL_CONST(1) << (47)))), 0)) {
        ret |= 0x0;
    }
    return ret;
}

static inline cap_t CONST
cap_cnode_cap_set_capCNodeGuardSize(cap_t cap, uint64_t v64) {
    /* fail if union does not have the expected tag */
    assert(((cap.words[0] >> 59) & 0x1f) == cap_cnode_cap);
    /* fail if user has passed bits that we will override */
    assert((((~ULL_CONST(0x7e0000000000000) >> 53 ) | 0x0) & v64) == ((0 && (v64 & (ULL_CONST(1) << (47)))) ? 0x0 : 0));

    cap.words[0] &= ~ULL_CONST(0x7e0000000000000);
    cap.words[0] |= (v64 << 53) & ULL_CONST(0x7e0000000000000);
    return cap;
}

static inline uint64_t CONST
cap_cnode_cap_get_capCNodeRadix(cap_t cap) {
    uint64_t ret;
    /* fail if union does not have the expected tag */
    assert(((cap.words[0] >> 59) & 0x1f) == cap_cnode_cap);

    ret = (cap.words[0] & ULL_CONST(0x1f800000000000)) >> 47;
    /* Possibly sign extend */
    if (__builtin_expect(!!(0 && (ret & (ULL_CONST(1) << (47)))), 0)) {
        ret |= 0x0;
    }
    return ret;
}

static inline uint64_t CONST
cap_cnode_cap_get_capCNodePtr(cap_t cap) {
    uint64_t ret;
    /* fail if union does not have the expected tag */
    assert(((cap.words[0] >> 59) & 0x1f) == cap_cnode_cap);

    ret = (cap.words[0] & ULL_CONST(0x7fffffffffff)) << 1;
    /* Possibly sign extend */
    if (__builtin_expect(!!(1 && (ret & (ULL_CONST(1) << (47)))), 1)) {
        ret |= 0xffff000000000000;
    }
    return ret;
}

static inline cap_t CONST
cap_thread_cap_new(uint64_t capTCBPtr) {
    cap_t cap;

    /* fail if user has passed bits that we will override */  
    assert(((uint64_t)cap_thread_cap & ~ULL_CONST(0x1f)) == ((1 && ((uint64_t)cap_thread_cap & (ULL_CONST(1) << 47))) ? 0x0 : 0));  
    assert((capTCBPtr & ~ULL_CONST(0xffffffffffff)) == ((1 && (capTCBPtr & (ULL_CONST(1) << 47))) ? 0xffff000000000000 : 0));

    cap.words[0] = 0
        | ((uint64_t)cap_thread_cap & ULL_CONST(0x1f)) << 59
        | (capTCBPtr & ULL_CONST(0xffffffffffff)) >> 0;
    cap.words[1] = 0;

    return cap;
}

static inline uint64_t CONST
cap_thread_cap_get_capTCBPtr(cap_t cap) {
    uint64_t ret;
    /* fail if union does not have the expected tag */
    assert(((cap.words[0] >> 59) & 0x1f) == cap_thread_cap);

    ret = (cap.words[0] & ULL_CONST(0xffffffffffff)) << 0;
    /* Possibly sign extend */
    if (__builtin_expect(!!(1 && (ret & (ULL_CONST(1) << (47)))), 1)) {
        ret |= 0xffff000000000000;
    }
    return ret;
}

static inline cap_t CONST
cap_irq_control_cap_new(void) {
    cap_t cap;

    /* fail if user has passed bits that we will override */  
    assert(((uint64_t)cap_irq_control_cap & ~ULL_CONST(0x1f)) == ((1 && ((uint64_t)cap_irq_control_cap & (ULL_CONST(1) << 47))) ? 0x0 : 0));

    cap.words[0] = 0
        | ((uint64_t)cap_irq_control_cap & ULL_CONST(0x1f)) << 59;
    cap.words[1] = 0;

    return cap;
}

static inline cap_t CONST
cap_irq_handler_cap_new(uint64_t capIRQ) {
    cap_t cap;

    /* fail if user has passed bits that we will override */  
    assert((capIRQ & ~ULL_CONST(0xfff)) == ((1 && (capIRQ & (ULL_CONST(1) << 47))) ? 0x0 : 0));  
    assert(((uint64_t)cap_irq_handler_cap & ~ULL_CONST(0x1f)) == ((1 && ((uint64_t)cap_irq_handler_cap & (ULL_CONST(1) << 47))) ? 0x0 : 0));

    cap.words[0] = 0
        | ((uint64_t)cap_irq_handler_cap & ULL_CONST(0x1f)) << 59;
    cap.words[1] = 0
        | (capIRQ & ULL_CONST(0xfff)) << 0;

    return cap;
}

static inline uint64_t CONST
cap_irq_handler_cap_get_capIRQ(cap_t cap) {
    uint64_t ret;
    /* fail if union does not have the expected tag */
    assert(((cap.words[0] >> 59) & 0x1f) == cap_irq_handler_cap);

    ret = (cap.words[1] & ULL_CONST(0xfff)) >> 0;
    /* Possibly sign extend */
    if (__builtin_expect(!!(0 && (ret & (ULL_CONST(1) << (47)))), 0)) {
        ret |= 0x0;
    }
    return ret;
}

static inline cap_t CONST
cap_zombie_cap_new(uint64_t capZombieID, uint64_t capZombieType) {
    cap_t cap;

    /* fail if user has passed bits that we will override */  
    assert(((uint64_t)cap_zombie_cap & ~ULL_CONST(0x1f)) == ((1 && ((uint64_t)cap_zombie_cap & (ULL_CONST(1) << 47))) ? 0x0 : 0));  
    assert((capZombieType & ~ULL_CONST(0x7f)) == ((1 && (capZombieType & (ULL_CONST(1) << 47))) ? 0x0 : 0));

    cap.words[0] = 0
        | ((uint64_t)cap_zombie_cap & ULL_CONST(0x1f)) << 59
        | (capZombieType & ULL_CONST(0x7f)) << 0;
    cap.words[1] = 0
        | capZombieID << 0;

    return cap;
}

static inline uint64_t CONST
cap_zombie_cap_get_capZombieID(cap_t cap) {
    uint64_t ret;
    /* fail if union does not have the expected tag */
    assert(((cap.words[0] >> 59) & 0x1f) == cap_zombie_cap);

    ret = (cap.words[1] & ULL_CONST(0xffffffffffffffff)) >> 0;
    /* Possibly sign extend */
    if (__builtin_expect(!!(0 && (ret & (ULL_CONST(1) << (47)))), 0)) {
        ret |= 0x0;
    }
    return ret;
}

static inline cap_t CONST
cap_zombie_cap_set_capZombieID(cap_t cap, uint64_t v64) {
    /* fail if union does not have the expected tag */
    assert(((cap.words[0] >> 59) & 0x1f) == cap_zombie_cap);
    /* fail if user has passed bits that we will override */
    assert((((~ULL_CONST(0xffffffffffffffff) >> 0 ) | 0x0) & v64) == ((0 && (v64 & (ULL_CONST(1) << (47)))) ? 0x0 : 0));

    cap.words[1] &= ~ULL_CONST(0xffffffffffffffff);
    cap.words[1] |= (v64 << 0) & ULL_CONST(0xffffffffffffffff);
    return cap;
}

static inline uint64_t CONST
cap_zombie_cap_get_capZombieType(cap_t cap) {
    uint64_t ret;
    /* fail if union does not have the expected tag */
    assert(((cap.words[0] >> 59) & 0x1f) == cap_zombie_cap);

    ret = (cap.words[0] & ULL_CONST(0x7f)) >> 0;
    /* Possibly sign extend */
    if (__builtin_expect(!!(0 && (ret & (ULL_CONST(1) << (47)))), 0)) {
        ret |= 0x0;
    }
    return ret;
}

static inline cap_t CONST
cap_domain_cap_new(void) {
    cap_t cap;

    /* fail if user has passed bits that we will override */  
    assert(((uint64_t)cap_domain_cap & ~ULL_CONST(0x1f)) == ((1 && ((uint64_t)cap_domain_cap & (ULL_CONST(1) << 47))) ? 0x0 : 0));

    cap.words[0] = 0
        | ((uint64_t)cap_domain_cap & ULL_CONST(0x1f)) << 59;
    cap.words[1] = 0;

    return cap;
}

static inline cap_t CONST
cap_frame_cap_new(uint64_t capFMappedASID, uint64_t capFBasePtr, uint64_t capFSize, uint64_t capFMapType, uint64_t capFMappedAddress, uint64_t capFVMRights, uint64_t capFIsDevice) {
    cap_t cap;

    /* fail if user has passed bits that we will override */  
    assert((capFMappedASID & ~ULL_CONST(0xffff)) == ((1 && (capFMappedASID & (ULL_CONST(1) << 47))) ? 0x0 : 0));  
    assert((capFBasePtr & ~ULL_CONST(0xffffffffffff)) == ((1 && (capFBasePtr & (ULL_CONST(1) << 47))) ? 0xffff000000000000 : 0));  
    assert(((uint64_t)cap_frame_cap & ~ULL_CONST(0x1f)) == ((1 && ((uint64_t)cap_frame_cap & (ULL_CONST(1) << 47))) ? 0x0 : 0));  
    assert((capFSize & ~ULL_CONST(0x3)) == ((1 && (capFSize & (ULL_CONST(1) << 47))) ? 0x0 : 0));  
    assert((capFMapType & ~ULL_CONST(0x3)) == ((1 && (capFMapType & (ULL_CONST(1) << 47))) ? 0x0 : 0));  
    assert((capFMappedAddress & ~ULL_CONST(0xffffffffffff)) == ((1 && (capFMappedAddress & (ULL_CONST(1) << 47))) ? 0xffff000000000000 : 0));  
    assert((capFVMRights & ~ULL_CONST(0x3)) == ((1 && (capFVMRights & (ULL_CONST(1) << 47))) ? 0x0 : 0));  
    assert((capFIsDevice & ~ULL_CONST(0x1)) == ((1 && (capFIsDevice & (ULL_CONST(1) << 47))) ? 0x0 : 0));

    cap.words[0] = 0
        | ((uint64_t)cap_frame_cap & ULL_CONST(0x1f)) << 59
        | (capFSize & ULL_CONST(0x3)) << 57
        | (capFMapType & ULL_CONST(0x3)) << 55
        | (capFMappedAddress & ULL_CONST(0xffffffffffff)) << 7
        | (capFVMRights & ULL_CONST(0x3)) << 5
        | (capFIsDevice & ULL_CONST(0x1)) << 4;
    cap.words[1] = 0
        | (capFMappedASID & ULL_CONST(0xffff)) << 48
        | (capFBasePtr & ULL_CONST(0xffffffffffff)) >> 0;

    return cap;
}

static inline uint64_t CONST
cap_frame_cap_get_capFMappedASID(cap_t cap) {
    uint64_t ret;
    /* fail if union does not have the expected tag */
    assert(((cap.words[0] >> 59) & 0x1f) == cap_frame_cap);

    ret = (cap.words[1] & ULL_CONST(0xffff000000000000)) >> 48;
    /* Possibly sign extend */
    if (__builtin_expect(!!(0 && (ret & (ULL_CONST(1) << (47)))), 0)) {
        ret |= 0x0;
    }
    return ret;
}

static inline cap_t CONST
cap_frame_cap_set_capFMappedASID(cap_t cap, uint64_t v64) {
    /* fail if union does not have the expected tag */
    assert(((cap.words[0] >> 59) & 0x1f) == cap_frame_cap);
    /* fail if user has passed bits that we will override */
    assert((((~ULL_CONST(0xffff000000000000) >> 48 ) | 0x0) & v64) == ((0 && (v64 & (ULL_CONST(1) << (47)))) ? 0x0 : 0));

    cap.words[1] &= ~ULL_CONST(0xffff000000000000);
    cap.words[1] |= (v64 << 48) & ULL_CONST(0xffff000000000000);
    return cap;
}

static inline void
cap_frame_cap_ptr_set_capFMappedASID(cap_t *cap_ptr, uint64_t v64) {
    /* fail if union does not have the expected tag */
    assert(((cap_ptr->words[0] >> 59) & 0x1f) == cap_frame_cap);

    /* fail if user has passed bits that we will override */
    assert((((~ULL_CONST(0xffff000000000000) >> 48) | 0x0) & v64) == ((0 && (v64 & (ULL_CONST(1) << (47)))) ? 0x0 : 0));

    cap_ptr->words[1] &= ~ULL_CONST(0xffff000000000000);
    cap_ptr->words[1] |= (v64 << 48) & ULL_CONST(0xffff000000000000);
}

static inline uint64_t CONST
cap_frame_cap_get_capFBasePtr(cap_t cap) {
    uint64_t ret;
    /* fail if union does not have the expected tag */
    assert(((cap.words[0] >> 59) & 0x1f) == cap_frame_cap);

    ret = (cap.words[1] & ULL_CONST(0xffffffffffff)) << 0;
    /* Possibly sign extend */
    if (__builtin_expect(!!(1 && (ret & (ULL_CONST(1) << (47)))), 1)) {
        ret |= 0xffff000000000000;
    }
    return ret;
}

static inline uint64_t CONST
cap_frame_cap_get_capFSize(cap_t cap) {
    uint64_t ret;
    /* fail if union does not have the expected tag */
    assert(((cap.words[0] >> 59) & 0x1f) == cap_frame_cap);

    ret = (cap.words[0] & ULL_CONST(0x600000000000000)) >> 57;
    /* Possibly sign extend */
    if (__builtin_expect(!!(0 && (ret & (ULL_CONST(1) << (47)))), 0)) {
        ret |= 0x0;
    }
    return ret;
}

static inline uint64_t CONST
cap_frame_cap_get_capFMapType(cap_t cap) {
    uint64_t ret;
    /* fail if union does not have the expected tag */
    assert(((cap.words[0] >> 59) & 0x1f) == cap_frame_cap);

    ret = (cap.words[0] & ULL_CONST(0x180000000000000)) >> 55;
    /* Possibly sign extend */
    if (__builtin_expect(!!(0 && (ret & (ULL_CONST(1) << (47)))), 0)) {
        ret |= 0x0;
    }
    return ret;
}

static inline cap_t CONST
cap_frame_cap_set_capFMapType(cap_t cap, uint64_t v64) {
    /* fail if union does not have the expected tag */
    assert(((cap.words[0] >> 59) & 0x1f) == cap_frame_cap);
    /* fail if user has passed bits that we will override */
    assert((((~ULL_CONST(0x180000000000000) >> 55 ) | 0x0) & v64) == ((0 && (v64 & (ULL_CONST(1) << (47)))) ? 0x0 : 0));

    cap.words[0] &= ~ULL_CONST(0x180000000000000);
    cap.words[0] |= (v64 << 55) & ULL_CONST(0x180000000000000);
    return cap;
}

static inline void
cap_frame_cap_ptr_set_capFMapType(cap_t *cap_ptr, uint64_t v64) {
    /* fail if union does not have the expected tag */
    assert(((cap_ptr->words[0] >> 59) & 0x1f) == cap_frame_cap);

    /* fail if user has passed bits that we will override */
    assert((((~ULL_CONST(0x180000000000000) >> 55) | 0x0) & v64) == ((0 && (v64 & (ULL_CONST(1) << (47)))) ? 0x0 : 0));

    cap_ptr->words[0] &= ~ULL_CONST(0x180000000000000);
    cap_ptr->words[0] |= (v64 << 55) & ULL_CONST(0x180000000000000);
}

static inline uint64_t CONST
cap_frame_cap_get_capFMappedAddress(cap_t cap) {
    uint64_t ret;
    /* fail if union does not have the expected tag */
    assert(((cap.words[0] >> 59) & 0x1f) == cap_frame_cap);

    ret = (cap.words[0] & ULL_CONST(0x7fffffffffff80)) >> 7;
    /* Possibly sign extend */
    if (__builtin_expect(!!(1 && (ret & (ULL_CONST(1) << (47)))), 1)) {
        ret |= 0xffff000000000000;
    }
    return ret;
}

static inline cap_t CONST
cap_frame_cap_set_capFMappedAddress(cap_t cap, uint64_t v64) {
    /* fail if union does not have the expected tag */
    assert(((cap.words[0] >> 59) & 0x1f) == cap_frame_cap);
    /* fail if user has passed bits that we will override */
    assert((((~ULL_CONST(0x7fffffffffff80) >> 7 ) | 0xffff000000000000) & v64) == ((1 && (v64 & (ULL_CONST(1) << (47)))) ? 0xffff000000000000 : 0));

    cap.words[0] &= ~ULL_CONST(0x7fffffffffff80);
    cap.words[0] |= (v64 << 7) & ULL_CONST(0x7fffffffffff80);
    return cap;
}

static inline void
cap_frame_cap_ptr_set_capFMappedAddress(cap_t *cap_ptr, uint64_t v64) {
    /* fail if union does not have the expected tag */
    assert(((cap_ptr->words[0] >> 59) & 0x1f) == cap_frame_cap);

    /* fail if user has passed bits that we will override */
    assert((((~ULL_CONST(0x7fffffffffff80) >> 7) | 0xffff000000000000) & v64) == ((1 && (v64 & (ULL_CONST(1) << (47)))) ? 0xffff000000000000 : 0));

    cap_ptr->words[0] &= ~ULL_CONST(0x7fffffffffff80);
    cap_ptr->words[0] |= (v64 << 7) & ULL_CONST(0x7fffffffffff80);
}

static inline uint64_t CONST
cap_frame_cap_get_capFVMRights(cap_t cap) {
    uint64_t ret;
    /* fail if union does not have the expected tag */
    assert(((cap.words[0] >> 59) & 0x1f) == cap_frame_cap);

    ret = (cap.words[0] & ULL_CONST(0x60)) >> 5;
    /* Possibly sign extend */
    if (__builtin_expect(!!(0 && (ret & (ULL_CONST(1) << (47)))), 0)) {
        ret |= 0x0;
    }
    return ret;
}

static inline cap_t CONST
cap_frame_cap_set_capFVMRights(cap_t cap, uint64_t v64) {
    /* fail if union does not have the expected tag */
    assert(((cap.words[0] >> 59) & 0x1f) == cap_frame_cap);
    /* fail if user has passed bits that we will override */
    assert((((~ULL_CONST(0x60) >> 5 ) | 0x0) & v64) == ((0 && (v64 & (ULL_CONST(1) << (47)))) ? 0x0 : 0));

    cap.words[0] &= ~ULL_CONST(0x60);
    cap.words[0] |= (v64 << 5) & ULL_CONST(0x60);
    return cap;
}

static inline uint64_t CONST
cap_frame_cap_get_capFIsDevice(cap_t cap) {
    uint64_t ret;
    /* fail if union does not have the expected tag */
    assert(((cap.words[0] >> 59) & 0x1f) == cap_frame_cap);

    ret = (cap.words[0] & ULL_CONST(0x10)) >> 4;
    /* Possibly sign extend */
    if (__builtin_expect(!!(0 && (ret & (ULL_CONST(1) << (47)))), 0)) {
        ret |= 0x0;
    }
    return ret;
}

static inline cap_t CONST
cap_page_table_cap_new(uint64_t capPTMappedASID, uint64_t capPTBasePtr, uint64_t capPTIsMapped, uint64_t capPTMappedAddress) {
    cap_t cap;

    /* fail if user has passed bits that we will override */  
    assert((capPTMappedASID & ~ULL_CONST(0xfff)) == ((1 && (capPTMappedASID & (ULL_CONST(1) << 47))) ? 0x0 : 0));  
    assert((capPTBasePtr & ~ULL_CONST(0xffffffffffff)) == ((1 && (capPTBasePtr & (ULL_CONST(1) << 47))) ? 0xffff000000000000 : 0));  
    assert(((uint64_t)cap_page_table_cap & ~ULL_CONST(0x1f)) == ((1 && ((uint64_t)cap_page_table_cap & (ULL_CONST(1) << 47))) ? 0x0 : 0));  
    assert((capPTIsMapped & ~ULL_CONST(0x1)) == ((1 && (capPTIsMapped & (ULL_CONST(1) << 47))) ? 0x0 : 0));  
    assert((capPTMappedAddress & ~ULL_CONST(0xfffffff00000)) == ((1 && (capPTMappedAddress & (ULL_CONST(1) << 47))) ? 0xffff000000000000 : 0));

    cap.words[0] = 0
        | ((uint64_t)cap_page_table_cap & ULL_CONST(0x1f)) << 59
        | (capPTIsMapped & ULL_CONST(0x1)) << 49
        | (capPTMappedAddress & ULL_CONST(0xfffffff00000)) << 1;
    cap.words[1] = 0
        | (capPTMappedASID & ULL_CONST(0xfff)) << 48
        | (capPTBasePtr & ULL_CONST(0xffffffffffff)) >> 0;

    return cap;
}

static inline uint64_t CONST
cap_page_table_cap_get_capPTMappedASID(cap_t cap) {
    uint64_t ret;
    /* fail if union does not have the expected tag */
    assert(((cap.words[0] >> 59) & 0x1f) == cap_page_table_cap);

    ret = (cap.words[1] & ULL_CONST(0xfff000000000000)) >> 48;
    /* Possibly sign extend */
    if (__builtin_expect(!!(0 && (ret & (ULL_CONST(1) << (47)))), 0)) {
        ret |= 0x0;
    }
    return ret;
}

static inline cap_t CONST
cap_page_table_cap_set_capPTMappedASID(cap_t cap, uint64_t v64) {
    /* fail if union does not have the expected tag */
    assert(((cap.words[0] >> 59) & 0x1f) == cap_page_table_cap);
    /* fail if user has passed bits that we will override */
    assert((((~ULL_CONST(0xfff000000000000) >> 48 ) | 0x0) & v64) == ((0 && (v64 & (ULL_CONST(1) << (47)))) ? 0x0 : 0));

    cap.words[1] &= ~ULL_CONST(0xfff000000000000);
    cap.words[1] |= (v64 << 48) & ULL_CONST(0xfff000000000000);
    return cap;
}

static inline uint64_t CONST
cap_page_table_cap_get_capPTBasePtr(cap_t cap) {
    uint64_t ret;
    /* fail if union does not have the expected tag */
    assert(((cap.words[0] >> 59) & 0x1f) == cap_page_table_cap);

    ret = (cap.words[1] & ULL_CONST(0xffffffffffff)) << 0;
    /* Possibly sign extend */
    if (__builtin_expect(!!(1 && (ret & (ULL_CONST(1) << (47)))), 1)) {
        ret |= 0xffff000000000000;
    }
    return ret;
}

static inline uint64_t CONST
cap_page_table_cap_get_capPTIsMapped(cap_t cap) {
    uint64_t ret;
    /* fail if union does not have the expected tag */
    assert(((cap.words[0] >> 59) & 0x1f) == cap_page_table_cap);

    ret = (cap.words[0] & ULL_CONST(0x2000000000000)) >> 49;
    /* Possibly sign extend */
    if (__builtin_expect(!!(0 && (ret & (ULL_CONST(1) << (47)))), 0)) {
        ret |= 0x0;
    }
    return ret;
}

static inline cap_t CONST
cap_page_table_cap_set_capPTIsMapped(cap_t cap, uint64_t v64) {
    /* fail if union does not have the expected tag */
    assert(((cap.words[0] >> 59) & 0x1f) == cap_page_table_cap);
    /* fail if user has passed bits that we will override */
    assert((((~ULL_CONST(0x2000000000000) >> 49 ) | 0x0) & v64) == ((0 && (v64 & (ULL_CONST(1) << (47)))) ? 0x0 : 0));

    cap.words[0] &= ~ULL_CONST(0x2000000000000);
    cap.words[0] |= (v64 << 49) & ULL_CONST(0x2000000000000);
    return cap;
}

static inline void
cap_page_table_cap_ptr_set_capPTIsMapped(cap_t *cap_ptr, uint64_t v64) {
    /* fail if union does not have the expected tag */
    assert(((cap_ptr->words[0] >> 59) & 0x1f) == cap_page_table_cap);

    /* fail if user has passed bits that we will override */
    assert((((~ULL_CONST(0x2000000000000) >> 49) | 0x0) & v64) == ((0 && (v64 & (ULL_CONST(1) << (47)))) ? 0x0 : 0));

    cap_ptr->words[0] &= ~ULL_CONST(0x2000000000000);
    cap_ptr->words[0] |= (v64 << 49) & ULL_CONST(0x2000000000000);
}

static inline uint64_t CONST
cap_page_table_cap_get_capPTMappedAddress(cap_t cap) {
    uint64_t ret;
    /* fail if union does not have the expected tag */
    assert(((cap.words[0] >> 59) & 0x1f) == cap_page_table_cap);

    ret = (cap.words[0] & ULL_CONST(0x1ffffffe00000)) >> 1;
    /* Possibly sign extend */
    if (__builtin_expect(!!(1 && (ret & (ULL_CONST(1) << (47)))), 1)) {
        ret |= 0xffff000000000000;
    }
    return ret;
}

static inline cap_t CONST
cap_page_table_cap_set_capPTMappedAddress(cap_t cap, uint64_t v64) {
    /* fail if union does not have the expected tag */
    assert(((cap.words[0] >> 59) & 0x1f) == cap_page_table_cap);
    /* fail if user has passed bits that we will override */
    assert((((~ULL_CONST(0x1ffffffe00000) >> 1 ) | 0xffff000000000000) & v64) == ((1 && (v64 & (ULL_CONST(1) << (47)))) ? 0xffff000000000000 : 0));

    cap.words[0] &= ~ULL_CONST(0x1ffffffe00000);
    cap.words[0] |= (v64 << 1) & ULL_CONST(0x1ffffffe00000);
    return cap;
}

static inline cap_t CONST
cap_page_directory_cap_new(uint64_t capPDMappedASID, uint64_t capPDBasePtr, uint64_t capPDIsMapped, uint64_t capPDMappedAddress) {
    cap_t cap;

    /* fail if user has passed bits that we will override */  
    assert((capPDMappedASID & ~ULL_CONST(0xfff)) == ((1 && (capPDMappedASID & (ULL_CONST(1) << 47))) ? 0x0 : 0));  
    assert((capPDBasePtr & ~ULL_CONST(0xffffffffffff)) == ((1 && (capPDBasePtr & (ULL_CONST(1) << 47))) ? 0xffff000000000000 : 0));  
    assert(((uint64_t)cap_page_directory_cap & ~ULL_CONST(0x1f)) == ((1 && ((uint64_t)cap_page_directory_cap & (ULL_CONST(1) << 47))) ? 0x0 : 0));  
    assert((capPDIsMapped & ~ULL_CONST(0x1)) == ((1 && (capPDIsMapped & (ULL_CONST(1) << 47))) ? 0x0 : 0));  
    assert((capPDMappedAddress & ~ULL_CONST(0xffffe0000000)) == ((1 && (capPDMappedAddress & (ULL_CONST(1) << 47))) ? 0xffff000000000000 : 0));

    cap.words[0] = 0
        | ((uint64_t)cap_page_directory_cap & ULL_CONST(0x1f)) << 59
        | (capPDIsMapped & ULL_CONST(0x1)) << 49
        | (capPDMappedAddress & ULL_CONST(0xffffe0000000)) << 1;
    cap.words[1] = 0
        | (capPDMappedASID & ULL_CONST(0xfff)) << 48
        | (capPDBasePtr & ULL_CONST(0xffffffffffff)) >> 0;

    return cap;
}

static inline uint64_t CONST
cap_page_directory_cap_get_capPDMappedASID(cap_t cap) {
    uint64_t ret;
    /* fail if union does not have the expected tag */
    assert(((cap.words[0] >> 59) & 0x1f) == cap_page_directory_cap);

    ret = (cap.words[1] & ULL_CONST(0xfff000000000000)) >> 48;
    /* Possibly sign extend */
    if (__builtin_expect(!!(0 && (ret & (ULL_CONST(1) << (47)))), 0)) {
        ret |= 0x0;
    }
    return ret;
}

static inline cap_t CONST
cap_page_directory_cap_set_capPDMappedASID(cap_t cap, uint64_t v64) {
    /* fail if union does not have the expected tag */
    assert(((cap.words[0] >> 59) & 0x1f) == cap_page_directory_cap);
    /* fail if user has passed bits that we will override */
    assert((((~ULL_CONST(0xfff000000000000) >> 48 ) | 0x0) & v64) == ((0 && (v64 & (ULL_CONST(1) << (47)))) ? 0x0 : 0));

    cap.words[1] &= ~ULL_CONST(0xfff000000000000);
    cap.words[1] |= (v64 << 48) & ULL_CONST(0xfff000000000000);
    return cap;
}

static inline uint64_t CONST
cap_page_directory_cap_get_capPDBasePtr(cap_t cap) {
    uint64_t ret;
    /* fail if union does not have the expected tag */
    assert(((cap.words[0] >> 59) & 0x1f) == cap_page_directory_cap);

    ret = (cap.words[1] & ULL_CONST(0xffffffffffff)) << 0;
    /* Possibly sign extend */
    if (__builtin_expect(!!(1 && (ret & (ULL_CONST(1) << (47)))), 1)) {
        ret |= 0xffff000000000000;
    }
    return ret;
}

static inline uint64_t CONST
cap_page_directory_cap_get_capPDIsMapped(cap_t cap) {
    uint64_t ret;
    /* fail if union does not have the expected tag */
    assert(((cap.words[0] >> 59) & 0x1f) == cap_page_directory_cap);

    ret = (cap.words[0] & ULL_CONST(0x2000000000000)) >> 49;
    /* Possibly sign extend */
    if (__builtin_expect(!!(0 && (ret & (ULL_CONST(1) << (47)))), 0)) {
        ret |= 0x0;
    }
    return ret;
}

static inline cap_t CONST
cap_page_directory_cap_set_capPDIsMapped(cap_t cap, uint64_t v64) {
    /* fail if union does not have the expected tag */
    assert(((cap.words[0] >> 59) & 0x1f) == cap_page_directory_cap);
    /* fail if user has passed bits that we will override */
    assert((((~ULL_CONST(0x2000000000000) >> 49 ) | 0x0) & v64) == ((0 && (v64 & (ULL_CONST(1) << (47)))) ? 0x0 : 0));

    cap.words[0] &= ~ULL_CONST(0x2000000000000);
    cap.words[0] |= (v64 << 49) & ULL_CONST(0x2000000000000);
    return cap;
}

static inline void
cap_page_directory_cap_ptr_set_capPDIsMapped(cap_t *cap_ptr, uint64_t v64) {
    /* fail if union does not have the expected tag */
    assert(((cap_ptr->words[0] >> 59) & 0x1f) == cap_page_directory_cap);

    /* fail if user has passed bits that we will override */
    assert((((~ULL_CONST(0x2000000000000) >> 49) | 0x0) & v64) == ((0 && (v64 & (ULL_CONST(1) << (47)))) ? 0x0 : 0));

    cap_ptr->words[0] &= ~ULL_CONST(0x2000000000000);
    cap_ptr->words[0] |= (v64 << 49) & ULL_CONST(0x2000000000000);
}

static inline uint64_t CONST
cap_page_directory_cap_get_capPDMappedAddress(cap_t cap) {
    uint64_t ret;
    /* fail if union does not have the expected tag */
    assert(((cap.words[0] >> 59) & 0x1f) == cap_page_directory_cap);

    ret = (cap.words[0] & ULL_CONST(0x1ffffc0000000)) >> 1;
    /* Possibly sign extend */
    if (__builtin_expect(!!(1 && (ret & (ULL_CONST(1) << (47)))), 1)) {
        ret |= 0xffff000000000000;
    }
    return ret;
}

static inline cap_t CONST
cap_page_directory_cap_set_capPDMappedAddress(cap_t cap, uint64_t v64) {
    /* fail if union does not have the expected tag */
    assert(((cap.words[0] >> 59) & 0x1f) == cap_page_directory_cap);
    /* fail if user has passed bits that we will override */
    assert((((~ULL_CONST(0x1ffffc0000000) >> 1 ) | 0xffff000000000000) & v64) == ((1 && (v64 & (ULL_CONST(1) << (47)))) ? 0xffff000000000000 : 0));

    cap.words[0] &= ~ULL_CONST(0x1ffffc0000000);
    cap.words[0] |= (v64 << 1) & ULL_CONST(0x1ffffc0000000);
    return cap;
}

static inline cap_t CONST
cap_pdpt_cap_new(uint64_t capPDPTMappedASID, uint64_t capPDPTBasePtr, uint64_t capPDPTIsMapped, uint64_t capPDPTMappedAddress) {
    cap_t cap;

    /* fail if user has passed bits that we will override */  
    assert((capPDPTMappedASID & ~ULL_CONST(0xfff)) == ((1 && (capPDPTMappedASID & (ULL_CONST(1) << 47))) ? 0x0 : 0));  
    assert((capPDPTBasePtr & ~ULL_CONST(0xffffffffffff)) == ((1 && (capPDPTBasePtr & (ULL_CONST(1) << 47))) ? 0xffff000000000000 : 0));  
    assert(((uint64_t)cap_pdpt_cap & ~ULL_CONST(0x1f)) == ((1 && ((uint64_t)cap_pdpt_cap & (ULL_CONST(1) << 47))) ? 0x0 : 0));  
    assert((capPDPTIsMapped & ~ULL_CONST(0x1)) == ((1 && (capPDPTIsMapped & (ULL_CONST(1) << 47))) ? 0x0 : 0));  
    assert((capPDPTMappedAddress & ~ULL_CONST(0xffc000000000)) == ((1 && (capPDPTMappedAddress & (ULL_CONST(1) << 47))) ? 0xffff000000000000 : 0));

    cap.words[0] = 0
        | ((uint64_t)cap_pdpt_cap & ULL_CONST(0x1f)) << 59
        | (capPDPTIsMapped & ULL_CONST(0x1)) << 58
        | (capPDPTMappedAddress & ULL_CONST(0xffc000000000)) << 10;
    cap.words[1] = 0
        | (capPDPTMappedASID & ULL_CONST(0xfff)) << 48
        | (capPDPTBasePtr & ULL_CONST(0xffffffffffff)) >> 0;

    return cap;
}

static inline uint64_t CONST
cap_pdpt_cap_get_capPDPTMappedASID(cap_t cap) {
    uint64_t ret;
    /* fail if union does not have the expected tag */
    assert(((cap.words[0] >> 59) & 0x1f) == cap_pdpt_cap);

    ret = (cap.words[1] & ULL_CONST(0xfff000000000000)) >> 48;
    /* Possibly sign extend */
    if (__builtin_expect(!!(0 && (ret & (ULL_CONST(1) << (47)))), 0)) {
        ret |= 0x0;
    }
    return ret;
}

static inline cap_t CONST
cap_pdpt_cap_set_capPDPTMappedASID(cap_t cap, uint64_t v64) {
    /* fail if union does not have the expected tag */
    assert(((cap.words[0] >> 59) & 0x1f) == cap_pdpt_cap);
    /* fail if user has passed bits that we will override */
    assert((((~ULL_CONST(0xfff000000000000) >> 48 ) | 0x0) & v64) == ((0 && (v64 & (ULL_CONST(1) << (47)))) ? 0x0 : 0));

    cap.words[1] &= ~ULL_CONST(0xfff000000000000);
    cap.words[1] |= (v64 << 48) & ULL_CONST(0xfff000000000000);
    return cap;
}

static inline uint64_t CONST
cap_pdpt_cap_get_capPDPTBasePtr(cap_t cap) {
    uint64_t ret;
    /* fail if union does not have the expected tag */
    assert(((cap.words[0] >> 59) & 0x1f) == cap_pdpt_cap);

    ret = (cap.words[1] & ULL_CONST(0xffffffffffff)) << 0;
    /* Possibly sign extend */
    if (__builtin_expect(!!(1 && (ret & (ULL_CONST(1) << (47)))), 1)) {
        ret |= 0xffff000000000000;
    }
    return ret;
}

static inline uint64_t CONST
cap_pdpt_cap_get_capPDPTIsMapped(cap_t cap) {
    uint64_t ret;
    /* fail if union does not have the expected tag */
    assert(((cap.words[0] >> 59) & 0x1f) == cap_pdpt_cap);

    ret = (cap.words[0] & ULL_CONST(0x400000000000000)) >> 58;
    /* Possibly sign extend */
    if (__builtin_expect(!!(0 && (ret & (ULL_CONST(1) << (47)))), 0)) {
        ret |= 0x0;
    }
    return ret;
}

static inline cap_t CONST
cap_pdpt_cap_set_capPDPTIsMapped(cap_t cap, uint64_t v64) {
    /* fail if union does not have the expected tag */
    assert(((cap.words[0] >> 59) & 0x1f) == cap_pdpt_cap);
    /* fail if user has passed bits that we will override */
    assert((((~ULL_CONST(0x400000000000000) >> 58 ) | 0x0) & v64) == ((0 && (v64 & (ULL_CONST(1) << (47)))) ? 0x0 : 0));

    cap.words[0] &= ~ULL_CONST(0x400000000000000);
    cap.words[0] |= (v64 << 58) & ULL_CONST(0x400000000000000);
    return cap;
}

static inline void
cap_pdpt_cap_ptr_set_capPDPTIsMapped(cap_t *cap_ptr, uint64_t v64) {
    /* fail if union does not have the expected tag */
    assert(((cap_ptr->words[0] >> 59) & 0x1f) == cap_pdpt_cap);

    /* fail if user has passed bits that we will override */
    assert((((~ULL_CONST(0x400000000000000) >> 58) | 0x0) & v64) == ((0 && (v64 & (ULL_CONST(1) << (47)))) ? 0x0 : 0));

    cap_ptr->words[0] &= ~ULL_CONST(0x400000000000000);
    cap_ptr->words[0] |= (v64 << 58) & ULL_CONST(0x400000000000000);
}

static inline uint64_t CONST
cap_pdpt_cap_get_capPDPTMappedAddress(cap_t cap) {
    uint64_t ret;
    /* fail if union does not have the expected tag */
    assert(((cap.words[0] >> 59) & 0x1f) == cap_pdpt_cap);

    ret = (cap.words[0] & ULL_CONST(0x3ff000000000000)) >> 10;
    /* Possibly sign extend */
    if (__builtin_expect(!!(1 && (ret & (ULL_CONST(1) << (47)))), 1)) {
        ret |= 0xffff000000000000;
    }
    return ret;
}

static inline cap_t CONST
cap_pdpt_cap_set_capPDPTMappedAddress(cap_t cap, uint64_t v64) {
    /* fail if union does not have the expected tag */
    assert(((cap.words[0] >> 59) & 0x1f) == cap_pdpt_cap);
    /* fail if user has passed bits that we will override */
    assert((((~ULL_CONST(0x3ff000000000000) >> 10 ) | 0xffff000000000000) & v64) == ((1 && (v64 & (ULL_CONST(1) << (47)))) ? 0xffff000000000000 : 0));

    cap.words[0] &= ~ULL_CONST(0x3ff000000000000);
    cap.words[0] |= (v64 << 10) & ULL_CONST(0x3ff000000000000);
    return cap;
}

static inline cap_t CONST
cap_pml4_cap_new(uint64_t capPML4MappedASID, uint64_t capPML4BasePtr, uint64_t capPML4IsMapped) {
    cap_t cap;

    /* fail if user has passed bits that we will override */  
    assert((capPML4MappedASID & ~ULL_CONST(0xfff)) == ((1 && (capPML4MappedASID & (ULL_CONST(1) << 47))) ? 0x0 : 0));  
    assert(((uint64_t)cap_pml4_cap & ~ULL_CONST(0x1f)) == ((1 && ((uint64_t)cap_pml4_cap & (ULL_CONST(1) << 47))) ? 0x0 : 0));  
    assert((capPML4IsMapped & ~ULL_CONST(0x1)) == ((1 && (capPML4IsMapped & (ULL_CONST(1) << 47))) ? 0x0 : 0));

    cap.words[0] = 0
        | (capPML4MappedASID & ULL_CONST(0xfff)) << 0
        | ((uint64_t)cap_pml4_cap & ULL_CONST(0x1f)) << 59
        | (capPML4IsMapped & ULL_CONST(0x1)) << 58;
    cap.words[1] = 0
        | capPML4BasePtr << 0;

    return cap;
}

static inline uint64_t CONST
cap_pml4_cap_get_capPML4BasePtr(cap_t cap) {
    uint64_t ret;
    /* fail if union does not have the expected tag */
    assert(((cap.words[0] >> 59) & 0x1f) == cap_pml4_cap);

    ret = (cap.words[1] & ULL_CONST(0xffffffffffffffff)) >> 0;
    /* Possibly sign extend */
    if (__builtin_expect(!!(0 && (ret & (ULL_CONST(1) << (47)))), 0)) {
        ret |= 0x0;
    }
    return ret;
}

static inline uint64_t CONST
cap_pml4_cap_get_capPML4IsMapped(cap_t cap) {
    uint64_t ret;
    /* fail if union does not have the expected tag */
    assert(((cap.words[0] >> 59) & 0x1f) == cap_pml4_cap);

    ret = (cap.words[0] & ULL_CONST(0x400000000000000)) >> 58;
    /* Possibly sign extend */
    if (__builtin_expect(!!(0 && (ret & (ULL_CONST(1) << (47)))), 0)) {
        ret |= 0x0;
    }
    return ret;
}

static inline void
cap_pml4_cap_ptr_set_capPML4IsMapped(cap_t *cap_ptr, uint64_t v64) {
    /* fail if union does not have the expected tag */
    assert(((cap_ptr->words[0] >> 59) & 0x1f) == cap_pml4_cap);

    /* fail if user has passed bits that we will override */
    assert((((~ULL_CONST(0x400000000000000) >> 58) | 0x0) & v64) == ((0 && (v64 & (ULL_CONST(1) << (47)))) ? 0x0 : 0));

    cap_ptr->words[0] &= ~ULL_CONST(0x400000000000000);
    cap_ptr->words[0] |= (v64 << 58) & ULL_CONST(0x400000000000000);
}

static inline uint64_t CONST
cap_pml4_cap_get_capPML4MappedASID(cap_t cap) {
    uint64_t ret;
    /* fail if union does not have the expected tag */
    assert(((cap.words[0] >> 59) & 0x1f) == cap_pml4_cap);

    ret = (cap.words[0] & ULL_CONST(0xfff)) >> 0;
    /* Possibly sign extend */
    if (__builtin_expect(!!(0 && (ret & (ULL_CONST(1) << (47)))), 0)) {
        ret |= 0x0;
    }
    return ret;
}

static inline void
cap_pml4_cap_ptr_set_capPML4MappedASID(cap_t *cap_ptr, uint64_t v64) {
    /* fail if union does not have the expected tag */
    assert(((cap_ptr->words[0] >> 59) & 0x1f) == cap_pml4_cap);

    /* fail if user has passed bits that we will override */
    assert((((~ULL_CONST(0xfff) >> 0) | 0x0) & v64) == ((0 && (v64 & (ULL_CONST(1) << (47)))) ? 0x0 : 0));

    cap_ptr->words[0] &= ~ULL_CONST(0xfff);
    cap_ptr->words[0] |= (v64 << 0) & ULL_CONST(0xfff);
}

static inline cap_t CONST
cap_asid_control_cap_new(void) {
    cap_t cap;

    /* fail if user has passed bits that we will override */  
    assert(((uint64_t)cap_asid_control_cap & ~ULL_CONST(0x1f)) == ((1 && ((uint64_t)cap_asid_control_cap & (ULL_CONST(1) << 47))) ? 0x0 : 0));

    cap.words[0] = 0
        | ((uint64_t)cap_asid_control_cap & ULL_CONST(0x1f)) << 59;
    cap.words[1] = 0;

    return cap;
}

static inline cap_t CONST
cap_asid_pool_cap_new(uint64_t capASIDBase, uint64_t capASIDPool) {
    cap_t cap;

    /* fail if user has passed bits that we will override */  
    assert(((uint64_t)cap_asid_pool_cap & ~ULL_CONST(0x1f)) == ((1 && ((uint64_t)cap_asid_pool_cap & (ULL_CONST(1) << 47))) ? 0x0 : 0));  
    assert((capASIDBase & ~ULL_CONST(0xfff)) == ((1 && (capASIDBase & (ULL_CONST(1) << 47))) ? 0x0 : 0));  
    assert((capASIDPool & ~ULL_CONST(0xfffffffff800)) == ((1 && (capASIDPool & (ULL_CONST(1) << 47))) ? 0xffff000000000000 : 0));

    cap.words[0] = 0
        | ((uint64_t)cap_asid_pool_cap & ULL_CONST(0x1f)) << 59
        | (capASIDBase & ULL_CONST(0xfff)) << 47
        | (capASIDPool & ULL_CONST(0xfffffffff800)) >> 11;
    cap.words[1] = 0;

    return cap;
}

static inline uint64_t CONST
cap_asid_pool_cap_get_capASIDBase(cap_t cap) {
    uint64_t ret;
    /* fail if union does not have the expected tag */
    assert(((cap.words[0] >> 59) & 0x1f) == cap_asid_pool_cap);

    ret = (cap.words[0] & ULL_CONST(0x7ff800000000000)) >> 47;
    /* Possibly sign extend */
    if (__builtin_expect(!!(0 && (ret & (ULL_CONST(1) << (47)))), 0)) {
        ret |= 0x0;
    }
    return ret;
}

static inline uint64_t CONST
cap_asid_pool_cap_get_capASIDPool(cap_t cap) {
    uint64_t ret;
    /* fail if union does not have the expected tag */
    assert(((cap.words[0] >> 59) & 0x1f) == cap_asid_pool_cap);

    ret = (cap.words[0] & ULL_CONST(0x1fffffffff)) << 11;
    /* Possibly sign extend */
    if (__builtin_expect(!!(1 && (ret & (ULL_CONST(1) << (47)))), 1)) {
        ret |= 0xffff000000000000;
    }
    return ret;
}

static inline cap_t CONST
cap_io_port_cap_new(uint64_t capIOPortFirstPort, uint64_t capIOPortLastPort) {
    cap_t cap;

    /* fail if user has passed bits that we will override */  
    assert(((uint64_t)cap_io_port_cap & ~ULL_CONST(0x1f)) == ((1 && ((uint64_t)cap_io_port_cap & (ULL_CONST(1) << 47))) ? 0x0 : 0));  
    assert((capIOPortFirstPort & ~ULL_CONST(0xffff)) == ((1 && (capIOPortFirstPort & (ULL_CONST(1) << 47))) ? 0x0 : 0));  
    assert((capIOPortLastPort & ~ULL_CONST(0xffff)) == ((1 && (capIOPortLastPort & (ULL_CONST(1) << 47))) ? 0x0 : 0));

    cap.words[0] = 0
        | ((uint64_t)cap_io_port_cap & ULL_CONST(0x1f)) << 59
        | (capIOPortFirstPort & ULL_CONST(0xffff)) << 40
        | (capIOPortLastPort & ULL_CONST(0xffff)) << 24;
    cap.words[1] = 0;

    return cap;
}

static inline uint64_t CONST
cap_io_port_cap_get_capIOPortFirstPort(cap_t cap) {
    uint64_t ret;
    /* fail if union does not have the expected tag */
    assert(((cap.words[0] >> 59) & 0x1f) == cap_io_port_cap);

    ret = (cap.words[0] & ULL_CONST(0xffff0000000000)) >> 40;
    /* Possibly sign extend */
    if (__builtin_expect(!!(0 && (ret & (ULL_CONST(1) << (47)))), 0)) {
        ret |= 0x0;
    }
    return ret;
}

static inline uint64_t CONST
cap_io_port_cap_get_capIOPortLastPort(cap_t cap) {
    uint64_t ret;
    /* fail if union does not have the expected tag */
    assert(((cap.words[0] >> 59) & 0x1f) == cap_io_port_cap);

    ret = (cap.words[0] & ULL_CONST(0xffff000000)) >> 24;
    /* Possibly sign extend */
    if (__builtin_expect(!!(0 && (ret & (ULL_CONST(1) << (47)))), 0)) {
        ret |= 0x0;
    }
    return ret;
}

static inline cap_t CONST
cap_io_port_control_cap_new(void) {
    cap_t cap;

    /* fail if user has passed bits that we will override */  
    assert(((uint64_t)cap_io_port_control_cap & ~ULL_CONST(0x1f)) == ((1 && ((uint64_t)cap_io_port_control_cap & (ULL_CONST(1) << 47))) ? 0x0 : 0));

    cap.words[0] = 0
        | ((uint64_t)cap_io_port_control_cap & ULL_CONST(0x1f)) << 59;
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

static inline gdt_entry_t CONST
gdt_entry_gdt_null_new(void) {
    gdt_entry_t gdt_entry;

    /* fail if user has passed bits that we will override */  
    assert(((uint64_t)gdt_entry_gdt_null & ~ULL_CONST(0xf)) == ((1 && ((uint64_t)gdt_entry_gdt_null & (ULL_CONST(1) << 47))) ? 0x0 : 0));

    gdt_entry.words[0] = 0
        | ((uint64_t)gdt_entry_gdt_null & ULL_CONST(0xf)) << 40;

    return gdt_entry;
}

static inline gdt_entry_t CONST
gdt_entry_gdt_data_new(uint64_t base_high, uint64_t granularity, uint64_t operation_size, uint64_t avl, uint64_t seg_limit_high, uint64_t present, uint64_t dpl, uint64_t always_1, uint64_t base_mid, uint64_t base_low, uint64_t seg_limit_low) {
    gdt_entry_t gdt_entry;

    /* fail if user has passed bits that we will override */  
    assert((base_high & ~ULL_CONST(0xff)) == ((1 && (base_high & (ULL_CONST(1) << 47))) ? 0x0 : 0));  
    assert((granularity & ~ULL_CONST(0x1)) == ((1 && (granularity & (ULL_CONST(1) << 47))) ? 0x0 : 0));  
    assert((operation_size & ~ULL_CONST(0x1)) == ((1 && (operation_size & (ULL_CONST(1) << 47))) ? 0x0 : 0));  
    assert((avl & ~ULL_CONST(0x1)) == ((1 && (avl & (ULL_CONST(1) << 47))) ? 0x0 : 0));  
    assert((seg_limit_high & ~ULL_CONST(0xf)) == ((1 && (seg_limit_high & (ULL_CONST(1) << 47))) ? 0x0 : 0));  
    assert((present & ~ULL_CONST(0x1)) == ((1 && (present & (ULL_CONST(1) << 47))) ? 0x0 : 0));  
    assert((dpl & ~ULL_CONST(0x3)) == ((1 && (dpl & (ULL_CONST(1) << 47))) ? 0x0 : 0));  
    assert((always_1 & ~ULL_CONST(0x1)) == ((1 && (always_1 & (ULL_CONST(1) << 47))) ? 0x0 : 0));  
    assert(((uint64_t)gdt_entry_gdt_data & ~ULL_CONST(0xf)) == ((1 && ((uint64_t)gdt_entry_gdt_data & (ULL_CONST(1) << 47))) ? 0x0 : 0));  
    assert((base_mid & ~ULL_CONST(0xff)) == ((1 && (base_mid & (ULL_CONST(1) << 47))) ? 0x0 : 0));  
    assert((base_low & ~ULL_CONST(0xffff)) == ((1 && (base_low & (ULL_CONST(1) << 47))) ? 0x0 : 0));  
    assert((seg_limit_low & ~ULL_CONST(0xffff)) == ((1 && (seg_limit_low & (ULL_CONST(1) << 47))) ? 0x0 : 0));

    gdt_entry.words[0] = 0
        | (base_high & ULL_CONST(0xff)) << 56
        | (granularity & ULL_CONST(0x1)) << 55
        | (operation_size & ULL_CONST(0x1)) << 54
        | (avl & ULL_CONST(0x1)) << 52
        | (seg_limit_high & ULL_CONST(0xf)) << 48
        | (present & ULL_CONST(0x1)) << 47
        | (dpl & ULL_CONST(0x3)) << 45
        | (always_1 & ULL_CONST(0x1)) << 44
        | ((uint64_t)gdt_entry_gdt_data & ULL_CONST(0xf)) << 40
        | (base_mid & ULL_CONST(0xff)) << 32
        | (base_low & ULL_CONST(0xffff)) << 16
        | (seg_limit_low & ULL_CONST(0xffff)) << 0;

    return gdt_entry;
}

static inline gdt_entry_t CONST
gdt_entry_gdt_code_new(uint64_t base_high, uint64_t granularity, uint64_t operation_size, uint64_t long_mode, uint64_t avl, uint64_t seg_limit_high, uint64_t present, uint64_t dpl, uint64_t always_1, uint64_t base_mid, uint64_t base_low, uint64_t seg_limit_low) {
    gdt_entry_t gdt_entry;

    /* fail if user has passed bits that we will override */  
    assert((base_high & ~ULL_CONST(0xff)) == ((1 && (base_high & (ULL_CONST(1) << 47))) ? 0x0 : 0));  
    assert((granularity & ~ULL_CONST(0x1)) == ((1 && (granularity & (ULL_CONST(1) << 47))) ? 0x0 : 0));  
    assert((operation_size & ~ULL_CONST(0x1)) == ((1 && (operation_size & (ULL_CONST(1) << 47))) ? 0x0 : 0));  
    assert((long_mode & ~ULL_CONST(0x1)) == ((1 && (long_mode & (ULL_CONST(1) << 47))) ? 0x0 : 0));  
    assert((avl & ~ULL_CONST(0x1)) == ((1 && (avl & (ULL_CONST(1) << 47))) ? 0x0 : 0));  
    assert((seg_limit_high & ~ULL_CONST(0xf)) == ((1 && (seg_limit_high & (ULL_CONST(1) << 47))) ? 0x0 : 0));  
    assert((present & ~ULL_CONST(0x1)) == ((1 && (present & (ULL_CONST(1) << 47))) ? 0x0 : 0));  
    assert((dpl & ~ULL_CONST(0x3)) == ((1 && (dpl & (ULL_CONST(1) << 47))) ? 0x0 : 0));  
    assert((always_1 & ~ULL_CONST(0x1)) == ((1 && (always_1 & (ULL_CONST(1) << 47))) ? 0x0 : 0));  
    assert(((uint64_t)gdt_entry_gdt_code & ~ULL_CONST(0xf)) == ((1 && ((uint64_t)gdt_entry_gdt_code & (ULL_CONST(1) << 47))) ? 0x0 : 0));  
    assert((base_mid & ~ULL_CONST(0xff)) == ((1 && (base_mid & (ULL_CONST(1) << 47))) ? 0x0 : 0));  
    assert((base_low & ~ULL_CONST(0xffff)) == ((1 && (base_low & (ULL_CONST(1) << 47))) ? 0x0 : 0));  
    assert((seg_limit_low & ~ULL_CONST(0xffff)) == ((1 && (seg_limit_low & (ULL_CONST(1) << 47))) ? 0x0 : 0));

    gdt_entry.words[0] = 0
        | (base_high & ULL_CONST(0xff)) << 56
        | (granularity & ULL_CONST(0x1)) << 55
        | (operation_size & ULL_CONST(0x1)) << 54
        | (long_mode & ULL_CONST(0x1)) << 53
        | (avl & ULL_CONST(0x1)) << 52
        | (seg_limit_high & ULL_CONST(0xf)) << 48
        | (present & ULL_CONST(0x1)) << 47
        | (dpl & ULL_CONST(0x3)) << 45
        | (always_1 & ULL_CONST(0x1)) << 44
        | ((uint64_t)gdt_entry_gdt_code & ULL_CONST(0xf)) << 40
        | (base_mid & ULL_CONST(0xff)) << 32
        | (base_low & ULL_CONST(0xffff)) << 16
        | (seg_limit_low & ULL_CONST(0xffff)) << 0;

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

static inline idt_entry_t CONST
idt_entry_interrupt_gate_new(uint64_t offset_63_32, uint64_t offset_31_16, uint64_t present, uint64_t dpl, uint64_t ist, uint64_t seg_selector, uint64_t offset_15_0) {
    idt_entry_t idt_entry;

    /* fail if user has passed bits that we will override */  
    assert((offset_63_32 & ~ULL_CONST(0xffffffff)) == ((1 && (offset_63_32 & (ULL_CONST(1) << 47))) ? 0x0 : 0));  
    assert((offset_31_16 & ~ULL_CONST(0xffff)) == ((1 && (offset_31_16 & (ULL_CONST(1) << 47))) ? 0x0 : 0));  
    assert((present & ~ULL_CONST(0x1)) == ((1 && (present & (ULL_CONST(1) << 47))) ? 0x0 : 0));  
    assert((dpl & ~ULL_CONST(0x3)) == ((1 && (dpl & (ULL_CONST(1) << 47))) ? 0x0 : 0));  
    assert(((uint64_t)idt_entry_interrupt_gate & ~ULL_CONST(0xf)) == ((1 && ((uint64_t)idt_entry_interrupt_gate & (ULL_CONST(1) << 47))) ? 0x0 : 0));  
    assert((ist & ~ULL_CONST(0x7)) == ((1 && (ist & (ULL_CONST(1) << 47))) ? 0x0 : 0));  
    assert((seg_selector & ~ULL_CONST(0xffff)) == ((1 && (seg_selector & (ULL_CONST(1) << 47))) ? 0x0 : 0));  
    assert((offset_15_0 & ~ULL_CONST(0xffff)) == ((1 && (offset_15_0 & (ULL_CONST(1) << 47))) ? 0x0 : 0));

    idt_entry.words[0] = 0
        | (offset_31_16 & ULL_CONST(0xffff)) << 48
        | (present & ULL_CONST(0x1)) << 47
        | (dpl & ULL_CONST(0x3)) << 45
        | ((uint64_t)idt_entry_interrupt_gate & ULL_CONST(0xf)) << 40
        | (ist & ULL_CONST(0x7)) << 32
        | (seg_selector & ULL_CONST(0xffff)) << 16
        | (offset_15_0 & ULL_CONST(0xffff)) << 0;
    idt_entry.words[1] = 0
        | (offset_63_32 & ULL_CONST(0xffffffff)) << 0;

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

static inline uint64_t CONST
lookup_fault_get_lufType(lookup_fault_t lookup_fault) {
    return (lookup_fault.words[0] >> 0) & ULL_CONST(0x3);
}

static inline lookup_fault_t CONST
lookup_fault_invalid_root_new(void) {
    lookup_fault_t lookup_fault;

    /* fail if user has passed bits that we will override */  
    assert(((uint64_t)lookup_fault_invalid_root & ~ULL_CONST(0x3)) == ((1 && ((uint64_t)lookup_fault_invalid_root & (ULL_CONST(1) << 47))) ? 0x0 : 0));

    lookup_fault.words[0] = 0
        | ((uint64_t)lookup_fault_invalid_root & ULL_CONST(0x3)) << 0;
    lookup_fault.words[1] = 0;

    return lookup_fault;
}

static inline lookup_fault_t CONST
lookup_fault_missing_capability_new(uint64_t bitsLeft) {
    lookup_fault_t lookup_fault;

    /* fail if user has passed bits that we will override */  
    assert((bitsLeft & ~ULL_CONST(0x7f)) == ((1 && (bitsLeft & (ULL_CONST(1) << 47))) ? 0x0 : 0));  
    assert(((uint64_t)lookup_fault_missing_capability & ~ULL_CONST(0x3)) == ((1 && ((uint64_t)lookup_fault_missing_capability & (ULL_CONST(1) << 47))) ? 0x0 : 0));

    lookup_fault.words[0] = 0
        | (bitsLeft & ULL_CONST(0x7f)) << 2
        | ((uint64_t)lookup_fault_missing_capability & ULL_CONST(0x3)) << 0;
    lookup_fault.words[1] = 0;

    return lookup_fault;
}

static inline uint64_t CONST
lookup_fault_missing_capability_get_bitsLeft(lookup_fault_t lookup_fault) {
    uint64_t ret;
    /* fail if union does not have the expected tag */
    assert(((lookup_fault.words[0] >> 0) & 0x3) == lookup_fault_missing_capability);

    ret = (lookup_fault.words[0] & ULL_CONST(0x1fc)) >> 2;
    /* Possibly sign extend */
    if (__builtin_expect(!!(0 && (ret & (ULL_CONST(1) << (47)))), 0)) {
        ret |= 0x0;
    }
    return ret;
}

static inline lookup_fault_t CONST
lookup_fault_depth_mismatch_new(uint64_t bitsFound, uint64_t bitsLeft) {
    lookup_fault_t lookup_fault;

    /* fail if user has passed bits that we will override */  
    assert((bitsFound & ~ULL_CONST(0x7f)) == ((1 && (bitsFound & (ULL_CONST(1) << 47))) ? 0x0 : 0));  
    assert((bitsLeft & ~ULL_CONST(0x7f)) == ((1 && (bitsLeft & (ULL_CONST(1) << 47))) ? 0x0 : 0));  
    assert(((uint64_t)lookup_fault_depth_mismatch & ~ULL_CONST(0x3)) == ((1 && ((uint64_t)lookup_fault_depth_mismatch & (ULL_CONST(1) << 47))) ? 0x0 : 0));

    lookup_fault.words[0] = 0
        | (bitsFound & ULL_CONST(0x7f)) << 9
        | (bitsLeft & ULL_CONST(0x7f)) << 2
        | ((uint64_t)lookup_fault_depth_mismatch & ULL_CONST(0x3)) << 0;
    lookup_fault.words[1] = 0;

    return lookup_fault;
}

static inline uint64_t CONST
lookup_fault_depth_mismatch_get_bitsFound(lookup_fault_t lookup_fault) {
    uint64_t ret;
    /* fail if union does not have the expected tag */
    assert(((lookup_fault.words[0] >> 0) & 0x3) == lookup_fault_depth_mismatch);

    ret = (lookup_fault.words[0] & ULL_CONST(0xfe00)) >> 9;
    /* Possibly sign extend */
    if (__builtin_expect(!!(0 && (ret & (ULL_CONST(1) << (47)))), 0)) {
        ret |= 0x0;
    }
    return ret;
}

static inline uint64_t CONST
lookup_fault_depth_mismatch_get_bitsLeft(lookup_fault_t lookup_fault) {
    uint64_t ret;
    /* fail if union does not have the expected tag */
    assert(((lookup_fault.words[0] >> 0) & 0x3) == lookup_fault_depth_mismatch);

    ret = (lookup_fault.words[0] & ULL_CONST(0x1fc)) >> 2;
    /* Possibly sign extend */
    if (__builtin_expect(!!(0 && (ret & (ULL_CONST(1) << (47)))), 0)) {
        ret |= 0x0;
    }
    return ret;
}

static inline lookup_fault_t CONST
lookup_fault_guard_mismatch_new(uint64_t guardFound, uint64_t bitsLeft, uint64_t bitsFound) {
    lookup_fault_t lookup_fault;

    /* fail if user has passed bits that we will override */  
    assert((bitsLeft & ~ULL_CONST(0x7f)) == ((1 && (bitsLeft & (ULL_CONST(1) << 47))) ? 0x0 : 0));  
    assert((bitsFound & ~ULL_CONST(0x7f)) == ((1 && (bitsFound & (ULL_CONST(1) << 47))) ? 0x0 : 0));  
    assert(((uint64_t)lookup_fault_guard_mismatch & ~ULL_CONST(0x3)) == ((1 && ((uint64_t)lookup_fault_guard_mismatch & (ULL_CONST(1) << 47))) ? 0x0 : 0));

    lookup_fault.words[0] = 0
        | (bitsLeft & ULL_CONST(0x7f)) << 9
        | (bitsFound & ULL_CONST(0x7f)) << 2
        | ((uint64_t)lookup_fault_guard_mismatch & ULL_CONST(0x3)) << 0;
    lookup_fault.words[1] = 0
        | guardFound << 0;

    return lookup_fault;
}

static inline uint64_t CONST
lookup_fault_guard_mismatch_get_guardFound(lookup_fault_t lookup_fault) {
    uint64_t ret;
    /* fail if union does not have the expected tag */
    assert(((lookup_fault.words[0] >> 0) & 0x3) == lookup_fault_guard_mismatch);

    ret = (lookup_fault.words[1] & ULL_CONST(0xffffffffffffffff)) >> 0;
    /* Possibly sign extend */
    if (__builtin_expect(!!(0 && (ret & (ULL_CONST(1) << (47)))), 0)) {
        ret |= 0x0;
    }
    return ret;
}

static inline uint64_t CONST
lookup_fault_guard_mismatch_get_bitsLeft(lookup_fault_t lookup_fault) {
    uint64_t ret;
    /* fail if union does not have the expected tag */
    assert(((lookup_fault.words[0] >> 0) & 0x3) == lookup_fault_guard_mismatch);

    ret = (lookup_fault.words[0] & ULL_CONST(0xfe00)) >> 9;
    /* Possibly sign extend */
    if (__builtin_expect(!!(0 && (ret & (ULL_CONST(1) << (47)))), 0)) {
        ret |= 0x0;
    }
    return ret;
}

static inline uint64_t CONST
lookup_fault_guard_mismatch_get_bitsFound(lookup_fault_t lookup_fault) {
    uint64_t ret;
    /* fail if union does not have the expected tag */
    assert(((lookup_fault.words[0] >> 0) & 0x3) == lookup_fault_guard_mismatch);

    ret = (lookup_fault.words[0] & ULL_CONST(0x1fc)) >> 2;
    /* Possibly sign extend */
    if (__builtin_expect(!!(0 && (ret & (ULL_CONST(1) << (47)))), 0)) {
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

static inline uint64_t PURE
pde_ptr_get_page_size(pde_t *pde_ptr) {
    return (pde_ptr->words[0] >> 7) & ULL_CONST(0x1);
}

static inline pde_t CONST
pde_pde_pt_new(uint64_t xd, uint64_t pt_base_address, uint64_t accessed, uint64_t cache_disabled, uint64_t write_through, uint64_t super_user, uint64_t read_write, uint64_t present) {
    pde_t pde;

    /* fail if user has passed bits that we will override */  
    assert((xd & ~ULL_CONST(0x1)) == ((0 && (xd & (ULL_CONST(1) << 50))) ? 0x0 : 0));  
    assert((pt_base_address & ~ULL_CONST(0x7fffffffff000)) == ((0 && (pt_base_address & (ULL_CONST(1) << 50))) ? 0x0 : 0));  
    assert(((uint64_t)pde_pde_pt & ~ULL_CONST(0x1)) == ((0 && ((uint64_t)pde_pde_pt & (ULL_CONST(1) << 50))) ? 0x0 : 0));  
    assert((accessed & ~ULL_CONST(0x1)) == ((0 && (accessed & (ULL_CONST(1) << 50))) ? 0x0 : 0));  
    assert((cache_disabled & ~ULL_CONST(0x1)) == ((0 && (cache_disabled & (ULL_CONST(1) << 50))) ? 0x0 : 0));  
    assert((write_through & ~ULL_CONST(0x1)) == ((0 && (write_through & (ULL_CONST(1) << 50))) ? 0x0 : 0));  
    assert((super_user & ~ULL_CONST(0x1)) == ((0 && (super_user & (ULL_CONST(1) << 50))) ? 0x0 : 0));  
    assert((read_write & ~ULL_CONST(0x1)) == ((0 && (read_write & (ULL_CONST(1) << 50))) ? 0x0 : 0));  
    assert((present & ~ULL_CONST(0x1)) == ((0 && (present & (ULL_CONST(1) << 50))) ? 0x0 : 0));

    pde.words[0] = 0
        | (xd & ULL_CONST(0x1)) << 63
        | (pt_base_address & ULL_CONST(0x7fffffffff000)) >> 0
        | ((uint64_t)pde_pde_pt & ULL_CONST(0x1)) << 7
        | (accessed & ULL_CONST(0x1)) << 5
        | (cache_disabled & ULL_CONST(0x1)) << 4
        | (write_through & ULL_CONST(0x1)) << 3
        | (super_user & ULL_CONST(0x1)) << 2
        | (read_write & ULL_CONST(0x1)) << 1
        | (present & ULL_CONST(0x1)) << 0;

    return pde;
}

static inline uint64_t PURE
pde_pde_pt_ptr_get_pt_base_address(pde_t *pde_ptr) {
    uint64_t ret;
    /* fail if union does not have the expected tag */
    assert(((pde_ptr->words[0] >> 7) & 0x1) == pde_pde_pt);

    ret = (pde_ptr->words[0] & ULL_CONST(0x7fffffffff000)) << 0;
    /* Possibly sign extend */
    if (__builtin_expect(!!(0 && (ret & (ULL_CONST(1) << (50)))), 0)) {
        ret |= 0x0;
    }
    return ret;
}

static inline uint64_t PURE
pde_pde_pt_ptr_get_present(pde_t *pde_ptr) {
    uint64_t ret;
    /* fail if union does not have the expected tag */
    assert(((pde_ptr->words[0] >> 7) & 0x1) == pde_pde_pt);

    ret = (pde_ptr->words[0] & ULL_CONST(0x1)) >> 0;
    /* Possibly sign extend */
    if (__builtin_expect(!!(0 && (ret & (ULL_CONST(1) << (50)))), 0)) {
        ret |= 0x0;
    }
    return ret;
}

static inline pde_t CONST
pde_pde_large_new(uint64_t xd, uint64_t page_base_address, uint64_t pat, uint64_t global, uint64_t dirty, uint64_t accessed, uint64_t cache_disabled, uint64_t write_through, uint64_t super_user, uint64_t read_write, uint64_t present) {
    pde_t pde;

    /* fail if user has passed bits that we will override */  
    assert((xd & ~ULL_CONST(0x1)) == ((0 && (xd & (ULL_CONST(1) << 50))) ? 0x0 : 0));  
    assert((page_base_address & ~ULL_CONST(0x7ffffffe00000)) == ((0 && (page_base_address & (ULL_CONST(1) << 50))) ? 0x0 : 0));  
    assert((pat & ~ULL_CONST(0x1)) == ((0 && (pat & (ULL_CONST(1) << 50))) ? 0x0 : 0));  
    assert((global & ~ULL_CONST(0x1)) == ((0 && (global & (ULL_CONST(1) << 50))) ? 0x0 : 0));  
    assert(((uint64_t)pde_pde_large & ~ULL_CONST(0x1)) == ((0 && ((uint64_t)pde_pde_large & (ULL_CONST(1) << 50))) ? 0x0 : 0));  
    assert((dirty & ~ULL_CONST(0x1)) == ((0 && (dirty & (ULL_CONST(1) << 50))) ? 0x0 : 0));  
    assert((accessed & ~ULL_CONST(0x1)) == ((0 && (accessed & (ULL_CONST(1) << 50))) ? 0x0 : 0));  
    assert((cache_disabled & ~ULL_CONST(0x1)) == ((0 && (cache_disabled & (ULL_CONST(1) << 50))) ? 0x0 : 0));  
    assert((write_through & ~ULL_CONST(0x1)) == ((0 && (write_through & (ULL_CONST(1) << 50))) ? 0x0 : 0));  
    assert((super_user & ~ULL_CONST(0x1)) == ((0 && (super_user & (ULL_CONST(1) << 50))) ? 0x0 : 0));  
    assert((read_write & ~ULL_CONST(0x1)) == ((0 && (read_write & (ULL_CONST(1) << 50))) ? 0x0 : 0));  
    assert((present & ~ULL_CONST(0x1)) == ((0 && (present & (ULL_CONST(1) << 50))) ? 0x0 : 0));

    pde.words[0] = 0
        | (xd & ULL_CONST(0x1)) << 63
        | (page_base_address & ULL_CONST(0x7ffffffe00000)) >> 0
        | (pat & ULL_CONST(0x1)) << 12
        | (global & ULL_CONST(0x1)) << 8
        | ((uint64_t)pde_pde_large & ULL_CONST(0x1)) << 7
        | (dirty & ULL_CONST(0x1)) << 6
        | (accessed & ULL_CONST(0x1)) << 5
        | (cache_disabled & ULL_CONST(0x1)) << 4
        | (write_through & ULL_CONST(0x1)) << 3
        | (super_user & ULL_CONST(0x1)) << 2
        | (read_write & ULL_CONST(0x1)) << 1
        | (present & ULL_CONST(0x1)) << 0;

    return pde;
}

static inline uint64_t PURE
pde_pde_large_ptr_get_page_base_address(pde_t *pde_ptr) {
    uint64_t ret;
    /* fail if union does not have the expected tag */
    assert(((pde_ptr->words[0] >> 7) & 0x1) == pde_pde_large);

    ret = (pde_ptr->words[0] & ULL_CONST(0x7ffffffe00000)) << 0;
    /* Possibly sign extend */
    if (__builtin_expect(!!(0 && (ret & (ULL_CONST(1) << (50)))), 0)) {
        ret |= 0x0;
    }
    return ret;
}

static inline uint64_t PURE
pde_pde_large_ptr_get_present(pde_t *pde_ptr) {
    uint64_t ret;
    /* fail if union does not have the expected tag */
    assert(((pde_ptr->words[0] >> 7) & 0x1) == pde_pde_large);

    ret = (pde_ptr->words[0] & ULL_CONST(0x1)) >> 0;
    /* Possibly sign extend */
    if (__builtin_expect(!!(0 && (ret & (ULL_CONST(1) << (50)))), 0)) {
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

static inline uint64_t PURE
pdpte_ptr_get_page_size(pdpte_t *pdpte_ptr) {
    return (pdpte_ptr->words[0] >> 7) & ULL_CONST(0x1);
}

static inline pdpte_t CONST
pdpte_pdpte_1g_new(uint64_t xd, uint64_t page_base_address, uint64_t pat, uint64_t global, uint64_t dirty, uint64_t accessed, uint64_t cache_disabled, uint64_t write_through, uint64_t super_user, uint64_t read_write, uint64_t present) {
    pdpte_t pdpte;

    /* fail if user has passed bits that we will override */  
    assert((xd & ~ULL_CONST(0x1)) == ((0 && (xd & (ULL_CONST(1) << 50))) ? 0x0 : 0));  
    assert((page_base_address & ~ULL_CONST(0x7ffffc0000000)) == ((0 && (page_base_address & (ULL_CONST(1) << 50))) ? 0x0 : 0));  
    assert((pat & ~ULL_CONST(0x1)) == ((0 && (pat & (ULL_CONST(1) << 50))) ? 0x0 : 0));  
    assert((global & ~ULL_CONST(0x1)) == ((0 && (global & (ULL_CONST(1) << 50))) ? 0x0 : 0));  
    assert(((uint64_t)pdpte_pdpte_1g & ~ULL_CONST(0x1)) == ((0 && ((uint64_t)pdpte_pdpte_1g & (ULL_CONST(1) << 50))) ? 0x0 : 0));  
    assert((dirty & ~ULL_CONST(0x1)) == ((0 && (dirty & (ULL_CONST(1) << 50))) ? 0x0 : 0));  
    assert((accessed & ~ULL_CONST(0x1)) == ((0 && (accessed & (ULL_CONST(1) << 50))) ? 0x0 : 0));  
    assert((cache_disabled & ~ULL_CONST(0x1)) == ((0 && (cache_disabled & (ULL_CONST(1) << 50))) ? 0x0 : 0));  
    assert((write_through & ~ULL_CONST(0x1)) == ((0 && (write_through & (ULL_CONST(1) << 50))) ? 0x0 : 0));  
    assert((super_user & ~ULL_CONST(0x1)) == ((0 && (super_user & (ULL_CONST(1) << 50))) ? 0x0 : 0));  
    assert((read_write & ~ULL_CONST(0x1)) == ((0 && (read_write & (ULL_CONST(1) << 50))) ? 0x0 : 0));  
    assert((present & ~ULL_CONST(0x1)) == ((0 && (present & (ULL_CONST(1) << 50))) ? 0x0 : 0));

    pdpte.words[0] = 0
        | (xd & ULL_CONST(0x1)) << 63
        | (page_base_address & ULL_CONST(0x7ffffc0000000)) >> 0
        | (pat & ULL_CONST(0x1)) << 12
        | (global & ULL_CONST(0x1)) << 8
        | ((uint64_t)pdpte_pdpte_1g & ULL_CONST(0x1)) << 7
        | (dirty & ULL_CONST(0x1)) << 6
        | (accessed & ULL_CONST(0x1)) << 5
        | (cache_disabled & ULL_CONST(0x1)) << 4
        | (write_through & ULL_CONST(0x1)) << 3
        | (super_user & ULL_CONST(0x1)) << 2
        | (read_write & ULL_CONST(0x1)) << 1
        | (present & ULL_CONST(0x1)) << 0;

    return pdpte;
}

static inline uint64_t PURE
pdpte_pdpte_1g_ptr_get_page_base_address(pdpte_t *pdpte_ptr) {
    uint64_t ret;
    /* fail if union does not have the expected tag */
    assert(((pdpte_ptr->words[0] >> 7) & 0x1) == pdpte_pdpte_1g);

    ret = (pdpte_ptr->words[0] & ULL_CONST(0x7ffffc0000000)) << 0;
    /* Possibly sign extend */
    if (__builtin_expect(!!(0 && (ret & (ULL_CONST(1) << (50)))), 0)) {
        ret |= 0x0;
    }
    return ret;
}

static inline uint64_t PURE
pdpte_pdpte_1g_ptr_get_present(pdpte_t *pdpte_ptr) {
    uint64_t ret;
    /* fail if union does not have the expected tag */
    assert(((pdpte_ptr->words[0] >> 7) & 0x1) == pdpte_pdpte_1g);

    ret = (pdpte_ptr->words[0] & ULL_CONST(0x1)) >> 0;
    /* Possibly sign extend */
    if (__builtin_expect(!!(0 && (ret & (ULL_CONST(1) << (50)))), 0)) {
        ret |= 0x0;
    }
    return ret;
}

static inline pdpte_t CONST
pdpte_pdpte_pd_new(uint64_t xd, uint64_t pd_base_address, uint64_t accessed, uint64_t cache_disabled, uint64_t write_through, uint64_t super_user, uint64_t read_write, uint64_t present) {
    pdpte_t pdpte;

    /* fail if user has passed bits that we will override */  
    assert((xd & ~ULL_CONST(0x1)) == ((0 && (xd & (ULL_CONST(1) << 50))) ? 0x0 : 0));  
    assert((pd_base_address & ~ULL_CONST(0x7fffffffff000)) == ((0 && (pd_base_address & (ULL_CONST(1) << 50))) ? 0x0 : 0));  
    assert(((uint64_t)pdpte_pdpte_pd & ~ULL_CONST(0x1)) == ((0 && ((uint64_t)pdpte_pdpte_pd & (ULL_CONST(1) << 50))) ? 0x0 : 0));  
    assert((accessed & ~ULL_CONST(0x1)) == ((0 && (accessed & (ULL_CONST(1) << 50))) ? 0x0 : 0));  
    assert((cache_disabled & ~ULL_CONST(0x1)) == ((0 && (cache_disabled & (ULL_CONST(1) << 50))) ? 0x0 : 0));  
    assert((write_through & ~ULL_CONST(0x1)) == ((0 && (write_through & (ULL_CONST(1) << 50))) ? 0x0 : 0));  
    assert((super_user & ~ULL_CONST(0x1)) == ((0 && (super_user & (ULL_CONST(1) << 50))) ? 0x0 : 0));  
    assert((read_write & ~ULL_CONST(0x1)) == ((0 && (read_write & (ULL_CONST(1) << 50))) ? 0x0 : 0));  
    assert((present & ~ULL_CONST(0x1)) == ((0 && (present & (ULL_CONST(1) << 50))) ? 0x0 : 0));

    pdpte.words[0] = 0
        | (xd & ULL_CONST(0x1)) << 63
        | (pd_base_address & ULL_CONST(0x7fffffffff000)) >> 0
        | ((uint64_t)pdpte_pdpte_pd & ULL_CONST(0x1)) << 7
        | (accessed & ULL_CONST(0x1)) << 5
        | (cache_disabled & ULL_CONST(0x1)) << 4
        | (write_through & ULL_CONST(0x1)) << 3
        | (super_user & ULL_CONST(0x1)) << 2
        | (read_write & ULL_CONST(0x1)) << 1
        | (present & ULL_CONST(0x1)) << 0;

    return pdpte;
}

static inline uint64_t PURE
pdpte_pdpte_pd_ptr_get_pd_base_address(pdpte_t *pdpte_ptr) {
    uint64_t ret;
    /* fail if union does not have the expected tag */
    assert(((pdpte_ptr->words[0] >> 7) & 0x1) == pdpte_pdpte_pd);

    ret = (pdpte_ptr->words[0] & ULL_CONST(0x7fffffffff000)) << 0;
    /* Possibly sign extend */
    if (__builtin_expect(!!(0 && (ret & (ULL_CONST(1) << (50)))), 0)) {
        ret |= 0x0;
    }
    return ret;
}

static inline uint64_t PURE
pdpte_pdpte_pd_ptr_get_present(pdpte_t *pdpte_ptr) {
    uint64_t ret;
    /* fail if union does not have the expected tag */
    assert(((pdpte_ptr->words[0] >> 7) & 0x1) == pdpte_pdpte_pd);

    ret = (pdpte_ptr->words[0] & ULL_CONST(0x1)) >> 0;
    /* Possibly sign extend */
    if (__builtin_expect(!!(0 && (ret & (ULL_CONST(1) << (50)))), 0)) {
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

static inline uint64_t CONST
seL4_Fault_get_seL4_FaultType(seL4_Fault_t seL4_Fault) {
    return (seL4_Fault.words[0] >> 0) & ULL_CONST(0xf);
}

static inline seL4_Fault_t CONST
seL4_Fault_NullFault_new(void) {
    seL4_Fault_t seL4_Fault;

    /* fail if user has passed bits that we will override */  
    assert(((uint64_t)seL4_Fault_NullFault & ~ULL_CONST(0xf)) == ((0 && ((uint64_t)seL4_Fault_NullFault & (ULL_CONST(1) << 50))) ? 0x0 : 0));

    seL4_Fault.words[0] = 0
        | ((uint64_t)seL4_Fault_NullFault & ULL_CONST(0xf)) << 0;
    seL4_Fault.words[1] = 0;

    return seL4_Fault;
}

static inline seL4_Fault_t CONST
seL4_Fault_CapFault_new(uint64_t address, uint64_t inReceivePhase) {
    seL4_Fault_t seL4_Fault;

    /* fail if user has passed bits that we will override */  
    assert((inReceivePhase & ~ULL_CONST(0x1)) == ((0 && (inReceivePhase & (ULL_CONST(1) << 50))) ? 0x0 : 0));  
    assert(((uint64_t)seL4_Fault_CapFault & ~ULL_CONST(0xf)) == ((0 && ((uint64_t)seL4_Fault_CapFault & (ULL_CONST(1) << 50))) ? 0x0 : 0));

    seL4_Fault.words[0] = 0
        | (inReceivePhase & ULL_CONST(0x1)) << 63
        | ((uint64_t)seL4_Fault_CapFault & ULL_CONST(0xf)) << 0;
    seL4_Fault.words[1] = 0
        | address << 0;

    return seL4_Fault;
}

static inline uint64_t CONST
seL4_Fault_CapFault_get_address(seL4_Fault_t seL4_Fault) {
    uint64_t ret;
    /* fail if union does not have the expected tag */
    assert(((seL4_Fault.words[0] >> 0) & 0xf) == seL4_Fault_CapFault);

    ret = (seL4_Fault.words[1] & ULL_CONST(0xffffffffffffffff)) >> 0;
    /* Possibly sign extend */
    if (__builtin_expect(!!(0 && (ret & (ULL_CONST(1) << (50)))), 0)) {
        ret |= 0x0;
    }
    return ret;
}

static inline uint64_t CONST
seL4_Fault_CapFault_get_inReceivePhase(seL4_Fault_t seL4_Fault) {
    uint64_t ret;
    /* fail if union does not have the expected tag */
    assert(((seL4_Fault.words[0] >> 0) & 0xf) == seL4_Fault_CapFault);

    ret = (seL4_Fault.words[0] & ULL_CONST(0x8000000000000000)) >> 63;
    /* Possibly sign extend */
    if (__builtin_expect(!!(0 && (ret & (ULL_CONST(1) << (50)))), 0)) {
        ret |= 0x0;
    }
    return ret;
}

static inline seL4_Fault_t CONST
seL4_Fault_UnknownSyscall_new(uint64_t syscallNumber) {
    seL4_Fault_t seL4_Fault;

    /* fail if user has passed bits that we will override */  
    assert(((uint64_t)seL4_Fault_UnknownSyscall & ~ULL_CONST(0xf)) == ((0 && ((uint64_t)seL4_Fault_UnknownSyscall & (ULL_CONST(1) << 50))) ? 0x0 : 0));

    seL4_Fault.words[0] = 0
        | ((uint64_t)seL4_Fault_UnknownSyscall & ULL_CONST(0xf)) << 0;
    seL4_Fault.words[1] = 0
        | syscallNumber << 0;

    return seL4_Fault;
}

static inline uint64_t CONST
seL4_Fault_UnknownSyscall_get_syscallNumber(seL4_Fault_t seL4_Fault) {
    uint64_t ret;
    /* fail if union does not have the expected tag */
    assert(((seL4_Fault.words[0] >> 0) & 0xf) == seL4_Fault_UnknownSyscall);

    ret = (seL4_Fault.words[1] & ULL_CONST(0xffffffffffffffff)) >> 0;
    /* Possibly sign extend */
    if (__builtin_expect(!!(0 && (ret & (ULL_CONST(1) << (50)))), 0)) {
        ret |= 0x0;
    }
    return ret;
}

static inline seL4_Fault_t CONST
seL4_Fault_UserException_new(uint64_t number, uint64_t code) {
    seL4_Fault_t seL4_Fault;

    /* fail if user has passed bits that we will override */  
    assert((number & ~ULL_CONST(0xffffffff)) == ((0 && (number & (ULL_CONST(1) << 50))) ? 0x0 : 0));  
    assert((code & ~ULL_CONST(0xfffffff)) == ((0 && (code & (ULL_CONST(1) << 50))) ? 0x0 : 0));  
    assert(((uint64_t)seL4_Fault_UserException & ~ULL_CONST(0xf)) == ((0 && ((uint64_t)seL4_Fault_UserException & (ULL_CONST(1) << 50))) ? 0x0 : 0));

    seL4_Fault.words[0] = 0
        | (number & ULL_CONST(0xffffffff)) << 32
        | (code & ULL_CONST(0xfffffff)) << 4
        | ((uint64_t)seL4_Fault_UserException & ULL_CONST(0xf)) << 0;
    seL4_Fault.words[1] = 0;

    return seL4_Fault;
}

static inline uint64_t CONST
seL4_Fault_UserException_get_number(seL4_Fault_t seL4_Fault) {
    uint64_t ret;
    /* fail if union does not have the expected tag */
    assert(((seL4_Fault.words[0] >> 0) & 0xf) == seL4_Fault_UserException);

    ret = (seL4_Fault.words[0] & ULL_CONST(0xffffffff00000000)) >> 32;
    /* Possibly sign extend */
    if (__builtin_expect(!!(0 && (ret & (ULL_CONST(1) << (50)))), 0)) {
        ret |= 0x0;
    }
    return ret;
}

static inline uint64_t CONST
seL4_Fault_UserException_get_code(seL4_Fault_t seL4_Fault) {
    uint64_t ret;
    /* fail if union does not have the expected tag */
    assert(((seL4_Fault.words[0] >> 0) & 0xf) == seL4_Fault_UserException);

    ret = (seL4_Fault.words[0] & ULL_CONST(0xfffffff0)) >> 4;
    /* Possibly sign extend */
    if (__builtin_expect(!!(0 && (ret & (ULL_CONST(1) << (50)))), 0)) {
        ret |= 0x0;
    }
    return ret;
}

static inline seL4_Fault_t CONST
seL4_Fault_VMFault_new(uint64_t address, uint64_t FSR, uint64_t instructionFault) {
    seL4_Fault_t seL4_Fault;

    /* fail if user has passed bits that we will override */  
    assert((FSR & ~ULL_CONST(0x1f)) == ((0 && (FSR & (ULL_CONST(1) << 50))) ? 0x0 : 0));  
    assert((instructionFault & ~ULL_CONST(0x1)) == ((0 && (instructionFault & (ULL_CONST(1) << 50))) ? 0x0 : 0));  
    assert(((uint64_t)seL4_Fault_VMFault & ~ULL_CONST(0xf)) == ((0 && ((uint64_t)seL4_Fault_VMFault & (ULL_CONST(1) << 50))) ? 0x0 : 0));

    seL4_Fault.words[0] = 0
        | (FSR & ULL_CONST(0x1f)) << 27
        | (instructionFault & ULL_CONST(0x1)) << 19
        | ((uint64_t)seL4_Fault_VMFault & ULL_CONST(0xf)) << 0;
    seL4_Fault.words[1] = 0
        | address << 0;

    return seL4_Fault;
}

static inline uint64_t CONST
seL4_Fault_VMFault_get_address(seL4_Fault_t seL4_Fault) {
    uint64_t ret;
    /* fail if union does not have the expected tag */
    assert(((seL4_Fault.words[0] >> 0) & 0xf) == seL4_Fault_VMFault);

    ret = (seL4_Fault.words[1] & ULL_CONST(0xffffffffffffffff)) >> 0;
    /* Possibly sign extend */
    if (__builtin_expect(!!(0 && (ret & (ULL_CONST(1) << (50)))), 0)) {
        ret |= 0x0;
    }
    return ret;
}

static inline uint64_t CONST
seL4_Fault_VMFault_get_FSR(seL4_Fault_t seL4_Fault) {
    uint64_t ret;
    /* fail if union does not have the expected tag */
    assert(((seL4_Fault.words[0] >> 0) & 0xf) == seL4_Fault_VMFault);

    ret = (seL4_Fault.words[0] & ULL_CONST(0xf8000000)) >> 27;
    /* Possibly sign extend */
    if (__builtin_expect(!!(0 && (ret & (ULL_CONST(1) << (50)))), 0)) {
        ret |= 0x0;
    }
    return ret;
}

static inline uint64_t CONST
seL4_Fault_VMFault_get_instructionFault(seL4_Fault_t seL4_Fault) {
    uint64_t ret;
    /* fail if union does not have the expected tag */
    assert(((seL4_Fault.words[0] >> 0) & 0xf) == seL4_Fault_VMFault);

    ret = (seL4_Fault.words[0] & ULL_CONST(0x80000)) >> 19;
    /* Possibly sign extend */
    if (__builtin_expect(!!(0 && (ret & (ULL_CONST(1) << (50)))), 0)) {
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

static inline uint32_t CONST
x86_irq_state_get_irqType(x86_irq_state_t x86_irq_state) {
    return (x86_irq_state.words[1] >> 28) & 0xfu;
}

static inline x86_irq_state_t CONST
x86_irq_state_irq_free_new(void) {
    x86_irq_state_t x86_irq_state;

    /* fail if user has passed bits that we will override */  
    assert(((uint32_t)x86_irq_state_irq_free & ~0xfu) == ((0 && ((uint32_t)x86_irq_state_irq_free & (1u << 31))) ? 0x0 : 0));

    x86_irq_state.words[0] = 0;
    x86_irq_state.words[1] = 0
        | ((uint32_t)x86_irq_state_irq_free & 0xfu) << 28;

    return x86_irq_state;
}

static inline x86_irq_state_t CONST
x86_irq_state_irq_ioapic_new(uint32_t id, uint32_t pin, uint32_t level, uint32_t polarity_low, uint32_t masked) {
    x86_irq_state_t x86_irq_state;

    /* fail if user has passed bits that we will override */  
    assert(((uint32_t)x86_irq_state_irq_ioapic & ~0xfu) == ((0 && ((uint32_t)x86_irq_state_irq_ioapic & (1u << 31))) ? 0x0 : 0));  
    assert((id & ~0x1fu) == ((0 && (id & (1u << 31))) ? 0x0 : 0));  
    assert((pin & ~0x1fu) == ((0 && (pin & (1u << 31))) ? 0x0 : 0));  
    assert((level & ~0x1u) == ((0 && (level & (1u << 31))) ? 0x0 : 0));  
    assert((polarity_low & ~0x1u) == ((0 && (polarity_low & (1u << 31))) ? 0x0 : 0));  
    assert((masked & ~0x1u) == ((0 && (masked & (1u << 31))) ? 0x0 : 0));

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

static inline uint32_t CONST
x86_irq_state_irq_ioapic_get_id(x86_irq_state_t x86_irq_state) {
    uint32_t ret;
    /* fail if union does not have the expected tag */
    assert(((x86_irq_state.words[1] >> 28) & 0xf) == x86_irq_state_irq_ioapic);

    ret = (x86_irq_state.words[1] & 0xf800000u) >> 23;
    /* Possibly sign extend */
    if (__builtin_expect(!!(0 && (ret & (1u << (31)))), 0)) {
        ret |= 0x0;
    }
    return ret;
}

static inline uint32_t CONST
x86_irq_state_irq_ioapic_get_pin(x86_irq_state_t x86_irq_state) {
    uint32_t ret;
    /* fail if union does not have the expected tag */
    assert(((x86_irq_state.words[1] >> 28) & 0xf) == x86_irq_state_irq_ioapic);

    ret = (x86_irq_state.words[1] & 0x7c0000u) >> 18;
    /* Possibly sign extend */
    if (__builtin_expect(!!(0 && (ret & (1u << (31)))), 0)) {
        ret |= 0x0;
    }
    return ret;
}

static inline x86_irq_state_t CONST
x86_irq_state_irq_ioapic_set_masked(x86_irq_state_t x86_irq_state, uint32_t v32) {
    /* fail if union does not have the expected tag */
    assert(((x86_irq_state.words[1] >> 28) & 0xf) == x86_irq_state_irq_ioapic);
    /* fail if user has passed bits that we will override */
    assert((((~0x8000u >> 15 ) | 0x0) & v32) == ((0 && (v32 & (1u << (31)))) ? 0x0 : 0));

    x86_irq_state.words[1] &= ~0x8000u;
    x86_irq_state.words[1] |= (v32 << 15) & 0x8000u;
    return x86_irq_state;
}

static inline x86_irq_state_t CONST
x86_irq_state_irq_msi_new(uint32_t bus, uint32_t dev, uint32_t func, uint32_t handle) {
    x86_irq_state_t x86_irq_state;

    /* fail if user has passed bits that we will override */  
    assert(((uint32_t)x86_irq_state_irq_msi & ~0xfu) == ((0 && ((uint32_t)x86_irq_state_irq_msi & (1u << 31))) ? 0x0 : 0));  
    assert((bus & ~0xffu) == ((0 && (bus & (1u << 31))) ? 0x0 : 0));  
    assert((dev & ~0x1fu) == ((0 && (dev & (1u << 31))) ? 0x0 : 0));  
    assert((func & ~0x7u) == ((0 && (func & (1u << 31))) ? 0x0 : 0));

    x86_irq_state.words[0] = 0
        | handle << 0;
    x86_irq_state.words[1] = 0
        | ((uint32_t)x86_irq_state_irq_msi & 0xfu) << 28
        | (bus & 0xffu) << 20
        | (dev & 0x1fu) << 15
        | (func & 0x7u) << 12;

    return x86_irq_state;
}

static inline x86_irq_state_t CONST
x86_irq_state_irq_reserved_new(void) {
    x86_irq_state_t x86_irq_state;

    /* fail if user has passed bits that we will override */  
    assert(((uint32_t)x86_irq_state_irq_reserved & ~0xfu) == ((0 && ((uint32_t)x86_irq_state_irq_reserved & (1u << 31))) ? 0x0 : 0));

    x86_irq_state.words[0] = 0;
    x86_irq_state.words[1] = 0
        | ((uint32_t)x86_irq_state_irq_reserved & 0xfu) << 28;

    return x86_irq_state;
}

