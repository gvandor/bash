#!/usr/bin/python3
#-*- coding:utf-8 -*-
# Ez a szkript a következőképpen működik:
# Először importálja a subprocess modult, amely lehetővé teszi a parancsok futtatását Pythonból.
# Ezután létrehoz egy listát a megadott programokról.
# Ezután a for ciklus segítségével végigmegy a programok listáján.
# Minden program esetében a szkript kiírja a telepítési üzenetet, majd # a subprocess.run() metódussal megpróbálja telepíteni a programot.
# Ha a telepítés sikertelen, akkor a szkript hozzáadja a programot a not_installed_programs listához.
# A for ciklus végén a szkript kiírja a not_installed_programs listát.

import subprocess

# A megadott programok listája
programs = ["plank", "gvfs", "thunderbird", "ufw", "neofetch", "guake", "thunar", "rednotebook", "gnome-disk-utility", "gparted", "htop", "lm_sensors", "wget", "discord", "audacity", "audacious", "keepassxc", "doublecmd-gtk2", "gimp", "vlc", "firefox", "gedit", "ark", "libreoffice-still", "libreoffice-still-hu", "brasero", "calibre", "transmission-gtk", "uget", "gnome-notes", "clipgrab", "avidemux-qt", "scribus", "librecad", "kicad", "kicad-library", "kicad-library-3d", "simple-scan", "gthumb", "okular", "pacman-contrib", "onboard", "adobe-source-sans-pro-fonts", "cantarell-fonts", "noto-fonts", "ttf-bitstream-vera", "tf-dejavu", "ttf-droid", "ttf-hack", "ttf-inconsolata", "ttf-liberation", "ttf-roboto", "ttf-ubuntu-font-family", "tamsyn-font", "noto-fonts-emoji", "unace", "unrar", "zip", "unzip", "sharutils", "arj", "cabextract", "file-roller", "cups", "cups-pdf", "ghostscript", "gsfonts", "gutenprint", "gtk3-print-backends", "libcups", "hplip", "system-config-printer", "pulseaudio", "pulseaudio-alsa", "pavucontrol", "alsa-utils", "alsa-plugins", "alsa-lib", "alsa-firmware", "gstreamer", "gst-plugins-good", "gst-plugins-bad", "gst-plugins-base", "gst-plugins-ugly", "volumeicon", "playerctl", "android-file-transfer", "code", "pychess", "gnome-chess", "nemo", "git", "evince", "galculator", "calibre", "gedit", "micro"]

# A nem telepített programok listája
not_installed_programs = []

# A programok telepítése
for program in programs:
  print("Telepítés:", program)
  try:
    subprocess.run(["sudo", "pacman", "-S","--needed", "--noconfirm", program], check=True)
  except subprocess.CalledProcessError:
    # A program nem települt sikeresen
    not_installed_programs.append(program)

# A nem telepített programok listájának kiírása
print("A következő programok nem települtek sikeresen:")
for program in not_installed_programs:
  print(program)
