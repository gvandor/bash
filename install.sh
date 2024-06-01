#!/bin/sh
#-*- coding:utf-8 -*-
# # Ez a szkript a következőképpen működik:
# Interpreter meghatározása: A szkript elején a #!/bin/bash sor jelzi, hogy a szkriptet a bash értelmezővel kell futtatni.
# Programok listája: A programs tömb tartalmazza a telepítendő programokat.
# Nem telepített programok listája: Az not_installed_programs tömböt üresen inicializáljuk.
# Programok telepítése: A for ciklus végigmegy a programs tömb elemein. Minden egyes program telepítését megpróbáljuk a sudo pacman -S --needed --noconfirm parancs segítségével. Ha a parancs nem sikerül (a if ! konstrukcióval ellenőrizzük), akkor a programot hozzáadjuk a not_installed_programs tömbhöz.
# Nem telepített programok kiírása: Végül a not_installed_programs tömb elemeit kiírjuk.



# A megadott programok listája
programs = ("plank" "gvfs" "thunderbird" "ufw" "neofetch" "guake" "thunar" "rednotebook" "gnome-disk-utility" "gparted" "htop" "lm_sensors" "wget" "discord" "audacity" "audacious" "keepassxc" "doublecmd-gtk2" "gimp" "vlc" "firefox" "gedit" "ark" "libreoffice-still" "libreoffice-still-hu" "brasero" "calibre" "transmission-gtk" "uget" "gnome-notes" "clipgrab" "avidemux-qt" "scribus" "librecad" "kicad" "kicad-library" "kicad-library-3d" "simple-scan" "gthumb" "okular" "pacman-contrib" "onboard" "adobe-source-sans-pro-fonts" "cantarell-fonts" "noto-fonts" "ttf-bitstream-vera" "tf-dejavu" "ttf-droid" "ttf-hack" "ttf-inconsolata" "ttf-liberation" "ttf-roboto" "ttf-ubuntu-font-family" "tamsyn-font" "noto-fonts-emoji" "unace" "unrar" "zip" "unzip" "sharutils" "arj" "cabextract" "file-roller" "cups" "cups-pdf" "ghostscript" "gsfonts" "gutenprint" "gtk3-print-backends" "libcups" "hplip" "system-config-printer" "pulseaudio" "pulseaudio-alsa" "pavucontrol" "alsa-utils" "alsa-plugins" "alsa-lib" "alsa-firmware" "gstreamer" "gst-plugins-good" "gst-plugins-bad" "gst-plugins-base" "gst-plugins-ugly" "volumeicon" "playerctl" "android-file-transfer" "code" "pychess" "gnome-chess" "nemo" "git" "evince" "galculator" "calibre" "gedit" "micro")

# A nem telepített programok listája
not_installed_programs=()
# A programok telepítése
for program in "${programs[@]}"
do
  echo "Telepítés: $program"
  if ! sudo pacman -S --needed --noconfirm "$program"; then
# A program nem települt sikeresen
    not_installed_programs+=("$program")
  fi
done
# A nem telepített programok listájának kiírása
echo "A következő programok nem települtek sikeresen:"
for program in "${not_installed_programs[@]}"
do
  echo "$program"
done
