#!/bin/bash

sudo pacman -Syu

git clone https://aur.archlinux.org/yay
cd yay
makepkg -si
cd
sudo pacman -Syu

sudo pacman -S git hyprland hyprpicker waybar swayimg swaync swappy swaylock swww nemo fish micro vlc yad rofi

# FONT
sudo pacman -S ttf-jetbrains-mono-nerd

# GTK
sudo pacman -S nwg-look
yay -S dracula-gtk-theme dracula-icons-theme bibata-cursor-theme

gsettings set org.gnome.desktop.interface gtk-theme "Dracula"
gsettings set org.gnome.desktop.interface icon-theme "Dracula"
gsettings set org.gnome.desktop.interface gtk-theme "Bibata-Modern-Ice"

# UTILITIES
sudo pacman -S htop ranger mc sl glava dosfstools networkmanager neofetch fastfetch python python-pip lsd tmux bat
sudo yay -S cava pipes.sh

# PROGRAMS
sudo pacman -S firefox obs-studio obsidian

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
