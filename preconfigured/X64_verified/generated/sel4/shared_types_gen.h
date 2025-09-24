/* generated from /workspace/seL4-c89/preconfigured/libsel4/mode_include/64/sel4/shared_types.bf */

#pragma once

#include <config.h>
#include <assert.h>
#include <stdint.h>
#include <util.h>
struct seL4_CNode_CapData {
    uint64_t words[1];
};
typedef struct seL4_CNode_CapData seL4_CNode_CapData_t;

static inline uint64_t CONST
seL4_CNode_CapData_get_guard(seL4_CNode_CapData_t seL4_CNode_CapData) {
    uint64_t ret;
    ret = (seL4_CNode_CapData.words[0] & ULL_CONST(0xffffffffffffffc0)) >> 6;
    /* Possibly sign extend */
    if (__builtin_expect(!!(0 && (ret & (ULL_CONST(1) << (63)))), 0)) {
        ret |= 0x0;
    }
    return ret;
}

static inline uint64_t CONST
seL4_CNode_CapData_get_guardSize(seL4_CNode_CapData_t seL4_CNode_CapData) {
    uint64_t ret;
    ret = (seL4_CNode_CapData.words[0] & ULL_CONST(0x3f)) >> 0;
    /* Possibly sign extend */
    if (__builtin_expect(!!(0 && (ret & (ULL_CONST(1) << (63)))), 0)) {
        ret |= 0x0;
    }
    return ret;
}

struct seL4_CapRights {
    uint64_t words[1];
};
typedef struct seL4_CapRights seL4_CapRights_t;

static inline uint64_t CONST
seL4_CapRights_get_capAllowGrantReply(seL4_CapRights_t seL4_CapRights) {
    uint64_t ret;
    ret = (seL4_CapRights.words[0] & ULL_CONST(0x8)) >> 3;
    /* Possibly sign extend */
    if (__builtin_expect(!!(0 && (ret & (ULL_CONST(1) << (63)))), 0)) {
        ret |= 0x0;
    }
    return ret;
}

static inline uint64_t CONST
seL4_CapRights_get_capAllowGrant(seL4_CapRights_t seL4_CapRights) {
    uint64_t ret;
    ret = (seL4_CapRights.words[0] & ULL_CONST(0x4)) >> 2;
    /* Possibly sign extend */
    if (__builtin_expect(!!(0 && (ret & (ULL_CONST(1) << (63)))), 0)) {
        ret |= 0x0;
    }
    return ret;
}

static inline uint64_t CONST
seL4_CapRights_get_capAllowRead(seL4_CapRights_t seL4_CapRights) {
    uint64_t ret;
    ret = (seL4_CapRights.words[0] & ULL_CONST(0x2)) >> 1;
    /* Possibly sign extend */
    if (__builtin_expect(!!(0 && (ret & (ULL_CONST(1) << (63)))), 0)) {
        ret |= 0x0;
    }
    return ret;
}

static inline uint64_t CONST
seL4_CapRights_get_capAllowWrite(seL4_CapRights_t seL4_CapRights) {
    uint64_t ret;
    ret = (seL4_CapRights.words[0] & ULL_CONST(0x1)) >> 0;
    /* Possibly sign extend */
    if (__builtin_expect(!!(0 && (ret & (ULL_CONST(1) << (63)))), 0)) {
        ret |= 0x0;
    }
    return ret;
}

struct seL4_MessageInfo {
    uint64_t words[1];
};
typedef struct seL4_MessageInfo seL4_MessageInfo_t;

static inline seL4_MessageInfo_t CONST
seL4_MessageInfo_new(uint64_t label, uint64_t capsUnwrapped, uint64_t extraCaps, uint64_t length) {
    seL4_MessageInfo_t seL4_MessageInfo;

    /* fail if user has passed bits that we will override */  
    assert((label & ~ULL_CONST(0xfffffffffffff)) == ((0 && (label & (ULL_CONST(1) << 63))) ? 0x0 : 0));  
    assert((capsUnwrapped & ~ULL_CONST(0x7)) == ((0 && (capsUnwrapped & (ULL_CONST(1) << 63))) ? 0x0 : 0));  
    assert((extraCaps & ~ULL_CONST(0x3)) == ((0 && (extraCaps & (ULL_CONST(1) << 63))) ? 0x0 : 0));  
    assert((length & ~ULL_CONST(0x7f)) == ((0 && (length & (ULL_CONST(1) << 63))) ? 0x0 : 0));

    seL4_MessageInfo.words[0] = 0
        | (label & ULL_CONST(0xfffffffffffff)) << 12
        | (capsUnwrapped & ULL_CONST(0x7)) << 9
        | (extraCaps & ULL_CONST(0x3)) << 7
        | (length & ULL_CONST(0x7f)) << 0;

    return seL4_MessageInfo;
}

