#! /usr/bin/bash
# This script compiles & runs the compiled source code in a new gnome terminal.

# g++ -std=c++17 -pedantic-errors -Wall -Weffc++ -Wextra -Wsign-conversion -Werror $1 -o ${1%.cpp} && gnome-terminal -- bash -c "./${1%.cpp} && read"

# g++ -std=c++17 -pedantic-errors -Wall -Weffc++ -Wextra -Wsign-conversion -Werror $1 -o ${1%.cpp} && gnome-terminal -- bash -c "./${1%.cpp} && bash"

g++ -std=c++17 -pedantic-errors -Wall -Weffc++ -Wextra -Wsign-conversion -Werror $1 -o ${1%.cpp} && gnome-terminal -- bash -c "./${1%.cpp} && echo -e \"\n ----- Executed Successfully -----\n ---- Press ENTER to continue ----\" && read"
