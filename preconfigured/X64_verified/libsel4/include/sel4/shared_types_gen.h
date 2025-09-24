/* generated from /workspace/seL4-c89/preconfigured/libsel4/mode_include/64/sel4/shared_types.bf */

#pragma once

#include <sel4/config.h>
#include <sel4/simple_types.h>
#include <sel4/debug_assert.h>
struct seL4_CNode_CapData {
    seL4_Uint64 words[1];
};
typedef struct seL4_CNode_CapData seL4_CNode_CapData_t;

LIBSEL4_INLINE_FUNC seL4_CNode_CapData_t CONST
seL4_CNode_CapData_new(seL4_Uint64 guard, seL4_Uint64 guardSize) {
    seL4_CNode_CapData_t seL4_CNode_CapData;

    /* fail if user has passed bits that we will override */  
    seL4_DebugAssert((guard & ~ULL_CONST(0x3ffffffffffffff)) == ((0 && (guard & (ULL_CONST(1) << 63))) ? 0x0 : 0));  
    seL4_DebugAssert((guardSize & ~ULL_CONST(0x3f)) == ((0 && (guardSize & (ULL_CONST(1) << 63))) ? 0x0 : 0));

    seL4_CNode_CapData.words[0] = 0
        | (guard & ULL_CONST(0x3ffffffffffffff)) << 6
        | (guardSize & ULL_CONST(0x3f)) << 0;

    return seL4_CNode_CapData;
}

LIBSEL4_INLINE_FUNC void
seL4_CNode_CapData_ptr_new(seL4_CNode_CapData_t *seL4_CNode_CapData_ptr, seL4_Uint64 guard, seL4_Uint64 guardSize) {
    /* fail if user has passed bits that we will override */  
    seL4_DebugAssert((guard & ~ULL_CONST(0x3ffffffffffffff)) == ((0 && (guard & (ULL_CONST(1) << 63))) ? 0x0 : 0));  
    seL4_DebugAssert((guardSize & ~ULL_CONST(0x3f)) == ((0 && (guardSize & (ULL_CONST(1) << 63))) ? 0x0 : 0));

    seL4_CNode_CapData_ptr->words[0] = 0
        | (guard & ULL_CONST(0x3ffffffffffffff)) << 6
        | (guardSize & ULL_CONST(0x3f)) << 0;
}

LIBSEL4_INLINE_FUNC seL4_Uint64 CONST
seL4_CNode_CapData_get_guard(seL4_CNode_CapData_t seL4_CNode_CapData) {
    seL4_Uint64 ret;
    ret = (seL4_CNode_CapData.words[0] & ULL_CONST(0xffffffffffffffc0)) >> 6;
    /* Possibly sign extend */
    if (__builtin_expect(!!(0 && (ret & (ULL_CONST(1) << (63)))), 0)) {
        ret |= 0x0;
    }
    return ret;
}

LIBSEL4_INLINE_FUNC seL4_CNode_CapData_t CONST
seL4_CNode_CapData_set_guard(seL4_CNode_CapData_t seL4_CNode_CapData, seL4_Uint64 v64) {
    /* fail if user has passed bits that we will override */
    seL4_DebugAssert((((~ULL_CONST(0xffffffffffffffc0) >> 6 ) | 0x0) & v64) == ((0 && (v64 & (ULL_CONST(1) << (63)))) ? 0x0 : 0));
    seL4_CNode_CapData.words[0] &= ~ULL_CONST(0xffffffffffffffc0);
    seL4_CNode_CapData.words[0] |= (v64 << 6) & ULL_CONST(0xffffffffffffffc0);
    return seL4_CNode_CapData;
}

LIBSEL4_INLINE_FUNC seL4_Uint64 PURE
seL4_CNode_CapData_ptr_get_guard(seL4_CNode_CapData_t *seL4_CNode_CapData_ptr) {
    seL4_Uint64 ret;
    ret = (seL4_CNode_CapData_ptr->words[0] & ULL_CONST(0xffffffffffffffc0)) >> 6;
    /* Possibly sign extend */
    if (__builtin_expect(!!(0 && (ret & (ULL_CONST(1) << (63)))), 0)) {
        ret |= 0x0;
    }
    return ret;
}

