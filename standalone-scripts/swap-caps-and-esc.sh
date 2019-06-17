#!/bin/sh

# find the current directory of this script
# https://unix.stackexchange.com/questions/273341/obtain-script-current-directory-so-that-i-can-do-include-files-without-relative?answertab=votes#tab-top
SCRIPT_DIR="${0%/*}"
cd $SCRIPT_DIR 


xmodmap ../.Xmodmap
xcape -e 'Mode_switch=Escape'
