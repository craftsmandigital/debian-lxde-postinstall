#!/bin/sh



# Function for introdusing different sections in this script
pretty_print_heading()
{
    # shift; shift;
    # Having shifted twice, the rest is now comments ...
    COMMENTS=$@

    printf "\n\n\n\n\n\n\n\n\n\n\n"
    yes "________________________________________________________________________" | head -n 5
    printf "\n====>  $COMMENTS ...\n"
    yes "________________________________________________________________________" | head -n 5
}


#### Variables ####

pretty_print_heading declaring variables and do initial preparations

EMAIL=htcjon10@gmail.com
GIT_USERNAME="Jon Arne"
DOWNLOAD_FOLDER=~/Downloads

# find the current directory of this script
# https://stackoverflow.com/questions/4774054/reliable-way-for-a-bash-script-to-get-the-full-path-to-itself
export USR_CUSTOM_SCRIPTS="$( cd "$(dirname "$0")" && pwd -P )"


# Setting the esensial and important environment variable $USR_CUSTOM_SCRIPTS.
# this variable vil be used masively. 
# Debian is not friendly for setting enviroment variables. 
# Setting variables for all user in /etc/enviroment worked fine.
sudo echo "USR_CUSTOM_SCRIPTS=$USR_CUSTOM_SCRIPTS" >> /etc/environment

# Changing permissions so everybody on the host could read and execute schripts
# in the folder $USR_CUSTOM_SCRIPTS
chmod 755 $USR_CUSTOM_SCRIPTS

# geting my .profile in work. I have to do this stuff to get it to work.
# https://wiki.debian.org/EnvironmentVariables
cp $USR_CUSTOM_SCRIPTS/config-files/.bash_profile $HOME
cp $USR_CUSTOM_SCRIPTS/config-files/.bash_profile $HOME/.xsessionrc








# # sudo bash -c printf "PATH=\"$USR_CUSTOM_SCRIPTS:\$PATH\"\nexport \$PATH\n" >> /etc/profile
# # https://unix.stackexchange.com/questions/382946/getting-permission-denied-when-trying-to-append-text-onto-a-file-using-sudo
# printf "PATH=\"$USR_CUSTOM_SCRIPTS:\$PATH\"\nexport PATH\n" | sudo tee -a /etc/profile


# printf "PATH=\"$USR_CUSTOM_SCRIPTS:\$PATH\"\nexport PATH\n" > /etc/profile.d/usr-set-path.sh


# PATH="$HOME/bin:$PATH"









pretty_print_heading Installing tool to compile and download scource code
# add make.
sudo apt update -y
sudo apt install -y build-essential
sudo apt install -y libxtst-dev
sudo apt-get -y install git pkg-config libx11-dev libxtst-dev libxi-dev


pretty_print_heading Installing Snap (instalation app)
# add snap.
sudo apt update -y
sudo apt install -y snapd
# Buggy stuff
export PATH=/snap/bin:$PATH


# How to install Chrome browser properly via command line? 
# https://askubuntu.com/questions/991583/how-to-install-google-chrome-from-terminal
pretty_print_heading Installing google-chrome

# add the google-chrome repository to Ubuntu.
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add - 

sudo sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'

sudo apt update -y

sudo apt install -y google-chrome-stable











# This sequence of code innstalls latest version of vsCode from commandline
pretty_print_heading Innstalls latest version of vsCode from $USR_CUSTOM_SCRIPTS/standalone-schripts/install-vscode.sh

$USR_CUSTOM_SCRIPTS/standalone-scripts/install-vscode.sh

# VS Code extensions
echo "===> Innstall vsCode extention Sync ..."
code --install-extension Shan.code-settings-sync
# watch this for sync settings
# https://docs.google.com/document/d/1myP5xBDmIM5R5VI8Dp3dEyH6iJL3kk8Uu4_NL49SKow/edit




pretty_print_heading Initialising my git configuration
# Initialising git
git config --global user.name $GIT_USERNAME
git config --global user.email $EMAIL

# Set git to use the credential memory cache
git config --global credential.helper cache

# To change the default password cache timeout, enter the following:
git config --global credential.helper 'cache --timeout=36000'
# Set the cache to timeout after 10 hour (setting is in seconds)






pretty_print_heading Installing node.js and npm
# this stuff does not work on debian. This is the solution for debian
# https://www.digitalocean.com/community/tutorials/how-to-install-node-js-on-debian-9
sudo apt update -y
sudo apt install -y nodejs
sudo apt install -y npm







pretty_print_heading Installing hugo from $USR_CUSTOM_SCRIPTS/standalone-schripts/install-hugo.sh

$USR_CUSTOM_SCRIPTS/standalone-scripts/install-hugo.sh





pretty_print_heading Install space2ctrl
# Setteing up space2ctrl
# https://github.com/r0adrunner/Space2Ctrl

$USR_CUSTOM_SCRIPTS/standalone-scripts/space2ctrl.sh



pretty_print_heading Install Swapp esc and caps. Shif3 level and Norwegian keys
# Svapp caps and esc
# http://xahlee.info/linux/linux_swap_capslock_esc_key.html

