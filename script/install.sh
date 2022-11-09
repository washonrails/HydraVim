#!/bin/bash

clear

ssh=0

function logo() {
	echo -e $"\033[33m
⢰⣶  ⣶ ⢶⣆⢀⣶⠂⣶⡶⠶⣦⡄⢰⣶⠶⢶⣦  ⣴⣶
⢸⣿⠶⠶⣿ ⠈⢻⣿⠁ ⣿⡇ ⢸⣿⢸⣿⢶⣾⠏ ⣸⣟⣹⣧
⠸⠿  ⠿  ⠸⠿  ⠿⠷⠶⠿⠃⠸⠿⠄⠙⠷⠤⠿⠉⠉⠿⠆
	\033[0m"
}

function rm_file() {
	rm -rf ~/.config/nvim
	rm -rf ~/.local/share/nvim
	rm -rf ~/.cache/nvim
	rm -rf ~/.config/HydraVim
	rm -rf /home/$USER/.vim
}

function vim_plug() {
	sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
		https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
}

function clone_ssh() {
	git clone git@github.com:HydraVim/HydraVim.git ~/.config/nvim --depth 1 && nvim -c 'PlugInstall'
}

function clone_https() {
	git clone https://github.com/HydraVim/HydraVim.git --depth 1 && nvim -c 'PlugInstall'
}

logo
rm_file
vim_plug
clone_https
