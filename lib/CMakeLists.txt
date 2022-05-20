file(GLOB_RECURSE srcs ./src/*.c ./src/*.cpp)

add_library(${libname} STATIC ${srcs})
#target_link_libraries(${libname} xxx)

add_subdirectory(test)