#! /bin/bash

echo "Downloading stuff and updating"
sudo pacman -Syyuu > /dev/null
sudo pacman -S base-devel picom > /dev/null 
echo "Cloning and making dwm"
cd
git clone https://github.com/dawekenshi/suckless-dawe > /dev/null
cd suckless-dawe/dwm/
sudo make clean install > /dev/null
cd ../dmenu/
sudo make clean install > /dev/null
cd ../st/
sudo make clean install > /dev/null
cd
echo "exec dwm" > .xinitrc
