function(set_compiler_flags)
  if(MSVC)
  else()
    set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -g -fPIC" PARENT_SCOPE)
  endif()
endfunction()