LIBSEL4_INLINE_FUNC void
seL4_CNode_CapData_ptr_set_guard(seL4_CNode_CapData_t *seL4_CNode_CapData_ptr, seL4_Uint64 v64) {
    /* fail if user has passed bits that we will override */
    seL4_DebugAssert((((~ULL_CONST(0xffffffffffffffc0) >> 6) | 0x0) & v64) == ((0 && (v64 & (ULL_CONST(1) << (63)))) ? 0x0 : 0));
    seL4_CNode_CapData_ptr->words[0] &= ~ULL_CONST(0xffffffffffffffc0);
    seL4_CNode_CapData_ptr->words[0] |= (v64 << 6) & 0xffffffffffffffc0;
}

LIBSEL4_INLINE_FUNC seL4_Uint64 CONST
seL4_CNode_CapData_get_guardSize(seL4_CNode_CapData_t seL4_CNode_CapData) {
    seL4_Uint64 ret;
    ret = (seL4_CNode_CapData.words[0] & ULL_CONST(0x3f)) >> 0;
    /* Possibly sign extend */
    if (__builtin_expect(!!(0 && (ret & (ULL_CONST(1) << (63)))), 0)) {
        ret |= 0x0;
    }
    return ret;
}

LIBSEL4_INLINE_FUNC seL4_CNode_CapData_t CONST
seL4_CNode_CapData_set_guardSize(seL4_CNode_CapData_t seL4_CNode_CapData, seL4_Uint64 v64) {
    /* fail if user has passed bits that we will override */
    seL4_DebugAssert((((~ULL_CONST(0x3f) >> 0 ) | 0x0) & v64) == ((0 && (v64 & (ULL_CONST(1) << (63)))) ? 0x0 : 0));
    seL4_CNode_CapData.words[0] &= ~ULL_CONST(0x3f);
    seL4_CNode_CapData.words[0] |= (v64 << 0) & ULL_CONST(0x3f);
    return seL4_CNode_CapData;
}

LIBSEL4_INLINE_FUNC seL4_Uint64 PURE
seL4_CNode_CapData_ptr_get_guardSize(seL4_CNode_CapData_t *seL4_CNode_CapData_ptr) {
    seL4_Uint64 ret;
    ret = (seL4_CNode_CapData_ptr->words[0] & ULL_CONST(0x3f)) >> 0;
    /* Possibly sign extend */
    if (__builtin_expect(!!(0 && (ret & (ULL_CONST(1) << (63)))), 0)) {
        ret |= 0x0;
    }
    return ret;
}

LIBSEL4_INLINE_FUNC void
seL4_CNode_CapData_ptr_set_guardSize(seL4_CNode_CapData_t *seL4_CNode_CapData_ptr, seL4_Uint64 v64) {
    /* fail if user has passed bits that we will override */
    seL4_DebugAssert((((~ULL_CONST(0x3f) >> 0) | 0x0) & v64) == ((0 && (v64 & (ULL_CONST(1) << (63)))) ? 0x0 : 0));
    seL4_CNode_CapData_ptr->words[0] &= ~ULL_CONST(0x3f);
    seL4_CNode_CapData_ptr->words[0] |= (v64 << 0) & 0x3f;
}

struct seL4_CapRights {
    seL4_Uint64 words[1];
};
typedef struct seL4_CapRights seL4_CapRights_t;

