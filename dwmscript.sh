#! /bin/bash

echo "[+] Downloading stuff and updating"
# For arch use this
sudo pacman -S base-devel picom feh > /dev/null
# For debian based use this
# Soon
sudo apt install make compton
sleep 2
echo "[+] Finished"

echo "[+] Cloning and making dwm"
cd
git clone https://github.com/dawekenshi/suckless-dawe > /dev/null
cd suckless-dawe/dwm/
sleep 5
echo "[+] Finished"

echo "[+] Making dwm"
sudo make clean install > /dev/null
cd ../dmenu/
sleep 5
echo "[+] Finished"

echo "[+] Making dmenu"
sudo make clean install > /dev/null
cd ../st/
sleep 5
echo "[+] Finished"

echo "[+] Making st"
sudo make clean install > /dev/null
cd
sleep 5
echo "[+] Finished"

echo "[+] Configuring background"
cd dawe-rice-script/backgrounds/
feh --bg-fill  jojos-winxp.jpg
echo "[+] Finished"

echo "[+] Configuring .xinitrc"
cd ..
mv xinit-copy ~/.xinitrc
sleep 5
echo "[+] Finished, enjoy your dwm!"
