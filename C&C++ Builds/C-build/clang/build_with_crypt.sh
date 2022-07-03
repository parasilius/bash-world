#! /usr/bin/bash

clang -ggdb3 -O0 -std=c11 -Wall -Werror -Wextra -Wno-sign-compare -Wno-unused-parameter -Wno-unused-variable $1 -lcrypt -lm -o $2
