#!/bin/bash

# UPDATE
sudo pacman -Syu

# PACMAN
sudo pacman -S hyprland hyprpicker waybar swayimg swaync swappy swaylock swww nemo fish yad rofi # WM
sudo pacman -S htop btop ranger mc sl glava dosfstools networkmanager neofetch fastfetch python python-pip lsd tmux git bat micro nwg-look # UTILITES
sudo pacman -S firefox obs-studio obsidian vlc # PROGRAMS

git clone https://aur.archlinux.org/yay & cd yay & makepkg -si & cd & sudo pacman -Syu
yay -S cava pipes.sh dracula-gtk-theme dracula-icons-theme bibata-cursor-theme
gsettings set org.gnome.desktop.interface icon-theme "Dracula" & gsettings set org.gnome.desktop.interface gtk-theme "Bibata-Modern-Ice"

# DOTS
git clone https://github.com/kiiisya/Hyprland-Dots.git & cd Hyprland-Dots
mv -r {hypr,waybar,rofi,kitty,cava,fish,scripts, neofetch} ~/.config/

# WALLPAPERS
mkdir ~/.config/.wallpapers & mv -r ~/Hyprand-Dots/wallpapers/* ~/.config/.wallpapers 
rm -rf Hyprland-Dots
reboot
