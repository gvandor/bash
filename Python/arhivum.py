#!/usr/bin/python3
#-*- coding:utf-8 -*-
# program: arhivum mounting.
print ("Ez gvandor python programja")
import os
os.system("sudo mount UUID=f883fffa-9bc8-435b-b11f-87e87b047ede /home/$USER/Arhivum")
# os.system("sudo ufw enable")
print ("arhivum csatolva: /home/$USER/Arhivum.")
