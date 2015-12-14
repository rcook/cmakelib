# https://code.google.com/p/rstm/source/browse/trunk/cmake/modules/AddTargetDefinitions.cmake?r=58
function(add_target_definitions target)
  get_target_property(defines ${target} COMPILE_DEFINITIONS)
  if(defines MATCHES "NOTFOUND")
    set(defines "")
  endif()
  foreach(define ${defines} ${ARGN})
    list(APPEND new_defines ${define})
  endforeach()
  set_target_properties(${target} PROPERTIES COMPILE_DEFINITIONS "${new_defines}")
endfunction()

