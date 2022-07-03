#! /usr/bin/bash
# This script compiles & linkes C++ source codes in the working directory.

rm -r build; mkdir build && cd build
gcc -c ../*.c
gcc *.o -o program
