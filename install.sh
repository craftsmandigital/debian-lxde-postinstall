# How to install Chrome browser properly via command line? 
# https://askubuntu.com/questions/991583/how-to-install-google-chrome-from-terminal

#### Variables ####

EMAIL=htcjon10@gmail.com
GIT_USERNAME="Jon Arne"




echo "---------------------------------------------------------------------------"
echo "---------------------------------------------------------------------------"
echo "---------------------------------------------------------------------------"
echo "---------------------------------------------------------------------------"
echo "---------------------------------------------------------------------------"
echo "---------------------------------------------------------------------------"
echo "---------------------------------------------------------------------------"
echo "---------------------------------------------------------------------------"
echo "---------------------------------------------------------------------------"
echo "---------------------------------------------------------------------------"
echo "===> Installing google-chrome ..."
# add the google-chrome repository to Ubuntu.
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add - 

sudo sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'

sudo apt update -y

sudo apt install -y google-chrome-stable











echo "---------------------------------------------------------------------------"
echo "---------------------------------------------------------------------------"
echo "---------------------------------------------------------------------------"
echo "---------------------------------------------------------------------------"
echo "---------------------------------------------------------------------------"
echo "---------------------------------------------------------------------------"
echo "---------------------------------------------------------------------------"
echo "---------------------------------------------------------------------------"
echo "---------------------------------------------------------------------------"
echo "---------------------------------------------------------------------------"
# This sequence of code innstalls latest version of vsCode from commandline
# https://linuxize.com/post/how-to-install-visual-studio-code-on-ubuntu-18-04/
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

# VS Code extensions
echo "===> Innstall vsCode extention Sync ..."
code --install-extension Shan.code-settings-sync
# watch this for sync settings
# https://docs.google.com/document/d/1myP5xBDmIM5R5VI8Dp3dEyH6iJL3kk8Uu4_NL49SKow/edit








echo "---------------------------------------------------------------------------"
echo "---------------------------------------------------------------------------"
echo "---------------------------------------------------------------------------"
echo "---------------------------------------------------------------------------"
echo "---------------------------------------------------------------------------"
echo "---------------------------------------------------------------------------"
echo "---------------------------------------------------------------------------"
echo "---------------------------------------------------------------------------"
echo "---------------------------------------------------------------------------"
echo "---------------------------------------------------------------------------"
echo "===> Initialising git configuration ..."
# Initialising git
git config --global user.name $GIT_USERNAME
git config --global user.email $EMAIL

# Set git to use the credential memory cache
git config --global credential.helper cache

# To change the default password cache timeout, enter the following:
git config --global credential.helper 'cache --timeout=36000'
# Set the cache to timeout after 10 hour (setting is in seconds)





echo "---------------------------------------------------------------------------"
echo "---------------------------------------------------------------------------"
echo "---------------------------------------------------------------------------"
echo "---------------------------------------------------------------------------"
echo "---------------------------------------------------------------------------"
echo "---------------------------------------------------------------------------"
echo "---------------------------------------------------------------------------"
echo "---------------------------------------------------------------------------"
echo "---------------------------------------------------------------------------"
echo "---------------------------------------------------------------------------"
echo "===> Installing hugo ..."
# Installing hugo
# https://gohugo.io/getting-started/installing/#snap-package

# In any of the Linux distributions that support snaps, you may install install the “extended” Sass/SCSS version with this command:
#snap install hugo --channel=extended

# To install the non-extended version without Sass/SCSS support:
sudo snap install hugo
# To switch between the two, use either snap refresh hugo --channel=extended or snap refresh hugo --channel=stable.







echo "---------------------------------------------------------------------------"
echo "---------------------------------------------------------------------------"
echo "---------------------------------------------------------------------------"
echo "---------------------------------------------------------------------------"
echo "---------------------------------------------------------------------------"
echo "---------------------------------------------------------------------------"
echo "---------------------------------------------------------------------------"
echo "---------------------------------------------------------------------------"
echo "---------------------------------------------------------------------------"
echo "---------------------------------------------------------------------------"
echo "===> Install space2ctrl ..."
# Setteing up space2ctrl
# https://github.com/r0adrunner/Space2Ctrl
sudo apt-get install -y libx11-dev libxtst-dev

