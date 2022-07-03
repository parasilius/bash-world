#! /usr/bin/bash
# This script compiles & linkes C++ source codes in the working directory.

# g++ -std=c++17 -pedantic-errors -Wall -Weffc++ -Wextra -Wsign-conversion -Werror -c *.cpp
# g++ -std=c++17 -pedantic-errors -Wall -Weffc++ -Wextra -Wsign-conversion -Werror *.o -o program

rm -r build; mkdir build && cd build
g++ -std=c++17 -c ../*.cpp
g++ -std=c++17 *.o -o program
