# C89 Porting Project

## Overview
We are exploring the changes required to build the preconfigured seL4 kernel sources
with a compiler restricted to C89/C90 compliance. The first step is to force the
existing replay build script to use strict C90 flags and then catalogue the
resulting compiler diagnostics.

## Status
- [x] Update `preconfigured/replay_preconfigured_build.sh` to compile with
  `-std=c90 -pedantic -Wall -Wextra` (keeping the original CFLAGS commented).
- [x] Run the replay build to capture the resulting diagnostics.
- [ ] Update the source tree to resolve the new C90 compilation issues.

## Build Attempt Summary
- **Command**: `./preconfigured/replay_preconfigured_build.sh`
- **Outcome**: The build stops during preprocessing/compilation of generated and
  header sources due to strict C90 semantics.

### Key Diagnostic Themes
1. **`inline` keyword unavailable**: Hundreds of functions declared with
   `static inline` now emit "unknown type name 'inline'" or related parsing
   errors. This cascades into additional errors such as missing typedefs and
   unresolved identifiers because the compiler stops parsing the affected
   declarations.
   - *Potential remedies*: provide a portability shim (e.g. define
     `#define inline __inline__` or introduce a project-local `INLINE`
     macro), or refactor headers so that the affected helpers are guarded by a
     compiler feature check.
2. **Attribute macros rejected by `-pedantic`**: Macros such as `CONST` expand to
   GNU attributes. With `-pedantic` the compiler reports "attribute ignored"
   warnings which escalate to errors via `-Werror`.
   - *Potential remedies*: conditionally define these macros to empty for strict
     C90 builds, or adjust `-Werror` usage while porting.
3. **Implicit-int / missing type specifier fallout**: Because `inline` is not
   recognized, the compiler falls back to implicit `int`, triggering
   `-Werror=implicit-int`, and the declarations following these keywords are
   skipped, leading to missing-type diagnostics for `word_t`, `bool_t`, etc.
   - *Potential remedies*: once the `inline` keyword is handled, these cascaded
     errors should disappear. Additional typedefs may need explicit forward
     declarations to satisfy C89 rules.
4. **`control reaches end of non-void function`**: Certain inline assembly
   helpers (e.g. `read_cr3`) rely on compiler extensions and now trigger return
   warnings under `-pedantic`/`-Wextra`.
   - *Potential remedies*: rewrite these helpers using standard-compliant
     idioms or add explicit `return` statements where appropriate.

## Next Steps
- Introduce compatibility macros for `inline` and attribute annotations when
  compiling in C89 mode.
- Re-run the build to confirm which diagnostics remain once parsing succeeds.
- Iterate on remaining incompatibilities (e.g. assembly helpers, bool/true/false
  replacements) as part of the broader port.
