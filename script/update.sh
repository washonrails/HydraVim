#!bin/bash

logo()
{
	clear
	echo -e $"\033[33m
⢰⣶  ⣶ ⢶⣆⢀⣶⠂⣶⡶⠶⣦⡄⢰⣶⠶⢶⣦  ⣴⣶
⢸⣿⠶⠶⣿ ⠈⢻⣿⠁ ⣿⡇ ⢸⣿⢸⣿⢶⣾⠏ ⣸⣟⣹⣧
⠸⠿  ⠿  ⠸⠿  ⠿⠷⠶⠿⠃⠸⠿⠄⠙⠷⠤⠿⠉⠉⠿⠆
	\033[0m"
	
	cd ~/.config/nvim 
}

function install_update()
{
	git reset --hard @{u}
	git clean -df
	git pull
	echo -e "\033[32m SUNvim upgrade finish. \033[0m"
	
	while true; do
	read -p " Restart now? (y/n) " yn
	case $yn in 
		[yY] )
			killall nvim
			exit 1;;
		[nN] )
				echo -e "\033[32m OK! SUNvim upgrade finish. \033[0m"
				exit;;
		* ) echo -e $"\033[0;31m Invaled option \033[0m";; 
	esac
	done
}

logo
install_update
