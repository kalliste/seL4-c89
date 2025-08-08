file(REMOVE_RECURSE
  "CMakeFiles/linker_ld_wrapper_copy_in"
  "gen_headers/api/invocation.h"
  "gen_headers/arch/api/invocation.h"
  "gen_headers/arch/api/sel4_invocation.h"
  "gen_headers/arch/api/syscall.h"
  "generated/arch/object/structures.bf.pbf"
  "generated/arch/object/structures_gen.h"
  "generated/invocations_all.json"
  "generated/plat_mode/machine/hardware.bf.pbf"
  "generated/plat_mode/machine/hardware_gen.h"
  "generated/sel4/shared_types.bf.pbf"
  "generated/sel4/shared_types_gen.h"
  "kernel_all_pp_prune.c"
  "linker_ld_wrapper_temp.c"
)

# Per-language clean rules from dependency scanning.
foreach(lang )
  include(CMakeFiles/linker_ld_wrapper_copy_in.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
