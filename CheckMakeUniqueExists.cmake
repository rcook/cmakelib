function(check_make_unique_exists)
  include(CheckCXXSourceCompiles)

  set(CMAKE_REQUIRED_FLAGS ${CMAKE_CXX_FLAGS})
  check_cxx_source_compiles("#include <memory>\nclass C { };\nint main() { std::make_unique<C>(); }" HAVE_MAKE_UNIQUE)
endfunction()

