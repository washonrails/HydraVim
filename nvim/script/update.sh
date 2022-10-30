#!bin/bash

# logo SUNvim
logo()
{
	clear
	echo "  
▒█▀▀▀█ ▒█░▒█ ▒█▄░▒█ ▀█░█▀ ░▀░ █▀▄▀█ 　 ▒█▀▀█ █░░█ █▀▀ █▀▀ █░█ 
░▀▀▀▄▄ ▒█░▒█ ▒█▒█▒█ ░█▄█░ ▀█▀ █░▀░█ 　 ▒█░░░ █▀▀█ █▀▀ █░░ █▀▄ 
▒█▄▄▄█ ░▀▄▄▀ ▒█░░▀█ ░░▀░░ ▀▀▀ ▀░░░▀ 　 ▒█▄▄█ ▀░░▀ ▀▀▀ ▀▀▀ ▀░▀
" 
	
	cd /home/$USER/.config/nvim 
}

# cheacar por atualização
# function check()
# {
# 	git merge
# 	if [ $(git status --porcelain | wc -l) -eq "0" ]; then
#   		echo
# 		echo "🟢 Your SUNvim is last vesrion."
# 	else
# 		echo
#   		echo "🔴 You SUNvim is old version"
# 		update
# 
#   		exit 1
# 	fi
# }

# opcões
function update()
{
	while true; do

	read -p "🟡 Install update? (y/n) " yn

	case $yn in 
		[yY] ) 
			install_update
			break;;
		[nN] ) 
			echo
			echo "⚫ Canceled - Type 'exit' or press 'CTRL + d' to close"
			exit;;
		* ) echo "⚪ Invaled option";;
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
	echo "🟢 SUNvim upgrade finish."
	
	while true; do
	read -p "🟡 Restart now? (y/n) " yn

	case $yn in 
		[yY] ) 
			killall nvim
			break;;
		[nN] ) 
	 			echo "🟢 OK! SUNvim upgrade finish."
	 			exit;;
		* ) echo "⚪ Invaled option";;
	esac

	done

}

# iniciar script
# install_update
logo
update
