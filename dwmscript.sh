#! /bin/bash

echo "Downloading stuff and updating"
sudo pacman -Syyuu > /dev/null
sudo pacman -S base-devel picom /dev/null 
echo "Cloning and making dwm"
git clone https://github.com/dawekenshi/suckless-dawe
cd suckless-dawe/dwm/
sudo make clean install
cd ../dmenu/
sudo make clean install
cd ../st/
sudo make clean install
cd
echo "exec dwm" > .xinitrc
