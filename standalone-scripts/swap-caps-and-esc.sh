#!/bin/sh
# switching esc and caps
# also make caps to a level3 shift key.
# when level3 shift is pressed then Norwegian keys can be reached.
xmodmap $USR_CUSTOM_SCRIPTS/config-files/keyboard-config-xmodmap
xcape -e 'Mode_switch=Escape'
