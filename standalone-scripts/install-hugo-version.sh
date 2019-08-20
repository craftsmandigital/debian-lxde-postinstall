#!/bin/bash

# Install a given hugo version.
#
# exsample 1:
#     install-hugo-version.sh 0.56.3
#
# exsample 2:
#     install-hugo-version.sh
# In this exsample you wil be prompted to type in version




echo "===> Installing hugo ..."
if [ $# -eq 0 ]
then
    echo "Please type version fo Hugo to install example(0.56.3): "
    read HUGO_VERSION
else
    HUGO_VERSION=$1
fi

SOURCE_PATH="https://github.com/gohugoio/hugo/releases/download/vXXVERSIONXX/hugo_extended_XXVERSIONXX_Linux-64bit.deb"
SOURCE_PATH=$(echo $SOURCE_PATH | sed -e "s/XXVERSIONXX/$HUGO_VERSION/g")

DOWNLOAD_FOLDER=$HOME/Downloads/deb_install
DEST_PATH=$(echo "$DOWNLOAD_FOLDER/")$(basename "$SOURCE_PATH")


# Download deb file if it does not exists
if [ -f $DEST_PATH ]
then
  echo "$DEST_PATH exists localy"
 else   
  echo "$DEST_PATH not exists localy. Downloading from web ..."
  wget --directory-prefix=$DOWNLOAD_FOLDER --no-check-certificate $SOURCE_PATH
  if [ $? -ne 0 ]; then
    >&2 printf "\n\nCould not Download file:\n$SOURCE_PATH\nThe version you try to install does not exist or troble with internet connection.\n\n" 
    exit 2
  fi
fi


# yes "________________________________________________________________________" | head -n 10
echo "===> Remove hugo if it exists ..."
sudo apt-get -y remove hugo 
sudo apt-get -y remove hugo_extended


# Finaly installing
sudo dpkg -i $DEST_PATH

sudo apt-get install -f -y



# echo $DOWNLOAD_FOLDER/$DEST_PATH
# echo $DEST_PATH