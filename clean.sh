##!/bin/bash
#clean függvény: A function clean blokk tartalmazza a takarítási folyamatot.

#    A read -p parancs bekéri a felhasználótól, hogy akar-e takarítást végezni. A válasz a c változóba kerül.
#    Az if [ -n "$c" ]; then feltétel ellenőrzi, hogy a felhasználó adott-e meg valamit (azaz a változó nem üres-e). Ha igen, akkor futtatja a sudo pacman -Sc --noconfirm parancsot.
 #   Ha a felhasználó nem adott meg semmit, akkor a echo "Rendben, akkor most nem." parancsot futtatja, ami kiírja, hogy nem történik takarítás.

# Függvény hívása: A clean függvényt a végén hívjuk meg, hogy a felhasználói interakció megtörténjen.
echo "Tudni akarod, mennyi a tárhely? Megmutatom."
df -h

function clean {
    read -p "Akarod, hogy takarítsak kicsit? Ha igen, akkor adj egy karaktert + enter, ha nem, akkor csak enter: " c
    if [ -n "$c" ]; then
        sudo pacman -Sc --noconfirm
    else
        echo "Rendben, akkor most nem."
    fi
}

clean