LIBSEL4_INLINE_FUNC seL4_CapRights_t CONST
seL4_CapRights_new(seL4_Uint64 capAllowGrantReply, seL4_Uint64 capAllowGrant, seL4_Uint64 capAllowRead, seL4_Uint64 capAllowWrite) {
    seL4_CapRights_t seL4_CapRights;

    /* fail if user has passed bits that we will override */  
    seL4_DebugAssert((capAllowGrantReply & ~ULL_CONST(0x1)) == ((0 && (capAllowGrantReply & (ULL_CONST(1) << 63))) ? 0x0 : 0));  
    seL4_DebugAssert((capAllowGrant & ~ULL_CONST(0x1)) == ((0 && (capAllowGrant & (ULL_CONST(1) << 63))) ? 0x0 : 0));  
    seL4_DebugAssert((capAllowRead & ~ULL_CONST(0x1)) == ((0 && (capAllowRead & (ULL_CONST(1) << 63))) ? 0x0 : 0));  
    seL4_DebugAssert((capAllowWrite & ~ULL_CONST(0x1)) == ((0 && (capAllowWrite & (ULL_CONST(1) << 63))) ? 0x0 : 0));

    seL4_CapRights.words[0] = 0
        | (capAllowGrantReply & ULL_CONST(0x1)) << 3
        | (capAllowGrant & ULL_CONST(0x1)) << 2
        | (capAllowRead & ULL_CONST(0x1)) << 1
        | (capAllowWrite & ULL_CONST(0x1)) << 0;

    return seL4_CapRights;
}

LIBSEL4_INLINE_FUNC void
seL4_CapRights_ptr_new(seL4_CapRights_t *seL4_CapRights_ptr, seL4_Uint64 capAllowGrantReply, seL4_Uint64 capAllowGrant, seL4_Uint64 capAllowRead, seL4_Uint64 capAllowWrite) {
    /* fail if user has passed bits that we will override */  
    seL4_DebugAssert((capAllowGrantReply & ~ULL_CONST(0x1)) == ((0 && (capAllowGrantReply & (ULL_CONST(1) << 63))) ? 0x0 : 0));  
    seL4_DebugAssert((capAllowGrant & ~ULL_CONST(0x1)) == ((0 && (capAllowGrant & (ULL_CONST(1) << 63))) ? 0x0 : 0));  
    seL4_DebugAssert((capAllowRead & ~ULL_CONST(0x1)) == ((0 && (capAllowRead & (ULL_CONST(1) << 63))) ? 0x0 : 0));  
    seL4_DebugAssert((capAllowWrite & ~ULL_CONST(0x1)) == ((0 && (capAllowWrite & (ULL_CONST(1) << 63))) ? 0x0 : 0));

    seL4_CapRights_ptr->words[0] = 0
        | (capAllowGrantReply & ULL_CONST(0x1)) << 3
        | (capAllowGrant & ULL_CONST(0x1)) << 2
        | (capAllowRead & ULL_CONST(0x1)) << 1
        | (capAllowWrite & ULL_CONST(0x1)) << 0;
}

LIBSEL4_INLINE_FUNC seL4_Uint64 CONST
seL4_CapRights_get_capAllowGrantReply(seL4_CapRights_t seL4_CapRights) {
    seL4_Uint64 ret;
    ret = (seL4_CapRights.words[0] & ULL_CONST(0x8)) >> 3;
    /* Possibly sign extend */
    if (__builtin_expect(!!(0 && (ret & (ULL_CONST(1) << (63)))), 0)) {
        ret |= 0x0;
    }
    return ret;
}

LIBSEL4_INLINE_FUNC seL4_CapRights_t CONST
seL4_CapRights_set_capAllowGrantReply(seL4_CapRights_t seL4_CapRights, seL4_Uint64 v64) {
    /* fail if user has passed bits that we will override */
    seL4_DebugAssert((((~ULL_CONST(0x8) >> 3 ) | 0x0) & v64) == ((0 && (v64 & (ULL_CONST(1) << (63)))) ? 0x0 : 0));
    seL4_CapRights.words[0] &= ~ULL_CONST(0x8);
    seL4_CapRights.words[0] |= (v64 << 3) & ULL_CONST(0x8);
    return seL4_CapRights;
}

LIBSEL4_INLINE_FUNC seL4_Uint64 PURE
seL4_CapRights_ptr_get_capAllowGrantReply(seL4_CapRights_t *seL4_CapRights_ptr) {
    seL4_Uint64 ret;
    ret = (seL4_CapRights_ptr->words[0] & ULL_CONST(0x8)) >> 3;
    /* Possibly sign extend */
    if (__builtin_expect(!!(0 && (ret & (ULL_CONST(1) << (63)))), 0)) {
        ret |= 0x0;
    }
    return ret;
}

