#! /usr/bin/bash
# This script compiles single C++ source codes.

# g++ -std=c++17 -pedantic-errors -Wall -Weffc++ -Wextra -Wsign-conversion -Werror $1 -o $2

g++ -std=c++17 -pedantic-errors -Wall -Weffc++ -Wextra -Wsign-conversion -Werror $1 -o ${1%.cpp}
