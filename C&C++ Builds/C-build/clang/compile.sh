#! /usr/bin/bash
# This script compiles single C source codes.

# clang -ggdb3 -O0 -std=c11 -Wall -Werror -Wextra -Wno-sign-compare -Wno-unused-parameter -Wno-unused-variable $1 -lm -o $2

clang -ggdb3 -O0 -std=c11 -Wall -Werror -Wextra -Wno-sign-compare -Wno-unused-parameter -Wno-unused-variable $1 -lm -o ${1%.c}
