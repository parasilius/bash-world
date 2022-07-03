#! /usr/bin/bash
# This script compiles & runs the compiled source code in the same terminal.

clang -ggdb3 -O0 -std=c11 -Wall -Werror -Wextra -Wno-sign-compare -Wno-unused-parameter -Wno-unused-variable $1 -lm -o ${1%.c} && ./${1%.c}
