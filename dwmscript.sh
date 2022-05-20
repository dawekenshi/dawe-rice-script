#! /bin/bash

# For arch use this
echo "[+] installing yay"
cd
git clone https://aur.archlinux.org/yay.git > /dev/null
cd yay/
makepkg -sir
cd
echo "[+] Downloading stuff and updating"
sudo pacman -S base-devel picom feh make > /dev/null
# For debian based use this
# Soon
echo "[+] Finished"

echo "[+] Cloning and making dwm"
git clone https://github.com/dawekenshi/suckless-dawe > /dev/null
cd suckless-dawe/dwm/
echo "[+] Finished"

echo "[+] Making dwm"
sudo make clean install > /dev/null
cd ../dmenu/
echo "[+] Finished"

echo "[+] Making dmenu"
sudo make clean install > /dev/null
cd ../st/
echo "[+] Finished"

echo "[+] Making st"
sudo make clean install > /dev/null
cd
echo "[+] Finished"

echo "[+] Configuring background"
cd dawe-rice-script/backgrounds/
feh --bg-fill  jojos-winxp.jpg
echo "[+] Finished"

echo "[+] Configuring .xinitrc"
cd ..
mv xinit-copy ~/.xinitrc
echo "[+] Finished, enjoy your dwm!"
