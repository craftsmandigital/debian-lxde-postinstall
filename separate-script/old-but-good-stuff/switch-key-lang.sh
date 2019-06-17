#!/bin/bash


# Switch keyboard language between us and no

# https://wiki.debian.org/Keyboard#How_to_switch_a_keyboard_layout_in_X11_.2F_graphical_desktop_environment
# https://askubuntu.com/questions/155879/how-to-get-current-gnome-keyboard-layout-from-terminal

LANG_CODE=$(setxkbmap -print | grep xkb_symbols | awk '{print $4}' | awk -F"+" '{print $2}')

if [ "$LANG_CODE" == "us" ]
then
  setxkbmap no
else
  setxkbmap us
fi
echo "The script you are running has basename `basename "$0"`, dirname $mydir"
echo "The present working directory is `pwd`"

# find the current directory of this script
# https://unix.stackexchange.com/questions/273341/obtain-script-current-directory-so-that-i-can-do-include-files-without-relative?answertab=votes#tab-top
SCRIPT_DIR="${0%/*}"
cd $SCRIPT_DIR 

#spase as control and space
./space2ctrl.sh
# switching esc and caps
./swap-caps-and-esc.sh
