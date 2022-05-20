#! /bin/bash

# FOR ARCH USE THIS
#cd
#git clone https://aur.archlinux.org/yay.git > /dev/null
#cd yay/
#makepkg -sir
#cd
#sudo pacman -S base-devel picom feh make > /dev/null


# FOR DEBIAN USE THIS
echo "[+] Downloading stuff"
cd
echo "[#####             ] 25%"
echo "[##########        ] 50%"
sudo apt-get install make compton feh libx11-dev libxft-dev libxinerama-dev 
echo "[###############   ] 75%"
echo "[##################] 100%"

echo "[+] Starting with the cloning and making"
echo "[###               ] 16%"
git clone https://github.com/dawekenshi/suckless-dawe > /dev/null
cd suckless-dawe/dwm/
echo "[######            ] 32%"
sudo make clean install > /dev/null
cd ../dmenu/
echo "[#########         ] 48%"
sudo make clean install > /dev/null
cd ../st/
echo "[############      ] 64%"
sudo make clean install > /dev/null
cd
echo "[###############   ] 80%"
cd dawe-rice-script/backgrounds/
feh --bg-fill  jojos-winxp.jpg
echo "[##################] 100%"
cd ..
mv xinit-copy ~/.xinitrc
echo "[+] Finished, enjoy your dwm!"
