#!/bin/sh

yes "________________________________________________________________________" | head -n 10
# This sequence of code innstalls latest version of vsCode from commandline
# https://linuxize.com/post/how-to-install-visual-studio-code-on-ubuntu-18-04/

echo "===> uninstall vsCode if it exists ..."

sudo apt remove -y code

echo "===> Innstalls latest version of vsCode ..."

# First, update the packages index and install the dependencies by typing:
sudo apt update -y
sudo apt install -y software-properties-common apt-transport-https wget

# Next, import the Microsoft GPG key using the following wget command:
wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -

# And enable the Visual Studio Code repository by typing:
sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"

# Once the repository is enabled, install the latest version of Visual Studio Code with:
sudo apt install -y code
