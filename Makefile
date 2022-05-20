.PHONY:all build clean run run-test run-leak-check doxygen pdf

APPNAME=app
LIBNAME=mylib

all:build

build:
	mkdir -p build
	(cd build && cmake .. && make -j4)
#	(cd build && cmake -G Ninja .. && ninja -j4)

run:build
	./build/src/$(APPNAME)

run-test:build
	./build/lib/test/$(LIBNAME)-test
	./build/test/$(APPNAME)-test

run-leak-check:build
	valgrind --leak-check=full ./build/lib/test/$(LIBNAME)-test
	valgrind --leak-check=full ./build/test/$(APPNAME)-test

doxygen:
	(cd doxygen && make)

pdf:doxygen
	(cd doxygen && make pdf)

clean:
	-$(RM) -rf build
	(cd doxygen && make clean)