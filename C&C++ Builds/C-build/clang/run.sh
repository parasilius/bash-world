#! /usr/bin/bash

# gnome-terminal -- bash -c "./${1} && read"
# gnome-terminal -- bash -c "./${1} && bash"
gnome-terminal -- bash -c "./${1} && echo -e \"\n ----- Executed Successfully -----\n ---- Press ENTER to continue ----\" && read"
