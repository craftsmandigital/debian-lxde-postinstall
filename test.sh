#!/bin/bash

# NB!! Testing stuff happendsbelow the ######### line


# find the current directory of this script
# https://stackoverflow.com/questions/4774054/reliable-way-for-a-bash-script-to-get-the-full-path-to-itself
export USR_CUSTOM_SCRIPTS="$( cd "$(dirname "$0")" && pwd -P )"


# I had to do this to make snap installed packages available for all users. Debian
# vil not include stuff in path.
export PATH=/snap/bin:$PATH



source $USR_CUSTOM_SCRIPTS/variables-user.sh

###########################################################################################

# Testing stuff happends here below the ######## line
# Pick stuff from install.sh and test it here

# This is an example test of output of variables declared in variables-user.sh
# witch is sourced abowe the #### line
echo $EMAIL
echo $GIT_USERNAME
echo $DOWNLOAD_FOLDER
