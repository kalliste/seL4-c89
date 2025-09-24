/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * SPDX-License-Identifier: GPL-2.0-only
 */

#pragma once

#include <mode/stdint.h>

typedef unsigned char uint8_t;
typedef unsigned short uint16_t;
typedef unsigned int uint32_t;

typedef signed char int8_t;
typedef signed short int16_t;
typedef signed int int32_t;

#if defined(__SIZEOF_LONG__) && (__SIZEOF_LONG__ >= 8)
typedef unsigned long uint64_t;
typedef signed long int64_t;
#else
#error "C89 configuration requires 64-bit 'long' support for uint64_t"
#endif

#define UINT64_MAX ((uint64_t)-1)
#define UINT32_MAX (0xFFFFFFFFU)
#define INT64_MAX  ((int64_t)(UINT64_MAX >> 1))
#define INT32_MAX  (0x7FFFFFFF)

typedef uint64_t    uintmax_t;
typedef int64_t     intmax_t;

#define INTMAX_MAX  INT64_MAX
#define UINTMAX_MAX UINT64_MAX

#define PRId64     "ld"
#define PRIi64     "li"
#define PRIu64     "lu"
#define PRIx64     "lx"
