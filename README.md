

# debian-lxde-postinstall
Innstallation of all my personal apps and configuration. after a Debian lxde install

## First clone install repo.
The commands under vil do the nesesary stuff, clone and take you to the rigt folder to start an instalation. Copy and paste it into the terminal, hit enter.

```
cd ~ && mkdir git_projects && cd git_projects && mkdir installs && cd installs && git clone https://github.com/hackingjack/debian-lxde-postinstall.git && cd debian-lxde-postinstall

```
## Second run the instalation script
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