#! /usr/bin/bash
# This script compiles & runs the compiled source code in a new gnome terminal.

# clang -ggdb3 -O0 -std=c11 -Wall -Werror -Wextra -Wno-sign-compare -Wno-unused-parameter -Wno-unused-variable $1 -lm -o ${1%.c} && gnome-terminal -- bash -c "./${1%.c} && read"

# clang -ggdb3 -O0 -std=c11 -Wall -Werror -Wextra -Wno-sign-compare -Wno-unused-parameter -Wno-unused-variable $1 -lm -o ${1%.c} && gnome-terminal -- bash -c "./${1%.c} && bash"

clang -ggdb3 -O0 -std=c11 -Wall -Werror -Wextra -Wno-sign-compare -Wno-unused-parameter -Wno-unused-variable $1 -lm -o ${1%.c} && gnome-terminal -- bash -c "./${1%.c} && echo -e \"\n ----- Executed Successfully -----\n ---- Press ENTER to continue ----\" && read"
