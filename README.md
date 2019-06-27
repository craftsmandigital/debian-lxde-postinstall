
# Debian 9 lxde Install and postinstall 

- [Debian 9 lxde Install and postinstall](#Debian-9-lxde-Install-and-postinstall)
	- [The Debian 9 LXDE installation process.](#The-Debian-9-LXDE-installation-process)
		- [Issues during the installation](#Issues-during-the-installation)
		- [Solutions for Issues during the installation](#Solutions-for-Issues-during-the-installation)
		- [The Debian 9 installation process](#The-Debian-9-installation-process)
	- [The Debian 9 LXDE post install process.](#The-Debian-9-LXDE-post-install-process)
		- [Download and prepare for post-installation Script](#Download-and-prepare-for-post-installation-Script)
		- [Set your personal settings before post-installation Script](#Set-your-personal-settings-before-post-installation-Script)
		- [Execute The post-installation Script](#Execute-The-post-installation-Script)
		- [Manual task to do after finishing the post-installation Script](#Manual-task-to-do-after-finishing-the-post-installation-Script)
	- [Overview over the contents of the post-installation script](#Overview-over-the-contents-of-the-post-installation-script)
		- [Miscellaneous applications.](#Miscellaneous-applications)
		- [Desktop applications](#Desktop-applications)
		- [Technical applications](#Technical-applications)
		- [Keyboard manipulations.](#Keyboard-manipulations)
		- [keyboard shortcuts](#keyboard-shortcuts)

## The Debian 9 LXDE installation process.

### Issues during the installation
The installation process was quite straightforward, After dealing with two issues:
1.  I could not connect to my wireless network during the installation process.
2.  After the installation was finished, I could not connect to my wireless network.

### Solutions for Issues during the installation
1.  Maybe I got this issue because my computer is somewhat old or something. the solution to the problem was to install the "Non-free Firmware" version of Debian 9. You can download it and create an installation medium on DVD or usb from this [link](https://cdimage.debian.org/cdimage/unofficial/non-free/images-including-firmware/current/amd64/iso-cd/)

2.  When you come to the last screen of the installation Instructions, Which heading is \"Finish the install\". Do not go further and follow the instructions on this [link](https://lists.debian.org/debian-user/2017/06/msg00943.html)

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
rm -R ~/git_projects/installs/debian-lxde-postinstall
mkdir -p ~/git_projects/installs
cd ~/git_projects/installs && git clone https://github.com/hackingjack/debian-lxde-postinstall.git && cd debian-lxde-postinstall
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
    -   press <kbd>Shift+Alt+d </kbd>(this vil import your personal vscode settings. Settings sync extension is already installed during the post-installation)
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
-   <kbd>Space</kbd> works as <kbd>Spase</kbd> and <kbd>Ctrl</kbd>. When holding <kbd>Space</kbd> down it works as <kbd>Ctrl</kbd>.
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
