#!/bin/sh
#-*- coding:utf-8 -*-
# Ez a szkript a következőképpen működik:
# Interpreter meghatározása: A szkript elején a #!/bin/bash sor jelzi, hogy a szkriptet a bash értelmezővel kell futtatni.
# Programok listája: A programs tömb tartalmazza a telepítendő programokat.
# Nem telepített programok listája: Az not_installed_programs tömböt üresen inicializáljuk.
# Programok telepítése: A for ciklus végigmegy a programs tömb elemein. Minden egyes program telepítését megpróbáljuk a sudo pacman -S --needed --noconfirm parancs segítségével. Ha a parancs nem sikerül (a if ! konstrukcióval ellenőrizzük), akkor a programot hozzáadjuk a not_installed_programs tömbhöz.
# Nem telepített programok kiírása: Végül a not_installed_programs tömb elemeit kiírjuk.

# A megadott programok listája
programs=("A" "B" "audio-convert" "C" "D")
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
 
