file(GLOB_RECURSE srcs ./*.c ./*.cpp)

add_executable(${appname} ${srcs})
target_compile_options(${appname} PUBLIC -g -Wall)
target_link_libraries(${appname} ${libname})