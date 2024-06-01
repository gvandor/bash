#!/bin/bash
set -e
echo "############################################################"
echo "###		Archlinux program telepítő script     ####"
echo "###						      ####"
echo "############################################################"
echo "#################Rendszer frissítés folyamatban#################"
sudo pacman -Syyu --noconfirm --needed
echo "###############Programok telepítése folyamatban###################"
# először telepíteni kell az aurhelper yay-t, az külön szkriptben van.
# Telepítendő Programok
# yay -S --noconfirm --needed pamac-aur
# a gvfs és udisks2 thunar-volman fontosak, e nélkül nem látod a partíciókat sem. Ha Androidot is akarsz csatlakoztatni, akkor még jmtpfs is kell. Viszont a gvfs hozza az udisks2-őt, az xfce meg a thunar-volmant.
sudo pacman -S --noconfirm --needed android-file-transfer
sudo pacman -S --noconfirm --needed filezilla
sudo pacman -S --noconfirm --needed gvfs
#sudo pacman -S --noconfirm --needed udisks2
sudo pacman -S --noconfirm --needed thunderbird
sudo pacman -S --noconfirm --needed ufw 
# sudo pacman -S --noconfirm --needed gufw 
sudo pacman -S --noconfirm --needed neofetch
sudo pacman -S --noconfirm --needed guake
sudo pacman -S --noconfirm --needed rednotebook
# sudo pacman -S --noconfirm --needed gnome-tweaks 
# sudo pacman -S --noconfirm --needed adwaita-dark-theme
# sudo pacman -S --noconfirm --needed arc-gtk-theme
# sudo pacman -S --noconfirm --needed dconf-editor
# sudo pacman -S --noconfirm --needed gnome-system-monitor
sudo pacman -S --noconfirm --needed gnome-disk-utility
sudo pacman -S --noconfirm --needed gparted
sudo pacman -S --noconfirm --needed htop
sudo pacman -S --noconfirm --needed lm_sensors
sudo pacman -S --noconfirm --needed wget
sudo pacman -S --noconfirm --needed discord
sudo pacman -S --noconfirm --needed audacity
sudo pacman -S --noconfirm --needed audacious
sudo pacman -S --noconfirm --needed keepassxc
sudo pacman -S --noconfirm --needed doublecmd-gtk2
sudo pacman -S --noconfirm --needed gimp
sudo pacman -S --noconfirm --needed vlc
sudo pacman -S --noconfirm --needed firefox
sudo pacman -S --noconfirm --needed gedit
#sudo pacman -S --noconfirm --needed ark
sudo pacman -S --noconfirm --needed libreoffice-still
sudo pacman -S --noconfirm --needed libreoffice-still-hu
sudo pacman -S --noconfirm --needed brasero
sudo pacman -S --noconfirm --needed calibre
sudo pacman -S --noconfirm --needed transmission-gtk
sudo pacman -S --noconfirm --needed uget
sudo pacman -S --noconfirm --needed gnome-notes
# sudo pacman -S --noconfirm --needed gnome-calculator
# sudo pacman -S --noconfirm --needed gnome-screenshot
sudo pacman -S --noconfirm --needed clipgrab
sudo pacman -S --noconfirm --needed avidemux-qt
sudo pacman -S --noconfirm --needed scribus 
sudo pacman -S --noconfirm --needed librecad
sudo pacman -S --noconfirm --needed kicad
# sudo pacman -S --noconfirm --needed knights
sudo pacman -S --noconfirm --needed simple-scan
# sudo pacman -S --noconfirm --needed virtualbox
sudo pacman -S --noconfirm --needed gthumb
# sudo pacman -S --noconfirm --needed gnome-contatcts
sudo pacman -S --noconfirm --needed okular
sudo pacman -S --noconfirm --needed galculator
sudo pacman -S --noconfirm --needed pacman-contrib
sudo pacman -S --noconfirm --needed plank
sudo pacman -S --noconfirm --needed onboard
# yay -S --noconfirm --needed jmtpfs
# yay -S --noconfirm --needed olive
# sudo pacman -S --noconfirm --needed xfce4 xfce4-goodies
# sudo pacman -S --noconfirm --needed cinnamon cinnamon-translations
# BETŰTÍPUSOK
echo "Betűkészletek telepítése folyamatban"
sudo pacman -S adobe-source-sans-pro-fonts --noconfirm --needed
sudo pacman -S cantarell-fonts --noconfirm --needed
sudo pacman -S noto-fonts --noconfirm --needed
sudo pacman -S ttf-bitstream-vera --noconfirm --needed
sudo pacman -S ttf-dejavu --noconfirm --needed
sudo pacman -S ttf-droid --noconfirm --needed
sudo pacman -S ttf-hack --noconfirm --needed
sudo pacman -S ttf-inconsolata --noconfirm --needed
sudo pacman -S ttf-liberation --noconfirm --needed
sudo pacman -S ttf-roboto --noconfirm --needed
sudo pacman -S ttf-ubuntu-font-family --noconfirm --needed
sudo pacman -S tamsyn-font --noconfirm --needed
sudo pacman -S noto-fonts-emoji --noconfirm --needed
echo "Betűkészletek telepítve"
# TÖMÖRÍTŐK
echo "Tömörítők telepítése folyamatban"
sudo pacman -S --noconfirm --needed unace
sudo pacman -S --noconfirm --needed unrar
sudo pacman -S --noconfirm --needed zip unzip
sudo pacman -S --noconfirm --needed sharutils
sudo pacman -S --noconfirm --needed  uudeview
sudo pacman -S --noconfirm --needed  arj
sudo pacman -S --noconfirm --needed cabextract
sudo pacman -S --noconfirm --needed file-roller
echo "Tömörítők telepítve"

