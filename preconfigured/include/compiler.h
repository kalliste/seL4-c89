/*
 * Compatibility macros for compilers that enforce strict C89/C90 semantics.
 *
 * SPDX-License-Identifier: GPL-2.0-only
 */

#pragma once

/* Determine whether we are targeting a pre-C99 dialect. */
#if defined(__STDC_VERSION__)
#define SEL4_STDC_VERSION __STDC_VERSION__
#else
#define SEL4_STDC_VERSION 0L
#endif

#if SEL4_STDC_VERSION >= 199901L
#define SEL4_C89_COMPAT 0
#else
#define SEL4_C89_COMPAT 1
#endif

#if SEL4_C89_COMPAT && !defined(__cplusplus)
#ifndef inline
#if defined(__GNUC__)
#define inline __inline__
#else
#define inline
#endif
#endif
#endif

#if SEL4_C89_COMPAT
#define SEL4_ATTR(attrs)
#else
#define SEL4_ATTR(attrs) __attribute__ attrs
#endif

#define SEL4_INLINE inline
#define SEL4_STATIC_INLINE static inline
#define SEL4_FORCE_INLINE SEL4_ATTR((always_inline))
#define SEL4_NORETURN_ATTR SEL4_ATTR((__noreturn__))
#define SEL4_CONST_ATTR SEL4_ATTR((__const__))
#define SEL4_PURE_ATTR SEL4_ATTR((__pure__))
#define SEL4_ALIGN_ATTR(n) SEL4_ATTR((__aligned__(n)))
#if SEL4_C89_COMPAT && (defined(__GNUC__) || defined(__clang__))
#define SEL4_PACKED_ATTR __attribute__((packed))
#else
#define SEL4_PACKED_ATTR SEL4_ATTR((packed))
#endif
#define SEL4_SECTION_ATTR(sec) SEL4_ATTR((__section__(sec)))
#define SEL4_UNUSED_ATTR SEL4_ATTR((unused))
#define SEL4_USED_ATTR SEL4_ATTR((used))
#define SEL4_WEAK_ATTR SEL4_ATTR((weak))
#define SEL4_FASTCALL_ATTR SEL4_ATTR((fastcall))
#define SEL4_NAKED_ATTR SEL4_ATTR((naked))
#define SEL4_PRINTF_ATTR(fmt_index, first_arg) \
    SEL4_ATTR((format(printf, fmt_index, first_arg)))
#define SEL4_OPTIMIZE_ATTR(level) SEL4_ATTR((optimize(level)))
#define SEL4_EXTERNALLY_VISIBLE_ATTR SEL4_ATTR((externally_visible))
#define SEL4_MAY_ALIAS_ATTR SEL4_ATTR((may_alias))
