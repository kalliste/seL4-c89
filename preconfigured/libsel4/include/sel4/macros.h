/*
 * Copyright 2020, Data61, CSIRO (ABN 41 687 119 230)
 *
 * SPDX-License-Identifier: BSD-2-Clause
 */

#pragma once

#include <sel4/config.h>
#include <sel4/compiler.h>

#ifndef SEL4_PASTE
#define SEL4_PASTE(a, b) a ## b
#endif

#ifndef SEL4_STRINGIFY_HELPER
#define SEL4_STRINGIFY_HELPER(x) #x
#endif

#ifndef SEL4_STRINGIFY
#define SEL4_STRINGIFY(x) SEL4_STRINGIFY_HELPER(x)
#endif

#ifdef __ASSEMBLER__
#ifndef UL_CONST
#define UL_CONST(x) x
#endif
#ifndef ULL_CONST
#define ULL_CONST(x) x
#endif
#else
#ifndef UL_CONST
#define UL_CONST(x) SEL4_PASTE(x, ul)
#endif
#ifndef ULL_CONST
#define ULL_CONST(x) SEL4_PASTE(x, ul)
#endif
#endif

#ifndef CONST
#define CONST   SEL4_CONST_ATTR
#endif

#ifndef PURE
#define PURE    SEL4_PURE_ATTR
#endif

#define SEL4_PACKED             SEL4_PACKED_ATTR
#define SEL4_DEPRECATED(x)      SEL4_ATTR((deprecated(x)))
#define SEL4_DEPRECATE_MACRO(x) _Pragma("deprecated") x

#define LIBSEL4_UNUSED          SEL4_UNUSED_ATTR
#define LIBSEL4_WEAK            SEL4_WEAK_ATTR
#define LIBSEL4_NOINLINE        SEL4_ATTR((noinline))


#ifdef CONFIG_LIB_SEL4_INLINE_INVOCATIONS

#define LIBSEL4_INLINE          static inline
#define LIBSEL4_INLINE_FUNC     static inline

#elif defined(CONFIG_LIB_SEL4_PUBLIC_SYMBOLS)

#define LIBSEL4_INLINE          LIBSEL4_UNUSED LIBSEL4_WEAK
#define LIBSEL4_INLINE_FUNC     LIBSEL4_UNUSED LIBSEL4_WEAK

#else

#define LIBSEL4_INLINE          LIBSEL4_NOINLINE LIBSEL4_UNUSED LIBSEL4_WEAK
#define LIBSEL4_INLINE_FUNC     static inline

#endif

/* _Static_assert() is a c11 feature. Since the kernel is currently compiled
 * with c99, we have to emulate it. */
#if defined(__STDC_VERSION__) && (__STDC_VERSION__ >= 201112L)
#define SEL4_COMPILE_ASSERT(name, expr)   _Static_assert(expr, #name);
#else
#define SEL4_COMPILE_ASSERT(name, expr) \
    typedef int __assert_failed_##name[(expr) ? 1 : -1] LIBSEL4_UNUSED;
#endif


#define SEL4_SIZE_SANITY(index, entry, size) \
    SEL4_COMPILE_ASSERT(index##_##entry##_##size, (index) + (entry) == size)


/*
 * Some compilers attempt to pack enums into the smallest possible type.
 * For ABI compatibility with the kernel, we need to ensure they remain
 * the same size as a 'long'.
 */
#define SEL4_FORCE_LONG_ENUM(type) \
    _enum_pad_ ## type = ((long)((~0ul) >> 1))

#define LIBSEL4_BIT(n)  (1ul<<(n))
