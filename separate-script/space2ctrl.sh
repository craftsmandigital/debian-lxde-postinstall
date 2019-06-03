#!/bin/sh


# Installing xcape if it not exists and some dependensies.
# https://github.com/alols/xcape

which xcape
if [ $? -ne 0 ];
then

  sudo apt-get -y install git gcc make pkg-config libx11-dev libxtst-dev libxi-dev

  tmp_dir=$(mktemp -d)
  cd $tmp_dir

  git clone https://github.com/alols/xcape.git
  cd xcape
  make
  sudo make install

fi



# Map an unused modifier's keysym to the spacebar's keycode and make it a
# control modifier. It needs to be an existing key so that emacs won't
# spazz out when you press it. Hyper_L is a good candidate.
# https://github.com/alols/xcape

spare_modifier="Hyper_L"
xmodmap -e "keycode 65 = $spare_modifier"
xmodmap -e "remove mod4 = $spare_modifier" # hyper_l is mod4 by default
xmodmap -e "add Control = $spare_modifier"

# Map space to an unused keycode (to keep it around for xcape to
# use).
xmodmap -e "keycode any = space"

# Finally use xcape to cause the space bar to generate a space when tapped.
xcape -e "$spare_modifier=space"