LIBSEL4_INLINE_FUNC void
seL4_CapRights_ptr_set_capAllowGrantReply(seL4_CapRights_t *seL4_CapRights_ptr, seL4_Uint64 v64) {
    /* fail if user has passed bits that we will override */
    seL4_DebugAssert((((~ULL_CONST(0x8) >> 3) | 0x0) & v64) == ((0 && (v64 & (ULL_CONST(1) << (63)))) ? 0x0 : 0));
    seL4_CapRights_ptr->words[0] &= ~ULL_CONST(0x8);
    seL4_CapRights_ptr->words[0] |= (v64 << 3) & 0x8;
}

LIBSEL4_INLINE_FUNC seL4_Uint64 CONST
seL4_CapRights_get_capAllowGrant(seL4_CapRights_t seL4_CapRights) {
    seL4_Uint64 ret;
    ret = (seL4_CapRights.words[0] & ULL_CONST(0x4)) >> 2;
    /* Possibly sign extend */
    if (__builtin_expect(!!(0 && (ret & (ULL_CONST(1) << (63)))), 0)) {
        ret |= 0x0;
    }
    return ret;
}

LIBSEL4_INLINE_FUNC seL4_CapRights_t CONST
seL4_CapRights_set_capAllowGrant(seL4_CapRights_t seL4_CapRights, seL4_Uint64 v64) {
    /* fail if user has passed bits that we will override */
    seL4_DebugAssert((((~ULL_CONST(0x4) >> 2 ) | 0x0) & v64) == ((0 && (v64 & (ULL_CONST(1) << (63)))) ? 0x0 : 0));
    seL4_CapRights.words[0] &= ~ULL_CONST(0x4);
    seL4_CapRights.words[0] |= (v64 << 2) & ULL_CONST(0x4);
    return seL4_CapRights;
}

LIBSEL4_INLINE_FUNC seL4_Uint64 PURE
seL4_CapRights_ptr_get_capAllowGrant(seL4_CapRights_t *seL4_CapRights_ptr) {
    seL4_Uint64 ret;
    ret = (seL4_CapRights_ptr->words[0] & ULL_CONST(0x4)) >> 2;
    /* Possibly sign extend */
    if (__builtin_expect(!!(0 && (ret & (ULL_CONST(1) << (63)))), 0)) {
        ret |= 0x0;
    }
    return ret;
}

LIBSEL4_INLINE_FUNC void
seL4_CapRights_ptr_set_capAllowGrant(seL4_CapRights_t *seL4_CapRights_ptr, seL4_Uint64 v64) {
    /* fail if user has passed bits that we will override */
    seL4_DebugAssert((((~ULL_CONST(0x4) >> 2) | 0x0) & v64) == ((0 && (v64 & (ULL_CONST(1) << (63)))) ? 0x0 : 0));
    seL4_CapRights_ptr->words[0] &= ~ULL_CONST(0x4);
    seL4_CapRights_ptr->words[0] |= (v64 << 2) & 0x4;
}

LIBSEL4_INLINE_FUNC seL4_Uint64 CONST
seL4_CapRights_get_capAllowRead(seL4_CapRights_t seL4_CapRights) {
    seL4_Uint64 ret;
    ret = (seL4_CapRights.words[0] & ULL_CONST(0x2)) >> 1;
    /* Possibly sign extend */
    if (__builtin_expect(!!(0 && (ret & (ULL_CONST(1) << (63)))), 0)) {
        ret |= 0x0;
    }
    return ret;
}

LIBSEL4_INLINE_FUNC seL4_CapRights_t CONST
seL4_CapRights_set_capAllowRead(seL4_CapRights_t seL4_CapRights, seL4_Uint64 v64) {
    /* fail if user has passed bits that we will override */
    seL4_DebugAssert((((~ULL_CONST(0x2) >> 1 ) | 0x0) & v64) == ((0 && (v64 & (ULL_CONST(1) << (63)))) ? 0x0 : 0));
    seL4_CapRights.words[0] &= ~ULL_CONST(0x2);
    seL4_CapRights.words[0] |= (v64 << 1) & ULL_CONST(0x2);
    return seL4_CapRights;
}

