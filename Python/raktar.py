#!/usr/bin/python3
#-*- coding:utf-8 -*-
# program: raktar mounting.
print ("Ez gvandor python programja")
import os
os.system("sudo mount UUID=dda5b465-fe54-46b4-bd53-fd5da3273849 /home/$USER/Raktar")
# os.system("sudo ufw enable")
print ("raktar csatolva: /home/$USER/Raktar.")
