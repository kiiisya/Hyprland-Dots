#!/bin/bash

sudo dnf update

sudo dnf install git hyprland hyprpicker waybar swappy swaylock nemo fish micro vlc yad rofi

sudo dnf install htop ranger mc sl glava dosfstools neofetch fastfetch python python-pip lsd tmux bat cava

sudo dnf install obs-studio

wget https://download.jetbrains.com/fonts/JetBrainsMono-2.304.zip
unzip JetBrainsMono-2.304.zip
rm {AUTHORS.txt,OFL.txt,JetBrainsMono-2.304.zip}
sudo mv fonts/ttf/* /usr/share/fonts
cd
rm -rf fonts

git clone https://github.com/kiskis1488/Hyprland-Dots.git
cd Hyprland-Dots
cp -r {hypr,waybar,rofi,kitty,cava,fish,scripts} ~/.config/
cd
rm -rf Hyprland-Dots

git clone https://github.com/michaelScopic/Wallpapers.git
mkdir Pictures
cp -r Wallpapers ~/Pictures/
cd Pictures/Wallpapers
mkdir random
cp -r ~/Hyprland-Dots/wallpapers ~/Pictures/Wallpapers/random
clear
echo "REBOOT"
reboot
