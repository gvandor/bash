#!/usr/bin/python3
#-*- coding:utf-8 -*-
# program: ment.py
# !!! minden mentéskor írd át a számot hat helyen
# # Utolsó mentés:  2024 április 29. száma 30
# Mivel a CD parancs nem működik, ezért mindenhol teljes elérési utat írtam.
# most kipróbálom, hátha működik a cd.
import os
def ment():
    c= input("Biztos vagy benne, hogy adatmentést akarsz?, ha igen akkor adj egy karaktert majd nyomj entert, ha nem akkor csak entert ")
    if c:
        os.system("mkdir /home/$USER/Adat/Adatmentes/Documents/Documents_31")
        print ("Adatmentés folyamatban.")
        os.system("tar -czvf /home/$USER/Adat/Adatmentes/Documents/Documents_31/documents_31.tgz /home/$USER/Adat/Documents/*")
        os.system("clear")
        print("Ellenőrző összeg létrehozása sha256, mindjárt kész.")
        os.system("cd /home/$USER/Adat/Adatmentes/Documents/Documents_31")
        os.system("sha256sum documents_31.tgz > CHECKSUM")
        print("Adatmentés befejeződött, írd át öt helyen a szkriptben a számokat, majd írd át fent a komment szekcióban az utolsó mentés dátumát, számát.")
        
    else:
        print ("Azok az adatok, amiről nincs mentés, nem is fontosak! ")
ment()

