LIBSEL4_INLINE_FUNC seL4_Uint64 PURE
seL4_CapRights_ptr_get_capAllowRead(seL4_CapRights_t *seL4_CapRights_ptr) {
    seL4_Uint64 ret;
    ret = (seL4_CapRights_ptr->words[0] & ULL_CONST(0x2)) >> 1;
    /* Possibly sign extend */
    if (__builtin_expect(!!(0 && (ret & (ULL_CONST(1) << (63)))), 0)) {
        ret |= 0x0;
    }
    return ret;
}

LIBSEL4_INLINE_FUNC void
seL4_CapRights_ptr_set_capAllowRead(seL4_CapRights_t *seL4_CapRights_ptr, seL4_Uint64 v64) {
    /* fail if user has passed bits that we will override */
    seL4_DebugAssert((((~ULL_CONST(0x2) >> 1) | 0x0) & v64) == ((0 && (v64 & (ULL_CONST(1) << (63)))) ? 0x0 : 0));
    seL4_CapRights_ptr->words[0] &= ~ULL_CONST(0x2);
    seL4_CapRights_ptr->words[0] |= (v64 << 1) & 0x2;
}

LIBSEL4_INLINE_FUNC seL4_Uint64 CONST
seL4_CapRights_get_capAllowWrite(seL4_CapRights_t seL4_CapRights) {
    seL4_Uint64 ret;
    ret = (seL4_CapRights.words[0] & ULL_CONST(0x1)) >> 0;
    /* Possibly sign extend */
    if (__builtin_expect(!!(0 && (ret & (ULL_CONST(1) << (63)))), 0)) {
        ret |= 0x0;
    }
    return ret;
}

LIBSEL4_INLINE_FUNC seL4_CapRights_t CONST
seL4_CapRights_set_capAllowWrite(seL4_CapRights_t seL4_CapRights, seL4_Uint64 v64) {
    /* fail if user has passed bits that we will override */
    seL4_DebugAssert((((~ULL_CONST(0x1) >> 0 ) | 0x0) & v64) == ((0 && (v64 & (ULL_CONST(1) << (63)))) ? 0x0 : 0));
    seL4_CapRights.words[0] &= ~ULL_CONST(0x1);
    seL4_CapRights.words[0] |= (v64 << 0) & ULL_CONST(0x1);
    return seL4_CapRights;
}

LIBSEL4_INLINE_FUNC seL4_Uint64 PURE
seL4_CapRights_ptr_get_capAllowWrite(seL4_CapRights_t *seL4_CapRights_ptr) {
    seL4_Uint64 ret;
    ret = (seL4_CapRights_ptr->words[0] & ULL_CONST(0x1)) >> 0;
    /* Possibly sign extend */
    if (__builtin_expect(!!(0 && (ret & (ULL_CONST(1) << (63)))), 0)) {
        ret |= 0x0;
    }
    return ret;
}

LIBSEL4_INLINE_FUNC void
seL4_CapRights_ptr_set_capAllowWrite(seL4_CapRights_t *seL4_CapRights_ptr, seL4_Uint64 v64) {
    /* fail if user has passed bits that we will override */
    seL4_DebugAssert((((~ULL_CONST(0x1) >> 0) | 0x0) & v64) == ((0 && (v64 & (ULL_CONST(1) << (63)))) ? 0x0 : 0));
    seL4_CapRights_ptr->words[0] &= ~ULL_CONST(0x1);
    seL4_CapRights_ptr->words[0] |= (v64 << 0) & 0x1;
}

struct seL4_MessageInfo {
    seL4_Uint64 words[1];
};
typedef struct seL4_MessageInfo seL4_MessageInfo_t;

