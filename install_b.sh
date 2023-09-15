#!/bin/bash
set -e
############################################################
###	Archlinux program telepítő script, ellenőrizni, ####
#	hogy mit nem sikerült telepíteni		 ###
############################################################
#
#
# Telepítendő Programok
# a gvfs és udisks2 thunar-volman fontosak, e nélkül nem látod a partíciókat sem. Android csatlakoztatáshoz meg a jmtpfs. A gvfs hozza az udisks2-őt, az xfce4 meg a thunar-volman-t.
# gnome versio:
# sudo pacman -S --noconfirm --needed  plank gvfs thunderbird ufw gufw neofetch guake rednotebook gnome-tweaks adwaita-dark-theme arc-gtk-theme dconf-editor gnome-system-monitor gnome-disk-utility gparted htop lm_sensors wget discord audacity audacious keepassxc doublecmd-gtk2 gimp vlc firefox gedit ark libreoffice-still libreoffice-still-hu brasero calibre transmission-gtk uget gnome-notes gnome-calculator gnome-screenshot clipgrab avidemux-qt scribus librecad kicad knights simple-scan virtualbox gthumb gnome-contatcts okular pacman-contrib
# xfce4 versio:
sudo pacman -S --noconfirm --needed  plank gvfs thunderbird ufw gufw neofetch guake rednotebook gnome-disk-utility gparted htop lm_sensors wget discord audacity audacious keepassxc doublecmd-gtk2 gimp vlc firefox gedit ark libreoffice-still libreoffice-still-hu brasero calibre transmission-gtk uget gnome-notes clipgrab avidemux-qt scribus librecad kicad simple-scan gthumb okular pacman-contrib onboard
# yay -S --noconfirm --needed jmtpfs
# yay -S --noconfirm --needed olive
echo "Betűkészletek telepítése folyamatban"
sudo pacman -S --noconfirm --needed adobe-source-sans-pro-fonts cantarell-fonts noto-fonts ttf-bitstream-vera ttf-dejavu ttf-droid ttf-hack ttf-inconsolata ttf-liberation ttf-roboto ttf-ubuntu-font-family tamsyn-font noto-fonts-emoji

echo "Betűkészletek telepítve"
# TÖMÖRÍTŐK
echo "Tömörítők telepítése folyamatban"
sudo pacman -S --noconfirm --needed unace unrar zip unzip sharutils arj cabextract file-roller
echo "Tömörítők telepítve"
# PRINTER
sudo pacman -S --noconfirm --needed cups cups-pdf ghostscript gsfonts gutenprint gtk3-print-backends libcups hplip system-config-printer 
#first try if you can print without foomatic
#sudo pacman -S foomatic-db-engine --noconfirm --needed
#sudo pacman -S foomatic-db fooystem-config-printermatic-db-ppds foomatic-db-nonfree-ppds foomatic-db-gutenprint-ppds --noconfirm --needed
#echo "After rebooting it will work"
#echo "################################################################"
#echo "#########   printer management software installed     ##########"
#echo "################################################################"

# HANG DOLGOK TELEPÍTÉSE

sudo pacman -S --noconfirm --needed pulseaudio pulseaudio-alsa pavucontrol alsa-utils alsa-plugins alsa-lib alsa-firmware gstreamer gst-plugins-good gst-plugins-bad gst-plugins-base gst-plugins-ugly volumeicon playerctl

# echo "################################################################"
echo "#########       Hangrendszer telepítve          ################"
#echo "################################################################"



