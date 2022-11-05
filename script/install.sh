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

git clone https://github.com/HydraVim/HydraVim.git --depth 1

mv /home/$USER/.config/HydraVim /home/$USER/.config/nvim

sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

nvim -c 'PlugInstall'
