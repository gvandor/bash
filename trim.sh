#!/bin/sh
echo "Ez most kurva sokáig fog tartani, de te akartad"
sudo fstrim -v /
echo "root kész"
sudo fstrim -v /home
echo "/home kész"
sudo fstrim -v /home/$USER/Adat
echo "adat kész"
echo "Kész vagyok, most kéne egy kis pálinka."
