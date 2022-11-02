#!bin/bash

# logo SUNvim
logo()
{
	clear
	echo -e $"\033[33m _____     _            _____ _           _           
|   __|___| |___ ___   |     | |_ ___ ___| |_ ___ ___ 
|__   | . | | .'|  _|  |   --|   | -_|  _| '_| -_|  _|
|_____|___|_|__,|_|    |_____| |_|___|___|_,_|___|_|
	\033[0m"
	
	cd /home/$USER/.config/nvim 
}

# cheacar por atualização
# function check()
# {
# 	git merge
# 	if [ $(git status --porcelain | wc -l) -eq "0" ]; then
#   		echo
# 		echo -e "\033[32m  Your SUNvim is last vesrion. \033[0m"
# 	else
# 		echo
#   		echo " You SUNvim is old version"
# 		update
# 
#   		exit 1
# 	fi
# }

# opcões
function update()
{
	while true; do

	read -p $" Install update? (y/n) " yn

	case $yn in 
		[yY] ) 
			install_update
			break;;
		[nN] ) 
			echo
			echo " Canceled - Type 'exit' or press 'CTRL + d' to close"
			exit;;
		* ) echo -e $"\033[0;31m  Invaled option \033[0m";; 
	esac

	done
}


# function rs()
# {
# }

# instalar atualização
function install_update()
{
	git reset --hard @{u}
	git clean -df
	git pull
	echo -e "\033[32m  SUNvim upgrade finish. \033[0m"
	
	while true; do
	read -p " Restart now? (y/n) " yn

	case $yn in 
		[yY] ) 
			killall nvim
			break;;
		[nN] ) 
	 			echo -e "\033[32m  OK! SUNvim upgrade finish. \033[0m"
	 			exit;;
		* ) echo -e $"\033[0;31m  Invaled option \033[0m";; 
	esac

	done

}

# iniciar script
# install_update
logo
update
