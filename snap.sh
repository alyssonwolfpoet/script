#!/bin/bash
sudo apt-get update && sudo apt-get dist-upgrade -y && sudo apt-get clean && sudo apt-get autoremove -y
sudo snap refresh
#snap remove --purge firefox 
#snap remove --purge gnome-3-38-2004 
#snap remove --purge gtk-common-themes 
#snap remove --purge snap-store 
#snap remove --purge snapd-desktop-integration
#snap remove --purge bare
#snap remove --purge base
#snap remove --purge core20
#snap remove --purge snapd

#apt-get remove --purge snapd -y

apt install flatpak -y
apt-get install gnome-software-plugin-flatpak -y
#apt-get remove --purge snapd -y
#apt remove --purge gnome-software-plugin-snap -y
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

#flatpak install flathub org.mozilla.firefox -y

sudo rm snap.sh
