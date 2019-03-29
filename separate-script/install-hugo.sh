#!/bin/sh



yes "________________________________________________________________________" | head -n 10
echo "===> Remove hugo if it exists ..."
sudo snap remove hugo


echo "===> Installing hugo ..."
# Installing hugo
# https://gohugo.io/getting-started/installing/#snap-package

# In any of the Linux distributions that support snaps, you may install install the “extended” Sass/SCSS version with this command:
sudo snap install hugo --channel=extended

# To install the non-extended version without Sass/SCSS support:
# sudo snap install hugo
# To switch between the two, use either snap refresh hugo --channel=extended or snap refresh hugo --channel=stable.


