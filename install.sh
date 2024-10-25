#!/bin/bash

su
pacman -Syu -y

git clone https://aur.archlinux.org/yay
cd yay
makepkg -si
cd
pacman -Syu

clear

pacman -S git hyprland hyprpicker waybar wlogout swayimg swaync swappy swaylock swww nemo fish micro vlc yad
pacman -Rsn dolphin
clear

# FONT
pacman -S ttf-jetbrains-mono-nerd
clear

# GTK
yay -S nwg-look dracula-gtk-theme dracula-icons-theme bibata-cursor-theme
clear

gsettings set org.gnome.desktop.interface gtk-theme "Dracula"
gsettings set org.gnome.desktop.interface icon-theme "Dracula"
gsettings set org.gnome.desktop.interface gtk-theme "Bibata-Modern-Ice"

# UTILITIES
pacman -S htop ranger mc sl glava dosfstools networkmanager neofetch fastfetch python python-pip lsd tmux bat
clear
yay -S cava pipes.sh
clear
# PROGRAMS
pacman -S firefox obs-studio obsidian
clear

# SHELL
chsh -s $(which /bin/fish)
exit
chsh -s $(which /bin/fish)

git clone https://github.com/kiskis1488/Hyprland-Dots.git
cd Hyprland-Dots
cp -r {hypr,waybar,rofi,kitty,cava,fish,scripts} ~/.config/
cd
rm -rf Hyprland-Dots
clear

git clone https://github.com/michaelScopic/Wallpapers.git
mkdir Pictures
cp -r Wallpapers ~/Pictures/
cd Pictures/Wallpapers
mkdir random
cp -r ~/Hyprland-Dots/wallpapers ~/Pictures/Wallpapers/random
clear
echo "REBOOT"
reboot