LIBSEL4_INLINE_FUNC seL4_MessageInfo_t CONST
seL4_MessageInfo_new(seL4_Uint64 label, seL4_Uint64 capsUnwrapped, seL4_Uint64 extraCaps, seL4_Uint64 length) {
    seL4_MessageInfo_t seL4_MessageInfo;

    /* fail if user has passed bits that we will override */  
    seL4_DebugAssert((label & ~ULL_CONST(0xfffffffffffff)) == ((0 && (label & (ULL_CONST(1) << 63))) ? 0x0 : 0));  
    seL4_DebugAssert((capsUnwrapped & ~ULL_CONST(0x7)) == ((0 && (capsUnwrapped & (ULL_CONST(1) << 63))) ? 0x0 : 0));  
    seL4_DebugAssert((extraCaps & ~ULL_CONST(0x3)) == ((0 && (extraCaps & (ULL_CONST(1) << 63))) ? 0x0 : 0));  
    seL4_DebugAssert((length & ~ULL_CONST(0x7f)) == ((0 && (length & (ULL_CONST(1) << 63))) ? 0x0 : 0));

    seL4_MessageInfo.words[0] = 0
        | (label & ULL_CONST(0xfffffffffffff)) << 12
        | (capsUnwrapped & ULL_CONST(0x7)) << 9
        | (extraCaps & ULL_CONST(0x3)) << 7
        | (length & ULL_CONST(0x7f)) << 0;

    return seL4_MessageInfo;
}

LIBSEL4_INLINE_FUNC void
seL4_MessageInfo_ptr_new(seL4_MessageInfo_t *seL4_MessageInfo_ptr, seL4_Uint64 label, seL4_Uint64 capsUnwrapped, seL4_Uint64 extraCaps, seL4_Uint64 length) {
    /* fail if user has passed bits that we will override */  
    seL4_DebugAssert((label & ~ULL_CONST(0xfffffffffffff)) == ((0 && (label & (ULL_CONST(1) << 63))) ? 0x0 : 0));  
    seL4_DebugAssert((capsUnwrapped & ~ULL_CONST(0x7)) == ((0 && (capsUnwrapped & (ULL_CONST(1) << 63))) ? 0x0 : 0));  
    seL4_DebugAssert((extraCaps & ~ULL_CONST(0x3)) == ((0 && (extraCaps & (ULL_CONST(1) << 63))) ? 0x0 : 0));  
    seL4_DebugAssert((length & ~ULL_CONST(0x7f)) == ((0 && (length & (ULL_CONST(1) << 63))) ? 0x0 : 0));

    seL4_MessageInfo_ptr->words[0] = 0
        | (label & ULL_CONST(0xfffffffffffff)) << 12
        | (capsUnwrapped & ULL_CONST(0x7)) << 9
        | (extraCaps & ULL_CONST(0x3)) << 7
        | (length & ULL_CONST(0x7f)) << 0;
}

LIBSEL4_INLINE_FUNC seL4_Uint64 CONST
seL4_MessageInfo_get_label(seL4_MessageInfo_t seL4_MessageInfo) {
    seL4_Uint64 ret;
    ret = (seL4_MessageInfo.words[0] & ULL_CONST(0xfffffffffffff000)) >> 12;
    /* Possibly sign extend */
    if (__builtin_expect(!!(0 && (ret & (ULL_CONST(1) << (63)))), 0)) {
        ret |= 0x0;
    }
    return ret;
}

LIBSEL4_INLINE_FUNC seL4_MessageInfo_t CONST
seL4_MessageInfo_set_label(seL4_MessageInfo_t seL4_MessageInfo, seL4_Uint64 v64) {
    /* fail if user has passed bits that we will override */
    seL4_DebugAssert((((~ULL_CONST(0xfffffffffffff000) >> 12 ) | 0x0) & v64) == ((0 && (v64 & (ULL_CONST(1) << (63)))) ? 0x0 : 0));
    seL4_MessageInfo.words[0] &= ~ULL_CONST(0xfffffffffffff000);
    seL4_MessageInfo.words[0] |= (v64 << 12) & ULL_CONST(0xfffffffffffff000);
    return seL4_MessageInfo;
}

LIBSEL4_INLINE_FUNC seL4_Uint64 PURE
seL4_MessageInfo_ptr_get_label(seL4_MessageInfo_t *seL4_MessageInfo_ptr) {
    seL4_Uint64 ret;
    ret = (seL4_MessageInfo_ptr->words[0] & ULL_CONST(0xfffffffffffff000)) >> 12;
    /* Possibly sign extend */
    if (__builtin_expect(!!(0 && (ret & (ULL_CONST(1) << (63)))), 0)) {
        ret |= 0x0;
    }
    return ret;
}