$USR_CUSTOM_SCRIPTS/standalone-scripts/swap-caps-and-esc.sh





# # This  does  not  work  on  debian
# yes "________________________________________________________________________" | head -n 10
# echo "===> Install touchpad indicator"
# # Disable touchpad while mouse is connected
# # https://askubuntu.com/questions/1053098/touchpad-settings-not-found-for-lubuntu-18-04
# sudo add-apt-repository -y ppa:atareao/atareao
# sudo apt-get -y update
# sudo apt-get install -y touchpad-indicator

# # touchpad-indicator # this last command starts the app

# # adding touchpad-indicator to startup
# # set up touchpad-indicator in
# # menu->Preferences->LXQt settings->Session Settings->Autostart->LXQt Autostart-> Add
# # type inn the path to touchpad-indicator


# copy all autostart tasks to autostart folder
mkdir ~/.config/autostart
cp $INSTALL_SCRIPT_FOLDER/desktop-items-start ~/.config/autostart
# Make smart links to desktop to maintain latest versions of vscode and hugo
ln $INSTALL_SCRIPT_FOLDER/separate-script/* ~/Desktop



# Inserts content of my shortcuts into the systems shortcutfile.
# my shortcut is copied from the file my-shortcuts.xml and inserted
# into the systems shortcutfile(lxde.xml), just before the end of the section
# <keyboard>
cd $INSTALL_SCRIPT_FOLDER
sudo sed -i $'/<\/keyboard>/{e cat     ./my-shortcuts.xml\n}' $HOME/.config/openbox/lxde-rc.xml





yes "________________________________________________________________________" | head -n 10
echo "===> Install Stretc break software"
wget --directory-prefix=$DOWNLOAD_FOLDER --no-check-certificate https://github.com/hovancik/stretchly/releases/download/v0.19.0/stretchly_0.19.0_amd64.deb

sudo dpkg -i $DOWNLOAD_FOLDER/stretchly_0.19.0_amd64.deb

sudo apt-get install -f -y


apt-get install shellcheck


yes "________________________________________________________________________" | head -n 10
echo "===> Installing video capture and editing software ..."

echo "===> Installing OpenShot ..."
sudo add-apt-repository -y ppa:openshot.developers/ppa
sudo apt-get -y update
sudo apt-get install -y openshot-qt


echo "===> Installing vokoscreen ..."
sudo apt install -y vokoscreen



yes "________________________________________________________________________" | head -n 10
echo "===> Install mics rename firewall(ufw) ..."
sudo apt install -y rename ufw
# https://averagelinuxuser.com/10-things-to-do-after-installing-debian/
sudo ufw enable

# Login with only to type password
# https://averagelinuxuser.com/10-things-to-do-after-installing-debian/
sudo cp ./no-username-at-login.conf /usr/share/lightdm/lightdm.conf.d/01_my.conf

echo "===> Install ssh to connect remote with putty ..."

# command to get ip adress on ubuntu
# https://tecadmin.net/check-ip-address-ubuntu-18-04-desktop/
# ip addr show

# ssh install info
# https://askubuntu.com/questions/136671/how-to-login-into-a-ubuntu-machine-from-windows
sudo apt-get install -y openssh-server


# chortcutt file
# ~/.config/lxqt/globalkeyshortcuts.conf
# add personal keyboard chortcuts to the systems chortcutfile
cat ./keyboard_shortcuts.conf >> ~/.config/lxqt/globalkeyshortcuts.conf

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






sudo apt autoremove -y
sudo apt clean -y







# # Post install tasks


# Adding the norwegian language
#       - Start --> Preferences --> LXQT settings --> Keyboard and mouse --> Keyboard and layout
#       - press add button, chose norwegian  
#       - chose both shift as shortcutt

# Changing google chrome to default web browser
#       - Start --> Preferences --> LXQT settings --> Session settings --> Default applications
#         set Web browser = google-chrome-stable
#       - Go to html, jpg, gif files in file manager and rigtclick and shoose default app



# finish google crome settings
# use the shortcuts to start google chrome
#    - Ctrl+Alt+g (Default user) --> 
#        - Install lastpass
#        - Sett up default user
#        - Synscronise and gett the rest off your setup
#    - Ctrl+Alt+j (jobb user user) --> 
#        - Sett up Jobb user
#        - Synscronise and gett the rest off your setup (Copy password from lastpass on default user)




# finish vscode  settings
# use the shortcuts to start vscode
#    - Ctrl+Alt+c --> 
#        - press Shift+Alt+d (this vil import your personal vscode settings. Settings sync extention is already installed) 
#        - Copy gist id and secret credentical from this document 
#        - https://docs.google.com/document/d/1myP5xBDmIM5R5VI8Dp3dEyH6iJL3kk8Uu4_NL49SKow/edit
















# # Setting a google user for my Job account
# # https://superuser.com/questions/377186/how-do-i-start-chrome-using-a-specified-user-profile
# google-chrome-stable --profile-directory=Jobb
# # this command vil also launch my profile in a shortcutt
# # create a new blank file (Chrome job.sh) in the desktop and add this
# #!/bin/sh
# google-chrome-stable --profile-directory=Jobb
# # Rightclick on the file and make it executable