# sudo pacman -S --noconfirm --needed seahorse playonlinux kfind mousepad leafpad kwrite kate gnome-notes genius baobab xboard gnote evolution
# sudo pacman -S --noconfirm --needed hddtemp
# sudo pacman -S --noconfirm --needed net-tools
# sudo pacman -S --noconfirm --needed screenfetch
# sudo pacman -S --noconfirm --needed sysstat
# sudo pacman -S --noconfirm --needed evince

# PRINTER
sudo pacman -S --noconfirm --needed cups cups-pdf
#first try if you can print without foomatic
sudo pacman -S foomatic-db-engine --noconfirm --needed
sudo pacman -S foomatic-db foomatic-db-ppds foomatic-db-nonfree-ppds foomatic-db-gutenprint-ppds --noconfirm --needed
sudo pacman -S ghostscript gsfonts gutenprint --noconfirm --needed
sudo pacman -S gtk3-print-backends --noconfirm --needed
sudo pacman -S libcups --noconfirm --needed
sudo pacman -S hplip --noconfirm --needed
sudo pacman -S system-config-printer --noconfirm --needed

sudo systemctl enable org.cups.cupsd.service

#echo "After rebooting it will work"
#echo "################################################################"
#echo "#########   printer management software installed     ##########"
#echo "################################################################"

# HANG DOLGOK TELEPÍTÉSE

sudo pacman -S pulseaudio --noconfirm --needed
sudo pacman -S pulseaudio-alsa --noconfirm --needed
sudo pacman -S pavucontrol  --noconfirm --needed
sudo pacman -S alsa-utils alsa-plugins alsa-lib alsa-firmware --noconfirm --needed
sudo pacman -S gstreamer --noconfirm --needed
sudo pacman -S gst-plugins-good gst-plugins-bad gst-plugins-base gst-plugins-ugly --noconfirm --needed
sudo pacman -S volumeicon --noconfirm --needed
sudo pacman -S playerctl --noconfirm --needed

# echo "################################################################"
echo "#########       Hangrendszer telepítve          ################"
#echo "################################################################"

# BLUETOOTH (if needed)

#sudo pacman -S --noconfirm --needed pulseaudio-bluetooth
#sudo pacman -S --noconfirm --needed bluez
#sudo pacman -S --noconfirm --needed bluez-libs
#sudo pacman -S --noconfirm --needed bluez-utils
#sudo pacman -S --noconfirm --needed blueberry

#sudo systemctl enable bluetooth.service
#sudo systemctl start bluetooth.service

