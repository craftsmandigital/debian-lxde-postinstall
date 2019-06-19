#!/bin/bash



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
# echo "USR_CUSTOM_SCRIPTS=$USR_CUSTOM_SCRIPTS" | sudo tee -a /etc/environment
# Changing permissions so everybody on the host could read and execute schripts
# in the folder $USR_CUSTOM_SCRIPTS
# chmod 755 $USR_CUSTOM_SCRIPTS


# I had to do this to make snap installed packages available for all users. Debian
# vil not include stuff in path.
# NB!!!!! I Do not know the consequenses of this. Maybe sbin stuff is no longer 
# available for sudo and root user
export PATH=/snap/bin:$PATH
echo $PATH | sudo tee -a /etc/environment
























pretty_print_heading Login with only to type password
# https://averagelinuxuser.com/10-things-to-do-after-installing-debian/
sudo cp $USR_CUSTOM_SCRIPTS/config-files/no-username-at-login.conf /usr/share/lightdm/lightdm.conf.d/01_my.conf