LIBSEL4_INLINE_FUNC void
seL4_MessageInfo_ptr_set_label(seL4_MessageInfo_t *seL4_MessageInfo_ptr, seL4_Uint64 v64) {
    /* fail if user has passed bits that we will override */
    seL4_DebugAssert((((~ULL_CONST(0xfffffffffffff000) >> 12) | 0x0) & v64) == ((0 && (v64 & (ULL_CONST(1) << (63)))) ? 0x0 : 0));
    seL4_MessageInfo_ptr->words[0] &= ~ULL_CONST(0xfffffffffffff000);
    seL4_MessageInfo_ptr->words[0] |= (v64 << 12) & 0xfffffffffffff000;
}

LIBSEL4_INLINE_FUNC seL4_Uint64 CONST
seL4_MessageInfo_get_capsUnwrapped(seL4_MessageInfo_t seL4_MessageInfo) {
    seL4_Uint64 ret;
    ret = (seL4_MessageInfo.words[0] & ULL_CONST(0xe00)) >> 9;
    /* Possibly sign extend */
    if (__builtin_expect(!!(0 && (ret & (ULL_CONST(1) << (63)))), 0)) {
        ret |= 0x0;
    }
    return ret;
}

LIBSEL4_INLINE_FUNC seL4_MessageInfo_t CONST
seL4_MessageInfo_set_capsUnwrapped(seL4_MessageInfo_t seL4_MessageInfo, seL4_Uint64 v64) {
    /* fail if user has passed bits that we will override */
    seL4_DebugAssert((((~ULL_CONST(0xe00) >> 9 ) | 0x0) & v64) == ((0 && (v64 & (ULL_CONST(1) << (63)))) ? 0x0 : 0));
    seL4_MessageInfo.words[0] &= ~ULL_CONST(0xe00);
    seL4_MessageInfo.words[0] |= (v64 << 9) & ULL_CONST(0xe00);
    return seL4_MessageInfo;
}

LIBSEL4_INLINE_FUNC seL4_Uint64 PURE
seL4_MessageInfo_ptr_get_capsUnwrapped(seL4_MessageInfo_t *seL4_MessageInfo_ptr) {
    seL4_Uint64 ret;
    ret = (seL4_MessageInfo_ptr->words[0] & ULL_CONST(0xe00)) >> 9;
    /* Possibly sign extend */
    if (__builtin_expect(!!(0 && (ret & (ULL_CONST(1) << (63)))), 0)) {
        ret |= 0x0;
    }
    return ret;
}

LIBSEL4_INLINE_FUNC void
seL4_MessageInfo_ptr_set_capsUnwrapped(seL4_MessageInfo_t *seL4_MessageInfo_ptr, seL4_Uint64 v64) {
    /* fail if user has passed bits that we will override */
    seL4_DebugAssert((((~ULL_CONST(0xe00) >> 9) | 0x0) & v64) == ((0 && (v64 & (ULL_CONST(1) << (63)))) ? 0x0 : 0));
    seL4_MessageInfo_ptr->words[0] &= ~ULL_CONST(0xe00);
    seL4_MessageInfo_ptr->words[0] |= (v64 << 9) & 0xe00;
}

LIBSEL4_INLINE_FUNC seL4_Uint64 CONST
seL4_MessageInfo_get_extraCaps(seL4_MessageInfo_t seL4_MessageInfo) {
    seL4_Uint64 ret;
    ret = (seL4_MessageInfo.words[0] & ULL_CONST(0x180)) >> 7;
    /* Possibly sign extend */
    if (__builtin_expect(!!(0 && (ret & (ULL_CONST(1) << (63)))), 0)) {
        ret |= 0x0;
    }
    return ret;
}

