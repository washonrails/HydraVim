#!/bin/bash

clear

echo -e $"\033[33m _____     _         _____ _       
|   __|___| |___ ___|  |  |_|_____ 
|__   | . | | .'|  _|  |  | |     |
|_____|___|_|__,|_|  \___/|_|_|_|_|
\033[0m"

rm -rf ~/.config/nvim
rm -rf ~/.local/share/nvim
rm -rf ~/.cache/nvim

cd /home/$USER/.config/
git clone https://github.com/SolarVim/Solar.git --depth 1

mv /home/$USER/.config/Solar /home/$USER/.config/nvim

git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim

nvim
