#!/bin/bash

# Updating System
dnf update -y

# Making .config and Moving dotfiles and Background to .config
mkdir ~/.config
mv ./dotconfig/* ~/.config
mv ./bg.jpg ~/.config

# Installing Essential Programs 
dnf install sddm bspwm sxhkd kitty rofi polybar picom thunar
# Other less important Programs
dnf install mangohud gimp vim

# Installing Meslo and FiraCode fonts


# Enabling Services and Graphical User Interface
systemctl enable sddm
systemctl set-default graphical.target