LIBSEL4_INLINE_FUNC seL4_MessageInfo_t CONST
seL4_MessageInfo_set_extraCaps(seL4_MessageInfo_t seL4_MessageInfo, seL4_Uint64 v64) {
    /* fail if user has passed bits that we will override */
    seL4_DebugAssert((((~ULL_CONST(0x180) >> 7 ) | 0x0) & v64) == ((0 && (v64 & (ULL_CONST(1) << (63)))) ? 0x0 : 0));
    seL4_MessageInfo.words[0] &= ~ULL_CONST(0x180);
    seL4_MessageInfo.words[0] |= (v64 << 7) & ULL_CONST(0x180);
    return seL4_MessageInfo;
}

LIBSEL4_INLINE_FUNC seL4_Uint64 PURE
seL4_MessageInfo_ptr_get_extraCaps(seL4_MessageInfo_t *seL4_MessageInfo_ptr) {
    seL4_Uint64 ret;
    ret = (seL4_MessageInfo_ptr->words[0] & ULL_CONST(0x180)) >> 7;
    /* Possibly sign extend */
    if (__builtin_expect(!!(0 && (ret & (ULL_CONST(1) << (63)))), 0)) {
        ret |= 0x0;
    }
    return ret;
}

LIBSEL4_INLINE_FUNC void
seL4_MessageInfo_ptr_set_extraCaps(seL4_MessageInfo_t *seL4_MessageInfo_ptr, seL4_Uint64 v64) {
    /* fail if user has passed bits that we will override */
    seL4_DebugAssert((((~ULL_CONST(0x180) >> 7) | 0x0) & v64) == ((0 && (v64 & (ULL_CONST(1) << (63)))) ? 0x0 : 0));
    seL4_MessageInfo_ptr->words[0] &= ~ULL_CONST(0x180);
    seL4_MessageInfo_ptr->words[0] |= (v64 << 7) & 0x180;
}

LIBSEL4_INLINE_FUNC seL4_Uint64 CONST
seL4_MessageInfo_get_length(seL4_MessageInfo_t seL4_MessageInfo) {
    seL4_Uint64 ret;
    ret = (seL4_MessageInfo.words[0] & ULL_CONST(0x7f)) >> 0;
    /* Possibly sign extend */
    if (__builtin_expect(!!(0 && (ret & (ULL_CONST(1) << (63)))), 0)) {
        ret |= 0x0;
    }
    return ret;
}

LIBSEL4_INLINE_FUNC seL4_MessageInfo_t CONST
seL4_MessageInfo_set_length(seL4_MessageInfo_t seL4_MessageInfo, seL4_Uint64 v64) {
    /* fail if user has passed bits that we will override */
    seL4_DebugAssert((((~ULL_CONST(0x7f) >> 0 ) | 0x0) & v64) == ((0 && (v64 & (ULL_CONST(1) << (63)))) ? 0x0 : 0));
    seL4_MessageInfo.words[0] &= ~ULL_CONST(0x7f);
    seL4_MessageInfo.words[0] |= (v64 << 0) & ULL_CONST(0x7f);
    return seL4_MessageInfo;
}

LIBSEL4_INLINE_FUNC seL4_Uint64 PURE
seL4_MessageInfo_ptr_get_length(seL4_MessageInfo_t *seL4_MessageInfo_ptr) {
    seL4_Uint64 ret;
    ret = (seL4_MessageInfo_ptr->words[0] & ULL_CONST(0x7f)) >> 0;
    /* Possibly sign extend */
    if (__builtin_expect(!!(0 && (ret & (ULL_CONST(1) << (63)))), 0)) {
        ret |= 0x0;
    }
    return ret;
}

LIBSEL4_INLINE_FUNC void
seL4_MessageInfo_ptr_set_length(seL4_MessageInfo_t *seL4_MessageInfo_ptr, seL4_Uint64 v64) {
    /* fail if user has passed bits that we will override */
    seL4_DebugAssert((((~ULL_CONST(0x7f) >> 0) | 0x0) & v64) == ((0 && (v64 & (ULL_CONST(1) << (63)))) ? 0x0 : 0));
    seL4_MessageInfo_ptr->words[0] &= ~ULL_CONST(0x7f);
    seL4_MessageInfo_ptr->words[0] |= (v64 << 0) & 0x7f;
}

