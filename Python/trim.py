#!/usr/bin/python3
print ("Ez gvandor python programja")
import os
os.system("sudo fstrim -v /")
print ("root kész")
os.system("sudo fstrim -v /home")
print ("/home kész")
os.system("sudo fstrim -v /home/$USER/Adat")
print ("adat kész")
print ("Kész vagyok, most kéne egy kis pálinka")
