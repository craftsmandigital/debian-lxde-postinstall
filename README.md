
# Debian 9 lxde Install and postinstall 
![GitHub release](https://img.shields.io/github/release/hackingjack/debian-lxde-postinstall.svg?style=popout)
[![Inline docs](http://inch-ci.org/github/{ORG-or-USERNAME}/{REPO-NAME}.svg?branch=master)](http://inch-ci.org/github/{ORG-or-USERNAME}/{REPO-NAME})
- [Debian 9 lxde Install and postinstall](#debian-9-lxde-install-and-postinstall)
	- [The Debian 9 LXDE installation process.](#the-debian-9-lxde-installation-process)
		- [Issues during the installation](#issues-during-the-installation)
		- [Solutions for Issues during the installation](#solutions-for-issues-during-the-installation)
		- [The Debian 9 installation process](#the-debian-9-installation-process)
	- [The Debian 9 LXDE post install process.](#the-debian-9-lxde-post-install-process)
		- [Download and prepare for post-installation Script](#download-and-prepare-for-post-installation-script)
		- [Set your personal settings before post-installation Script](#set-your-personal-settings-before-post-installation-script)
		- [Execute The post-installation Script](#execute-the-post-installation-script)
		- [Manual task to do after finishing the post-installation Script](#manual-task-to-do-after-finishing-the-post-installation-script)
	- [Overview over the contents of the post-installation script](#overview-over-the-contents-of-the-post-installation-script)
		- [Miscellaneous applications.](#miscellaneous-applications)
		- [Desktop applications](#desktop-applications)
		- [Technical applications](#technical-applications)
		- [Keyboard manipulations.](#keyboard-manipulations)
		- [keyboard shortcuts](#keyboard-shortcuts)
	- [My experience with different Linux distros](#my-experience-with-different-linux-distros)
		- [Ubuntu 16.. With GNOME desktop](#ubuntu-16-with-gnome-desktop)
		- [LUbuntu 18.. With LXQT desktop](#lubuntu-18-with-lxqt-desktop)
		- [Debian 9.9 With LXDE desktop](#debian-99-with-lxde-desktop)
	- [How to test the post-installation script(install.sh)](#how-to-test-the-post-installation-scriptinstallsh)

## The Debian 9 LXDE installation process.
This document describes :
-   How to install Debian 9 with lxde desktop environment.
-   How to run my post-installation script [install.sh](./install.sh). The script configures my personal computer ready for use. With all my favourite configurations and applications.
The installation script is quite personal. But I think other people can use this as it is. I also think it can be a good starting point to fork this Repo and tailor it for your needs.

### Issues during the installation
The installation process was quite straightforward, After dealing with two issues:
1.  I could not connect to my wireless network during the installation process.
2.  After the installation was finished, I could not connect to my wireless network.

### Solutions for Issues during the installation
1.  Maybe I got this issue because my computer is somewhat old or something. the solution to the problem was to install the "Non-free Firmware" version of Debian 9. You can download it and create an installation medium on CD or USB from these links:
    a.  [amd64](https://cdimage.debian.org/cdimage/unofficial/non-free/images-including-firmware/current/amd64/iso-cd/) for a 64 bit PC
    b.  [I386](https://cdimage.debian.org/cdimage/unofficial/non-free/images-including-firmware/current/i386/iso-cd/) for a 32 bit PC
2.  When you come to the last screen of the installation Instructions, Which heading is \"Finish the install\". Do not go further and follow the instructions on this [link](https://lists.debian.org/debian-user/2017/06/msg00943.html).

###  The Debian 9 installation process
Just make your own choices on those steps that I don\'t describe. Example just make your own choices for partitioning your discs. For myself I just used the default values on this point.
1.  Download and prepare an installation medium on USB or DVD. [Checkout solution for installation issue number one](#solutions-for-issues-during-the-installation)
2.  When you come to the point where you are asked to type in the password for super/root user. Leave these blank and go to next step. When you do it this way, a sudo configuration is created for you automatically. If you need a super/root user, you can configure that later on.
3.  When you came to the screen where to select software. Leave it as it is, except give a hock for LXDE
4.  When you came to the screen \"Finish the install\" then read carefully and follow the instructions on [solutions for installation issues number two](#solutions-for-issues-during-the-installation)

## The Debian 9 LXDE post install process.

### Download and prepare for post-installation Script
Install git on your computer. you have to do this to download the post-installation script from github. Copy and paste this into the terminal, hit enter.
```sh
sudo apt update -y
sudo apt install -y git
```
The commands under vil do the necessary stuff, clone and take you to the right folder to start the post-installation Script. Copy and paste it into the terminal, hit enter.
```sh
INST_PATH=$HOME/git_projects/installs && \
REPO=debian-lxde-postinstall && \
rm -fR $INST_PATH/$REPO && \
mkdir -p $INST_PATH && \
cd $INST_PATH && \
git clone https://github.com/hackingjack/$REPO.git && \
cd $REPO
```

### Set your personal settings before post-installation Script
Edit the file [variables-user.sh](./variables-user.sh) for your personal settings
```sh
nano ./variables-user.sh
```

### Execute The post-installation Script
```sh
./install.sh
```

### Manual task to do after finishing the post-installation Script
-   Configuring Google Chrome account
    -   Personal account
        -   Press <kbd>Super+g</kbd>. This will bring up Google Chrome
        -   If you have a password manager download and configure that extension.
        -   Sync your chrome account
    -   Job account
        -   Press <kbd>Super+j</kbd>. This will bring up Google Chrome
        -   Chrome will ask about sync in first screen. Hit the button and write in gmail/password to job account
-   Configuring visual studio code
    -   Press <kbd>Super+c</kbd>. This will bring up vscode
    -   press <kbd>Shift+Alt+d</kbd>. (this vil import your personal vscode settings. Settings sync extension is already installed during the post-installation)
    -   Type in gist id and secret credential for the sync extension. (This [link](https://docs.google.com/document/d/1myP5xBDmIM5R5VI8Dp3dEyH6iJL3kk8Uu4_NL49SKow/edit) is my personal credentials, you do not have access to them)
-   Setting up printer
    -   Menu\--\>Preferences\--\>Print settings\--\>Add. Follow the instructions

## Overview over the contents of the post-installation script
Here is a brief overview of the most program and features that the installation script will install on the computer. For a full overview look inside the shell script [install.sh](./install.sh)

### Miscellaneous applications.
The Debian 9 installation with LXDE desktop environments is a quite minimal installation. So there is installed package managers, compiling tools etc. look inside the shell script [install.sh](./install.sh).

### Desktop applications
-   Google Chrome.
-   Video capture and editing software
    -   [vokoscreen](https://github.com/vkohaupt/vokoscreen)
    -   [OpenShot](https://www.openshot.org/)

### Technical applications
-   [Visual Studio code](https://code.visualstudio.com/)
-   [Hugo](https://gohugo.io/)
-   [pandoc](https://pandoc.org/)

### Keyboard manipulations.
One of the big reasons that I switched from Windows to Linux. It\'s because you can manipulate everything in the Linux configuration. I have tried to manipulate the keyboard in Windows, with [autohotkey](https://www.autohotkey.com/). But that is not reliable at all. Here is all the changes to the normal us keyboard configuration.
-   <kbd>Space</kbd> works as <kbd>Space</kbd> and <kbd>Ctrl</kbd>. When holding <kbd>Space</kbd> down it works as <kbd>Ctrl</kbd>.
-   Switched <kbd>Caps</kbd> and <kbd>Esc</kbd>. (Hitting <kbd>Esc</kbd> makes <kbd>Caps</kbd>. To make <kbd>Esc</kbd> you have to hit <kbd>Caps</kbd>)
-   <kbd>Caps</kbd> Also works as a third level <kbd>Shift</kbd> when you hold it down.

| Key pressed                       | Norwegian character |
|-----------------------------------|---------------------|
| <kbd>Caps+'</kbd>        | æ                   |
| <kbd>Caps+;</kbd>        | ø                   |
| <kbd>Caps+\[</kbd>       | å                   |
| <kbd>Shift+Caps+'</kbd>  | Æ                   |
| <kbd>Shift+Caps+;</kbd>  | Ø                   |
| <kbd>Shift+Caps+\[</kbd> | Å                   |

### keyboard shortcuts
| Keyboard shortcut      | Action taken                                 |
|------------------------|----------------------------------------------|
| <kbd>Super+g</kbd> | Start Google Chrome with my personal account |
| <kbd>Super+j</kbd> | Starts Google Chrome with my job account     |
| <kbd>Super+c</kbd> | Starts visual studio code                    |
| <kbd>Super+x</kbd> | Bring up the system log out section          |

For more keyboard shortcuts you can look inside the file [keyboard-shortcuts/my-shortcuts.xml](./keyboard-shortcuts/my-shortcuts.xml)


## My experience with different Linux distros
I have tried out different Linux distros in this order:

### [Ubuntu](https://ubuntu.com/) 16.. With [GNOME](https://www.gnome.org/) desktop
It was easy to install and quite stable. I liked the desktop environment. Easy to use and smart solutions. The drawback of the gnome desktop, It was quite heavy for my old computer. But at all not as heavy as Windows 10. I can recommend Ubuntu if you have quite a good computer.

### [LUbuntu](https://lubuntu.net/) 18.. With [LXQT](https://lxqt.org/) desktop
WOOOOW lubuntu turned my computer to a super computer. Lightning-fast. At first glance I really liked this speed and the system has all you need. Easy to configure with no problems. The drawback with lubuntu is that it is unstable. Crashes often. Sometimes thing doesn\'t behave like expected. Maybe I try lubuntu another time and hope for some fixes.

### [Debian](https://www.debian.org/) 9.9 With [LXDE](https://lxde.org/) desktop
This lxde desktop is quite fast but not as fast as lubuntu. Debian is rock solid. I have used it quite a while by now, and it never crashes. Things behave like expected. Drawbacks with Debian: It is more complicated to install than the other Linux distros I have tried. Debian comes with a quite minimal configuration. You have to do a lot of things yourself with the config (the post-installation scripts takes care of that configuration). Another thing with Debian is that is based on well tested code base. The newest hottest thing is not inside Debian. I think Debian is not the first Linux distro you try out. When you have a little bit of experience then try it out.

## How to test the post-installation script([install.sh](./install.sh))
In the file [test.sh](./test.sh), the minimum configuration is set up for testing all parts in the [install.sh](./install.sh) script. Just copy chunks of code and paste it inside the test script([test.sh](./test.sh)). The code you will test, execute it like this:
```sh
./test.sh
```


[![Bash Shell](https://badges.frapsoft.com/bash/v1/bash.png?v=103)](https://github.com/ellerbrock/open-source-badges/)
[![made-with-bash](https://img.shields.io/badge/Made%20with-Bash-1f425f.svg)](https://www.gnu.org/software/bash/)
[![made-with-Markdown](https://img.shields.io/badge/Made%20with-Markdown-1f425f.svg)](http://commonmark.org)
[![Open Source Love svg3](https://badges.frapsoft.com/os/v3/open-source.svg?v=103)](https://github.com/ellerbrock/open-source-badges/)