static inline uint64_t CONST
seL4_MessageInfo_get_label(seL4_MessageInfo_t seL4_MessageInfo) {
    uint64_t ret;
    ret = (seL4_MessageInfo.words[0] & ULL_CONST(0xfffffffffffff000)) >> 12;
    /* Possibly sign extend */
    if (__builtin_expect(!!(0 && (ret & (ULL_CONST(1) << (63)))), 0)) {
        ret |= 0x0;
    }
    return ret;
}

static inline uint64_t CONST
seL4_MessageInfo_get_capsUnwrapped(seL4_MessageInfo_t seL4_MessageInfo) {
    uint64_t ret;
    ret = (seL4_MessageInfo.words[0] & ULL_CONST(0xe00)) >> 9;
    /* Possibly sign extend */
    if (__builtin_expect(!!(0 && (ret & (ULL_CONST(1) << (63)))), 0)) {
        ret |= 0x0;
    }
    return ret;
}

static inline seL4_MessageInfo_t CONST
seL4_MessageInfo_set_capsUnwrapped(seL4_MessageInfo_t seL4_MessageInfo, uint64_t v64) {
    /* fail if user has passed bits that we will override */
    assert((((~ULL_CONST(0xe00) >> 9 ) | 0x0) & v64) == ((0 && (v64 & (ULL_CONST(1) << (63)))) ? 0x0 : 0));
    seL4_MessageInfo.words[0] &= ~ULL_CONST(0xe00);
    seL4_MessageInfo.words[0] |= (v64 << 9) & ULL_CONST(0xe00);
    return seL4_MessageInfo;
}

static inline uint64_t CONST
seL4_MessageInfo_get_extraCaps(seL4_MessageInfo_t seL4_MessageInfo) {
    uint64_t ret;
    ret = (seL4_MessageInfo.words[0] & ULL_CONST(0x180)) >> 7;
    /* Possibly sign extend */
    if (__builtin_expect(!!(0 && (ret & (ULL_CONST(1) << (63)))), 0)) {
        ret |= 0x0;
    }
    return ret;
}

static inline seL4_MessageInfo_t CONST
seL4_MessageInfo_set_extraCaps(seL4_MessageInfo_t seL4_MessageInfo, uint64_t v64) {
    /* fail if user has passed bits that we will override */
    assert((((~ULL_CONST(0x180) >> 7 ) | 0x0) & v64) == ((0 && (v64 & (ULL_CONST(1) << (63)))) ? 0x0 : 0));
    seL4_MessageInfo.words[0] &= ~ULL_CONST(0x180);
    seL4_MessageInfo.words[0] |= (v64 << 7) & ULL_CONST(0x180);
    return seL4_MessageInfo;
}

static inline uint64_t CONST
seL4_MessageInfo_get_length(seL4_MessageInfo_t seL4_MessageInfo) {
    uint64_t ret;
    ret = (seL4_MessageInfo.words[0] & ULL_CONST(0x7f)) >> 0;
    /* Possibly sign extend */
    if (__builtin_expect(!!(0 && (ret & (ULL_CONST(1) << (63)))), 0)) {
        ret |= 0x0;
    }
    return ret;
}

static inline seL4_MessageInfo_t CONST
seL4_MessageInfo_set_length(seL4_MessageInfo_t seL4_MessageInfo, uint64_t v64) {
    /* fail if user has passed bits that we will override */
    assert((((~ULL_CONST(0x7f) >> 0 ) | 0x0) & v64) == ((0 && (v64 & (ULL_CONST(1) << (63)))) ? 0x0 : 0));
    seL4_MessageInfo.words[0] &= ~ULL_CONST(0x7f);
    seL4_MessageInfo.words[0] |= (v64 << 0) & ULL_CONST(0x7f);
    return seL4_MessageInfo;
}

