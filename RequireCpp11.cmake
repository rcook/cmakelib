function(require_cpp11)
  include(CheckCXXCompilerFlag)

  if(NOT MSVC)
    # Detect C++11 support and warn if (possibly) absent
    check_cxx_compiler_flag("-std=c++11" COMPILER_SUPPORTS_CXX11)
    check_cxx_compiler_flag("-std=c++0x" COMPILER_SUPPORTS_CXX0X)
    if(COMPILER_SUPPORTS_CXX11)
      set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++11" PARENT_SCOPE)
    elseif(COMPILER_SUPPORTS_CXX0X)
      set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++0x" PARENT_SCOPE)
    else()
      message(FATAL_ERROR "Failed to detect C++11 mode for compiler ${CMAKE_CXX_COMPILER}")
    endif()
  endif()
endfunction()

