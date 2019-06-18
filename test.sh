#!/bin/sh
# How to install Chrome browser properly via command line? 
# https://askubuntu.com/questions/991583/how-to-install-google-chrome-from-terminal



pretty_print_heading()
{
    # Having shifted twice, the rest is now comments ...
    COMMENTS=$@

    printf "\n\n\n\n\n\n\n\n\n\n\n"
    yes "________________________________________________________________________" | head -n 5
    printf "\n---->      $COMMENTS ...\n"
    yes "________________________________________________________________________" | head -n 5
}

# find the current directory of this script
# https://stackoverflow.com/questions/4774054/reliable-way-for-a-bash-script-to-get-the-full-path-to-itself
export USR_CUSTOM_SCRIPTS="$( cd "$(dirname "$0")" && pwd -P )"
# export USR_CUSTOM_SCRIPTS="${0%/*}"


echo "USR_CUSTOM_SCRIPTS=$USR_CUSTOM_SCRIPTS" 
# echo "USR_CUSTOM_SCRIPTS=$USR_CUSTOM_SCRIPTS" >> /etc/environment



chmod 755 $USR_CUSTOM_SCRIPTS


pretty_print_heading Installing hugo from $USR_CUSTOM_SCRIPTS/standalone-schripts/install-hugo.sh

$USR_CUSTOM_SCRIPTS/standalone-schripts/install-hugo.sh
