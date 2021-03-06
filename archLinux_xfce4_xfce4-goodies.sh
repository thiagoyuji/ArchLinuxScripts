#!/bin/bash

echo -e "Installing xfce4 and More something\n"
ping -c 3 google.com
sudo pacman -Syu
sudo pacman -Sy xorg xterm xorg-twm xorg-xinit xorg-server-utils
sudo pacman -Syyu
sudo pacman -Sy xfce4 xfce4-goodies
sudo pacman -Syu
sudo pacman -Sy ttf-freefont
sudo pacman -Sy lightdm lightdm-gtk-greeter
sudo pacman -Syu
sudo systemctl enable lightdm.service
sudo pacman -Sy firefox flashplugin
sudo pacman -Sy libreoffice archlinux-wallpaper
sudo pacman -Sy screenfetch
sudo pacman -Sy gtkmm net-tools
sudo pacman -Sy open-vm-tools
sudo pacman -Syu
sudo pacman -S gcc
sudo pacman -S valgrind
sudo pacman -S cmake
sudo pacman -S gdb
sudo pacman -S sudo
sudo pacman -S git
sudo pacman -S mousepad gedit
sudo pacman -S tar
sudo pacman -S htop
sudo pacman -Syu
sudo pacman -S pulseaudio
echo -e "Process Finished\n\n"
sudo pacman -Syu

reboot