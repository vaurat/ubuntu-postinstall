#!/bin/bash

####################################################################
#repositories PPA 

# pour Paper theme : http://www.snwh.org
sudo add-apt-repository ppa:snwh/ppa

# for update de backintime 1.1.12 and over
sudo add-apt-repository ppa:bit-team/stable

# for remmina récent
# sudo add-apt-repository ppa:remmina-ppa-team/remmina-next 

# for banshee 3.0 qu'on attends tous... depuis 2 ans
# sudo add-apt-repository ppa:banshee-team/ppa

# add repository for : sublime text
# sudo add-apt-repository ppa:webupd8team/sublime-text-3

# add repository for : Oracle Java 8
sudo add-apt-repository ppa:webupd8team/java
# add repository for : Oracle Java 11   
sudo add-apt-repository ppa:linuxuprising/java

# for indicator-sound-switcher
sudo add-apt-repository ppa:yktooo/ppa

# non installed (yet)... sudo apt-get install oracle-java7-installer
# if not set : sudo update-java-alternatives -s java-7-oracle

# google chrome to be installed manually as it requires a licence aggreement
# and as the chrome deb is setting the deb line in sources.list one more time creating a duplicate entry
# wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
# sudo sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" > /etc/apt/sources.list.d/google.chrome.list'

########################################################
# install flatpak
sudo apt-get install flatpak gnome-software-plugin-flatpak
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

# packages to install first:
sudo dpkg --add-architecture i386

# remplaçant de ia32-libs pour exec des ELF 32bits.
sudo apt-get install lib32ncurses5 lib32z1

#install des packages venant de ppas
sudo apt-get update
sudo apt-get upgrade

####################################################################

# ajout des extras
sudo apt-get install ubuntu-restricted-extras

# probleme de fans
sudo apt-get install lm-sensors fancontrol

# essentiels
sudo apt-get install vim-gtk ssh aptitude
sudo apt-get install dialog backintime-gnome git build-essential subversion ncdu tree goaccess glogg ccze tmux oracle-java8-installer openjdk-8-jdk openjdk-8-source openjdk-11-jdk openjdk-11-source gdebi most httpie curl zsh zsh-doc gufw dconf-tools yarn nodejs nfs-common cifs-utils ant-contrib
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# RDP
sudo apt install xrdp
sudo systemctl enable xrdp

# javascript
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt-get install yarn nodejs

# Python
sudo apt install python3-pip

# R
sudo apt install r-base r-base-dev

# tools
sudo apt install gnome-boxes

# sudo apt-get install tilix vim-doc subversion gitg tig zenity gparted most bleachbit virtualbox exfat-utils openssh-server

# playing (large and slow download > 30 min)
# sudo apt-get install 0ad wesnoth dosbox triplea

# themes et icônes
sudo apt-get install paper-icon-theme gnome-tweak-tool 

# desktop apps in french
sudo apt-get install kazam calibre gimp gtkhash meld filezilla mysql-workbench gnome-shell-pomodoro shutter treeline
# sudo apt-get install gtkhash conky conky-all firefox-locale-fr retext meld planner dia calibre kmymoney gramps hyphen-fr libreoffice-help-fr libreoffice-l10n-fr verbiste-gnome mythes-fr python-boto python-pygoocanvas tesseract-ocr tesseract-ocr-fra tesseract-ocr-ita klavaro focuswriter sublime-text-installer shutter mysql-workbench

# obsolete file format ?... sudo apt-get install libreoffice-filter-binfilter

# network and security utlities
sudo apt-get install htop net-tools
# sudo apt-get install htop iftop ifstat iptraf wireshark tshark arp-scan netspeed nmap netpipe-tcp chkrootkit rkhunter

# multimedia supports
sudo apt-get install vlc
# sudo apt-get install v4l2ucp audacity isomaster vlc x264 ffmpeg2theora oggvideotools hugin pavucontrol darktable gimp ogmrip transmageddon guvcview wavpack mppenc faac flac vorbis-tools faad lame cheese sound-juicer picard milkytracker easytag banshee fotoxx phatch

# customisation
gsettings set org.gnome.shell.extensions.dash-to-dock click-action 'minimize'
# deactivation switch TTY
sudo kbd_mode -s

# https://www.blog-libre.org/2017/04/20/essuyer-les-platres-dns-sur-ubuntu/
ls -la /etc/resolv.conf
sudo rm -f /etc/resolv.conf
sudo ln -s /run/systemd/resolve/resolv.conf /etc/resolv.conf

#----------------------------------------------------------
#ajout des repos :
#ppa:webupd8team/themes
#ppa:shutter/ppa
#ppa:bit-team/stable (last version of backintime)

