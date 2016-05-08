#!/bin/bash

# do not install ubuntu-restricted-extras ubuntu-tweak


####################################################################
#repositories PPA 

# pour Paper theme : http://www.snwh.org
sudo add-apt-repository ppa:snwh/pulp

# for update de backintime 1.1.12 and over
sudo add-apt-repository ppa:bit-team/stable

# for remmina récent
sudo add-apt-repository ppa:remmina-ppa-team/remmina-next 

# for banshee 3.0 qu'on attends tous... depuis 2 ans
# sudo add-apt-repository ppa:banshee-team/ppa

# add repository for : sublime text
sudo add-apt-repository ppa:webupd8team/sublime-text-3

# add repository for : Oracle Java
sudo add-apt-repository ppa:webupd8team/java

# non installed (yet)... sudo apt-get install oracle-java7-installer
# if not set : sudo update-java-alternatives -s java-7-oracle

# google chrome
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
sudo sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" > /etc/apt/sources.list.d/google.chrome.list'

########################################################

#install des packages venant de ppas
sudo apt-get update
sudo apt-get upgrade

####################################################################
# packages to install first:

# essentiels
sudo apt-get install nfs-common cifs-utils backintime-gnome git terminator vim aptitude build-essential vim-doc subversion gitg tig zenity unetbootin gparted most tree ncdu goaccess glogg bleachbit ccze virtualbox tmux oracle-java8-installer exfat-utils davfs2

# playing (large and slow download > 30 min)
# sudo apt-get install 0ad wesnoth dosbox triplea

# themes et icônes
sudo apt-get install paper-icon-theme paper-gtk-theme

# desktop apps in french
sudo apt-get install gtkhash conky conky-all firefox-locale-fr skype retext meld planner dia calibre kmymoney gramps hyphen-fr libreoffice-help-fr libreoffice-l10n-fr verbiste-gnome mythes-fr python-boto python-pygoocanvas ttf-mscorefonts-installer tesseract-ocr tesseract-ocr-fra tesseract-ocr-ita filezilla klavaro focuswriter sublime-text-installer google-chrome-stable shutter

# obsolete file format ?... sudo apt-get install libreoffice-filter-binfilter

# network and security utlities
sudo apt-get install htop iftop ifstat iptraf wireshark tshark arp-scan netspeed nmap netpipe-tcp chkrootkit rkhunter remmina

# multimedia supports
sudo apt-get install v4l2ucp audacity isomaster vlc x264 ffmpeg2theora oggvideotools hugin pavucontrol darktable gimp ogmrip transmageddon guvcview wavpack mppenc faac flac vorbis-tools faad lame cheese sound-juicer picard milkytracker easytag radiotray banshee fotoxx phatch

#----------------------------------------------------------
#ajout des repos :
#ppa:webupd8team/themes
#ppa:shutter/ppa
#ppa:bit-team/stable (last version of backintime)

