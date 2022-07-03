#! /usr/bin/bash
# This script compiles & runs the compiled source code in the same terminal.

g++ -std=c++17 -pedantic-errors -Wall -Weffc++ -Wextra -Wsign-conversion -Werror $1 -o ${1%.cpp} && ./${1%.cpp}
