#! /bin/bash

echo "[+] Downloading stuff and updating"
# For arch use this
#sudo pacman -Syyuu > /dev/null
#sudo pacman -S base-devel picom > /dev/null
# For debian based use this
#sudo apt-get upgrade
#sudo apt-get update
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
echo "[+] Adding dwm to .xinitrc"
echo "exec dwm" > .xinitrc
sleep 5
echo "[+] Finished"
