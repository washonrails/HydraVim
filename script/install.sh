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
	cd ~/.config/
	git clone git@github.com:HydraVim/HydraVim.git --depth 1
	mv /home/$USER/.config/HydraVim /home/$USER/.config/nvim
	nvim -c 'PlugInstall'
	exit 1
}

function clone_https() {
	cd ~/.config/
	git clone https://github.com/HydraVim/HydraVim.git --depth 1
	mv /home/$USER/.config/HydraVim /home/$USER/.config/nvim
	nvim -c 'PlugInstall'
	exit 1
}

function install(){
	logo
	rm_file
	vim_plug
	if [[ $ssh == 1 ]]; then
		echo "HydraVim: ssh"
		clone_ssh
	fi
	echo "HydraVim: https"
	clone_https
}

while getopts ":ssh:" opt; do
  case $opt in
    :)
	  ssh=1
	  install
      ;;
  esac
done

install
