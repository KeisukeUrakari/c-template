cmake_minimum_required(VERSION 3.10)

set(Project app)

set(appname app)
set(libname mylib)

project(${Project} CXX C)

include(cmake/c.cmake)
include(cmake/cxx.cmake)
include(cmake/gtest.cmake)
#include(cmake/qt.cmake)
#include(cmake/boost.cmake)

add_subdirectory(lib)
add_subdirectory(src)
