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
programs = ["A", "B", "abiword", "C", "D", ]

# A nem telepített programok listája
not_installed_programs = []

# A programok telepítése
for program in programs:
  print("Telepítés:", program)
  try:
    subprocess.run(["sudo", "pacman", "-S", "--needed", "--noconfirm", program], check=True)
  except subprocess.CalledProcessError:
    # A program nem települt sikeresen
    not_installed_programs.append(program)

# A nem telepített programok listájának kiírása
print("A következő programok nem települtek sikeresen:")
for program in not_installed_programs:
  print(program)
