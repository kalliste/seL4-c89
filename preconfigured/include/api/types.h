/*
 * Copyright 2014, General Dynamics C4 Systems
 *
 * SPDX-License-Identifier: GPL-2.0-only
 */

#pragma once

#include <config.h>
#include <stdint.h>
#include <util.h>
#include <stdarg.h>
#include <sel4/simple_types.h>
#include <sel4/shared_types_gen.h>
#include <arch/api/types.h>
#include <arch/types.h>
#include <sel4/macros.h>
#include <sel4/constants.h>
#include <sel4/shared_types.h>
#include <machine/io.h>

/* seL4_CapRights_t defined in mode/api/shared_types.bf */

typedef word_t prio_t;

/* The kernel uses ticks_t internally to represent time to make it easy to
 * interact with hardware timers. The userland API uses time in micro seconds,
 * which is represented by time_t in the kernel.
 */
typedef uint64_t ticks_t;
typedef uint64_t time_t;

enum domainConstants {
    minDom = 0,
    maxDom = CONFIG_NUM_DOMAINS - 1,
    /* To analyse branches of control flow decisions based on the number of
     * domains without knowing their exact number, verification needs a C name
     * to relate to higher-level specs. */
    numDomains = CONFIG_NUM_DOMAINS
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

static inline seL4_CapRights_t CONST rightsFromWord(word_t w)
{
    seL4_CapRights_t seL4_CapRights;

    seL4_CapRights.words[0] = w;
    return seL4_CapRights;
}

static inline word_t CONST wordFromRights(seL4_CapRights_t seL4_CapRights)
{
    return seL4_CapRights.words[0] & MASK(seL4_CapRightsBits);
}

static inline cap_transfer_t PURE capTransferFromWords(word_t *wptr)
{
    cap_transfer_t transfer;

    transfer.ctReceiveRoot  = (cptr_t)wptr[0];
    transfer.ctReceiveIndex = (cptr_t)wptr[1];
    transfer.ctReceiveDepth = wptr[2];
    return transfer;
}

static inline seL4_MessageInfo_t CONST messageInfoFromWord_raw(word_t w)
{
    seL4_MessageInfo_t mi;

    mi.words[0] = w;
    return mi;
}

static inline seL4_MessageInfo_t CONST messageInfoFromWord(word_t w)
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

static inline word_t CONST wordFromMessageInfo(seL4_MessageInfo_t mi)
{
    return mi.words[0];
}

#ifdef CONFIG_PRINTING
#ifdef CONFIG_COLOUR_PRINTING
#define ANSI_RESET "\033[0m"
#define ANSI_GREEN ANSI_RESET "\033[32m"
#define ANSI_BOLD  ANSI_RESET "\033[1m"
#else
#define ANSI_RESET ""
#define ANSI_GREEN ANSI_RESET ""
#define ANSI_BOLD  ANSI_RESET ""
#endif

/*
 * thread name is only available if the kernel is built in debug mode.
 */
#ifdef CONFIG_DEBUG_BUILD
#define THREAD_NAME TCB_PTR_DEBUG_PTR(NODE_STATE(ksCurThread))->tcbName
#else
#define THREAD_NAME ""
#endif

#ifdef CONFIG_KERNEL_INVOCATION_REPORT_ERROR_IPC
extern struct debug_syscall_error current_debug_error;

static inline int out_error_vformat(const char *format, va_list args)
{
    return impl_ksnvprintf((char *)current_debug_error.errorMessage,
                           DEBUG_MESSAGE_MAXLEN * sizeof(word_t),
                           format, args);
}
#else
static inline int out_error_vformat(const char *format, va_list args)
{
    return impl_kvprintf(format, args);
}
#endif

static inline SEL4_PRINTF_ATTR(1, 2) int out_error(const char *format, ...)
{
    va_list args;
    int ret;

    va_start(args, format);
    ret = out_error_vformat(format, args);
    va_end(args);

    return ret;
}

struct seL4_user_error_context {
    const char *function;
    unsigned int line;
};

static struct seL4_user_error_context seL4_user_error_context = {"", 0};

static inline void userError_set_context(const char *function, unsigned int line)
{
    seL4_user_error_context.function = function;
    seL4_user_error_context.line = line;
}

static inline void userError_vemit(const char *message, va_list args)
{
    char formatted_message[DEBUG_MESSAGE_MAXLEN * sizeof(word_t)];
    int length;

    length = impl_ksnvprintf(formatted_message,
                             DEBUG_MESSAGE_MAXLEN * sizeof(word_t),
                             message,
                             args);
    if (length < 0) {
        formatted_message[0] = '\0';
    } else if ((word_t)length >= DEBUG_MESSAGE_MAXLEN * sizeof(word_t)) {
        formatted_message[DEBUG_MESSAGE_MAXLEN * sizeof(word_t) - 1] = '\0';
    }

    out_error(ANSI_BOLD "<<" ANSI_GREEN "seL4(CPU %" SEL4_PRIu_word ")"
              ANSI_BOLD " [%s/%u T%p \"%s\" @%lx]: %s>>" ANSI_RESET "\n",
              CURRENT_CPU_INDEX(),
              seL4_user_error_context.function,
              seL4_user_error_context.line,
              NODE_STATE(ksCurThread),
              THREAD_NAME,
              (word_t)getRestartPC(NODE_STATE(ksCurThread)),
              formatted_message);
}

static inline SEL4_PRINTF_ATTR(1, 2) void userError_emit(const char *message, ...)
{
    va_list args;

    va_start(args, message);
    userError_vemit(message, args);
    va_end(args);
}

#define userError \
    (userError_set_context(__func__, (unsigned int)__LINE__), userError_emit)
#else /* !CONFIG_PRINTING */
static inline void userError_emit(const char *message, ...)
{
    (void)message;
}

#define userError userError_emit
#endif

