#!/bin/sh
# yes "________________________________________________________________________" | head -n 10
# This sequence of code innstalls latest version of vsCode from commandline
# https://linuxize.com/post/how-to-install-visual-studio-code-on-debian-9/

echo "===> uninstall vsCode if it exists ..."

sudo apt remove -y code

echo "===> Innstalls latest version of vsCode ..."
# Start by updating the packages index and installing the dependencies by typing:
sudo apt update -y
sudo apt install -y software-properties-common apt-transport-https curl


# Import the Microsoft GPG key using the following curl command:
curl -sSL https://packages.microsoft.com/keys/microsoft.asc | sudo apt-key add -

# Add the Visual Studio Code repository to your system:

sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"

# Once the repository is added, install the latest version of Visual Studio Code with:

sudo apt update -y
sudo apt install -y code
# That’s it. Visual Studio Code has been installed on your Debian desktop and you can start using it.