#sudo sed -i 's/'#AutoEnable=false'/'AutoEnable=true'/g' /etc/bluetooth/main.conf

#echo "reboot your system then ..."
#echo "set with bluetooth icon in bottom right corner"
#echo "change to have a2dp if needed"


#echo "################################################################"
#echo "###################    T H E   E N D      ######################"
#echo "################################################################"

# SAMBA

#sudo pacman -S --noconfirm --needed samba
#sudo wget "https://git.samba.org/samba.git/?p=samba.git;a=blob_plain;f=examples/smb.conf.default;hb=HEAD" -O /etc/samba/smb.conf.original
#sudo wget "https://raw.githubusercontent.com/arcolinux/arcolinux-system-config/master/etc/samba/smb.conf.arcolinux" -O /etc/samba/smb.conf.arcolinux
#sudo wget "https://raw.githubusercontent.com/arcolinux/arcolinux-system-config/master/etc/samba/smb.conf.arcolinux" -O /etc/samba/smb.conf
#sudo systemctl enable smb.service
#sudo systemctl start smb.service
#sudo systemctl enable nmb.service
#sudo systemctl start nmb.service

##Change your username here
#read -p "What is your login? It will be used to add this user to smb : " choice
#sudo smbpasswd -a $choice

#access samba share windows
#sudo pacman -S --noconfirm --needed gvfs-smb

#echo "################################################################"
#echo "#########   samba  software installed           ################"
#echo "################################################################"

# NETWORK DISCOVERY

#sudo pacman -S --noconfirm --needed avahi
#sudo systemctl enable avahi-daemon.service
#sudo systemctl start avahi-daemon.service

#sudo pacman -S --noconfirm --needed nss-mdns

#sudo pacman -S --noconfirm --needed gvfs-smb

#sudo sed -i 's/files mymachines myhostname/files mymachines/g' /etc/nsswitch.conf

#sudo sed -i 's/\[\!UNAVAIL=return\] dns/\[\!UNAVAIL=return\] mdns dns wins myhostname/g' /etc/nsswitch.confecho "Betűkészletek telepítése folyamatban"
sudo pacman -S adobe-source-sans-pro-fonts --noconfirm --needed
sudo pacman -S cantarell-fonts --noconfirm --needed
sudo pacman -S noto-fonts --noconfirm --needed
sudo pacman -S ttf-bitstream-vera --noconfirm --needed
sudo pacman -S ttf-dejavu --noconfirm --needed
sudo pacman -S ttf-droid --noconfirm --needed
sudo pacman -S ttf-hack --noconfirm --needed
sudo pacman -S ttf-inconsolata --noconfirm --needed
sudo pacman -S ttf-liberation --noconfirm --needed
sudo pacman -S ttf-roboto --noconfirm --needed
sudo pacman -S ttf-ubuntu-font-family --noconfirm --needed
sudo pacman -S tamsyn-font --noconfirm --needed
sudo pacman -S noto-fonts-emoji --noconfirm --needed
echo "Betűkészletek telepítve"
# TÖMÖRÍTŐK
echo "Tömörítők telepítése folyamatban"
sudo pacman -S --noconfirm --needed unace
sudo pacman -S --noconfirm --needed unrar
sudo pacman -S --noconfirm --needed zip unzip
sudo pacman -S --noconfirm --needed sharutils
sudo pacman -S --noconfirm --needed  uudeview
sudo pacman -S --noconfirm --needed  arj
sudo pacman -S --noconfirm --needed cabextract
sudo pacman -S --noconfirm --needed file-roller
echo "Tömörítők telepítve"
#echo "################################################################"
#echo "####       network discovery  software installed        ########"
#echo "################################################################"

# TLP FOR LAPTOPS

#sudo pacman -S --noconfirm --needed tlp
#sudo systemctl enable tlp.service
#sudo systemctl start tlp.service

#echo "################################################################"
#echo "####               tlp  software installed              ########"
#echo "################################################################"

# INTEL / AMD UCODE

#sudo pacman -S intel-ucode --noconfirm
#sudo pacman -S amd-ucode --noconfirm
#sudo grub-mkconfig -o /boot/grub/grub.cfg





