file(REMOVE_RECURSE
  "CMakeFiles/kernel_theories"
  "generated/arch/object/structures.bf.pbf"
  "generated/arch/object/structures_defs.thy"
  "generated/arch/object/structures_proofs.thy"
  "generated/plat_mode/machine/hardware.bf.pbf"
  "generated/plat_mode/machine/hardware_defs.thy"
  "generated/plat_mode/machine/hardware_proofs.thy"
  "generated/sel4/shared_types.bf.pbf"
  "generated/sel4/shared_types_defs.thy"
  "generated/sel4/shared_types_proofs.thy"
)

# Per-language clean rules from dependency scanning.
foreach(lang )
  include(CMakeFiles/kernel_theories.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