cd ~/git_projects/installs
git clone https://github.com/r0adrunner/Space2Ctrl.git
cd Space2Ctrl

make
sudo make install

# s2cctl start # Starting upp space2ctrl

# adding s2cctl to startup
# set up s2cctl in
# menu->Preferences->LXQt settings->Session Settings->Autostart->LXQt Autostart-> Add
# download this file to also switch caps and esc and add it https://github.com/hackingjack/configuration-files/blob/master/keyboard-config.sh



echo "---------------------------------------------------------------------------"
echo "---------------------------------------------------------------------------"
echo "---------------------------------------------------------------------------"
echo "---------------------------------------------------------------------------"
echo "---------------------------------------------------------------------------"
echo "---------------------------------------------------------------------------"
echo "---------------------------------------------------------------------------"
echo "---------------------------------------------------------------------------"
echo "---------------------------------------------------------------------------"
echo "---------------------------------------------------------------------------"
echo "===> Install touchpad indicator"
# Disable touchpad while mouse is connected
# https://askubuntu.com/questions/1053098/touchpad-settings-not-found-for-lubuntu-18-04
sudo add-apt-repository -y ppa:atareao/atareao
sudo apt-get -y update
sudo apt-get install -y touchpad-indicator

# touchpad-indicator # this last command starts the app

# adding touchpad-indicator to startup
# set up touchpad-indicator in
# menu->Preferences->LXQt settings->Session Settings->Autostart->LXQt Autostart-> Add
# type inn the path to touchpad-indicator

echo "---------------------------------------------------------------------------"
echo "---------------------------------------------------------------------------"
echo "---------------------------------------------------------------------------"
echo "---------------------------------------------------------------------------"
echo "---------------------------------------------------------------------------"
echo "---------------------------------------------------------------------------"
echo "---------------------------------------------------------------------------"
echo "---------------------------------------------------------------------------"
echo "---------------------------------------------------------------------------"
echo "---------------------------------------------------------------------------"
echo "===> Install Swapp esc and caps and other autostart tasks ..."
# Svapp caps and esc
# http://xahlee.info/linux/linux_swap_capslock_esc_key.html

# xmodmap ~/.Xmodmap

# copy all autostart tasks to autostart folder
mkdir ~/.config/autostart
cp ~/git_projects/installs/linux-postinstall/desktop-items/* ~/.config/autostart





echo "---------------------------------------------------------------------------"
echo "---------------------------------------------------------------------------"
echo "---------------------------------------------------------------------------"
echo "---------------------------------------------------------------------------"
echo "---------------------------------------------------------------------------"
echo "---------------------------------------------------------------------------"
echo "---------------------------------------------------------------------------"
echo "---------------------------------------------------------------------------"
echo "---------------------------------------------------------------------------"
echo "---------------------------------------------------------------------------"
echo "===> Install mics ..."
sudo apt install -y rename



# chortcutt file
# /home/jon/.config/lxqt/globalkeyshortcuts.confsf


# # Limit a gui program in Linux to only one instance
# # https://superuser.com/questions/170937/limit-a-gui-program-in-linux-to-only-one-instance
# # https://www.howtoinstall.co/en/ubuntu/xenial/wmctrl
# sudo apt-get update
# sudo apt-get install wmctrl

# # I created a executable file /usr/local/bin/run_once.sh containing

# #! /bin/bash
# application=$1
# if wmctrl -xl | grep "${application}" > /dev/null ; then
#     # Already running, raising to front
#     wmctrl -x -R "$application"
# else
#     # Not running: starting
#     $@
# fi




# # speed up boot
# # https://superuser.com/questions/972355/what-needs-to-run-to-stop-the-start-job-dev-disk-by-check-on-each-boot
# cat /etc/fstab
# lsblk -f    # remove swap things after comparing output of the comands













# # Post install tasks

# # Setting a google user for my Job account
# # https://superuser.com/questions/377186/how-do-i-start-chrome-using-a-specified-user-profile
# google-chrome-stable --profile-directory=Jobb
# # this command vil also launch my profile in a shortcutt
# # create a new blank file (Chrome job.sh) in the desktop and add this
# #!/bin/sh
# google-chrome-stable --profile-directory=Jobb
# # Rightclick on the file and make it executable

