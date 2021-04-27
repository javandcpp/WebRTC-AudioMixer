#!/bin/bash
rm -rf CMakeFile/ cmake_install.cmake CMakeCache.txt Makefile
cmake . -DWEBRTC_POSIX=1 -DCMAKE_INSTALL_PREFIX=`pwd`/build

make 
make install
