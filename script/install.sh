#!/bin/bash

rm -rf ~/.config/nvim
rm -rf ~/.local/share/nvim
rm -rf ~/.cache/nvim

cd /home/$USER/.config/
git clone https://github.com/Diogo-ss/SUNvim.git --depth 1

mv /home/$USER/.config/SUNvim /home/$USER/.config/nvim

sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

nvim -c 'PlugInstall'
