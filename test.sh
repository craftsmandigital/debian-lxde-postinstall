#!/bin/bash


# Installing the basic binaris did not work for me. Perhaps it is my computer.
# The problem was that I could not connect to my vireles network during install
# The solution vas to download non-free binnarys from this link.

# The seccond problem was that I could not connect to internett on the finnished innstalation
# The fix to this problem is to follow the instruction on this link 

# Git must be preinstalled to download this script from github
#


# Manually configuration

# Configure vscode sync extention 



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

####### pretty_print_heading declaring variables and do initial preparations

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
# echo "USR_CUSTOM_SCRIPTS=$USR_CUSTOM_SCRIPTS" >> /etc/environment
############ echo "USR_CUSTOM_SCRIPTS=$USR_CUSTOM_SCRIPTS" | sudo tee -a /etc/environment


# I had to do this to make snap installed packages available for all users. Debian
# vil not include stuff in path.
# NB!!!!! I Do not know the consequenses of this. Maybe sbin stuff is no longer 
# available for sudo and root user
export PATH=/snap/bin:$PATH
############ echo $PATH | sudo tee -a /etc/environment

# Changing permissions so everybody on the host could read and execute schripts
# in the folder $USR_CUSTOM_SCRIPTS
############ chmod 755 $USR_CUSTOM_SCRIPTS

# geting my .profile in work. I have to do this stuff to get it to work.
# https://wiki.debian.org/EnvironmentVariables
############ cp $USR_CUSTOM_SCRIPTS/config-files/.bash_profile $HOME
############ cp $USR_CUSTOM_SCRIPTS/config-files/.bash_profile $HOME/.xsessionrc

###############################################################################################################




pretty_print_heading Install Stretc break software
wget --directory-prefix=$DOWNLOAD_FOLDER --no-check-certificate https://github.com/hovancik/stretchly/releases/download/v0.19.0/stretchly_0.19.0_amd64.deb

sudo dpkg -i $DOWNLOAD_FOLDER/stretchly_0.19.0_amd64.deb

sudo apt-get install -f -y




pretty_print_heading Installing video capture and editing software
sudo apt-get -y update
pretty_print_heading Installing OpenShot
sudo add-apt-repository -y ppa:openshot.developers/ppa
sudo apt-get -y update
sudo apt-get install -y openshot



pretty_print_heading Installing vokoscreen
sudo apt install -y vokoscreen

