

# debian-lxde-postinstall
Innstallation of all my personal apps and configuration. after a Debian lxde install


## First Install git
```
sudo apt update -y
sudo apt install -y git
```
## Second clone install repo.
The commands under vil do the nesesary stuff, clone and take you to the rigt folder to start an instalation. Copy and paste it into the terminal, hit enter.

```
cd ~ && mkdir git_projects && cd git_projects && mkdir installs && cd installs && git clone https://github.com/hackingjack/debian-lxde-postinstall.git && cd debian-lxde-postinstall

```
## Third run the instalation script
```
./install.sh
```

## Third post install Manual tasks

### Adding the norwegian language
- Start --> Preferences --> LXQT settings --> Keyboard and mouse --> Keyboard and layout
- press add button, chose norwegian  
- chose both shift as shortcutt



### Changing google chrome to default web browser

- Start --> Preferences --> LXQT settings --> Session settings --> Default applications
 - set Web browser = google-chrome-stable
 - Go to html, jpg, gif files in file manager and rigtclick and shoose default app




### finish google crome settings
Use the shortcuts to start google chrome
- Ctrl+Alt+g (Default user) --> 
    - Install lastpass
    - Sett up default user
    - Synscronise and gett the rest off your setup
- Ctrl+Alt+j (jobb user user) --> 
    - Sett up Jobb user
    - Synscronise and gett the rest off your setup (Copy password from lastpass on default user)


### Finish vscode  settings
 use the shortcuts to start vscode
 - Ctrl+Alt+c --> 
 - press Shift+Alt+d (this vil import your personal vscode settings. Settings sync extention is already installed) 
 - Copy gist id and secret credentical from this document 
 - https://docs.google.com/document/d/1myP5xBDmIM5R5VI8Dp3dEyH6iJL3kk8Uu4_NL49SKow/edit

### Speed up boot time
```
code /etc/default/grub
```
Change the delay value to 0 seconds, by setting `GRUB_TIMEOUT=0`:
Then update your GRUB settings by using the command:
```
sudo update-grub
```














Installing tasks

	Issues
	1.	My computer could not connect to the wireless network during installation
		Maybee my computer has a spessial network card.
		The solution to this problem vas to use a non-free disrubution of debian.
		I downloaded it from this link WWW and burned it to a DVD.
	2.	When the installaton was finnished, I could not manage to connect to the internett.
		The fix to that problem was to follow these WWW instructions on the last screen of
		the installation. The heading of this step is "Finish the install"

	The instalation prosess is pretty stright forward. exept three things
	1.	When you come to the point where you is asked to type inn password for super/root user.
		Leave these blank and go to next step. When you do this a sudo configuration is created for you
		automaticly. If you need a super/root user later on, you can configure that later.
	2.	When you came to the screen where to select software. Leave it as it is, exept give a hock for LXDE
	3.	Read carefully above step 2. under Issues. WWW

	Run the install script

	Manualy task to do after post install
	1.	Configure Personal Google chrome
		1.	press <SUPER> + g Google chrome could now start
		1.	If you have a password manager download and configure that extention.
		1.	Sync your chrome account
		Configure Google Job account
		1.	press <SUPER> + j Google chrome could now start
		2.	Chromme wil ask about sync in first screen. Hit the button and write in gmail/password to job account

	2. Configure vscode
 		Følg den beskrivelsen beskrevet lenger oppe i dokkumentet. de stemmer bra