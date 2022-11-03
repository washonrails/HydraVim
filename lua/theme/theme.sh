#!/bin/bash

clear

theme_num=0
theme_h=0
theme_v=0

th_list=('onedark' 'tokyonight' 'tokyodark' 'gruvbox' 'gruvbox-baby' 'neon' 'nord' 'onenord' 'catppuccin')
size=${#th_list[@]}

declare -A st_list

# onedark
st_list[0,0]=7 	#quantidade de estilos
st_list[0,1]='dark'
st_list[0,2]='darker'
st_list[0,3]='cool'
st_list[0,4]='deep'
st_list[0,5]='warm'
st_list[0,6]='warmer'
st_list[0,7]='light'

# tokyonight
st_list[1,0]=4 	#quantidade de estilos
st_list[1,1]='day'
st_list[1,2]='moon'
st_list[1,3]='night'
st_list[1,4]='storm'

# tokyodark
st_list[2,0]=0

# gruvbox
st_list[3,0]=2
st_list[3,1]='dark'
st_list[3,2]='light'

# gruvbox-baby
st_list[4,0]=0

# neon
st_list[5,0]=4
st_list[5,1]='dark'
st_list[5,2]='default'
st_list[5,3]='doom'
st_list[5,4]='light'

# nord
st_list[6,0]=0

# onenord
st_list[7,0]=2
st_list[7,1]='dark'
st_list[7,2]='light'

# oxocarbon
# st_list[8,0]=2
# st_list[8,1]='dark'
# st_list[8,2]='light'

st_list[8,0]=4
st_list[8,1]='mocha'
st_list[8,2]='macchiato'
st_list[8,3]='frappe'
st_list[8,4]='latte'

#########################################################
function echo_config()
{
	if (($1 == 0)); then
		echo $"require('onedark').setup { style = '${st_list[$theme_h,$theme_v]}' }
require('onedark').load()" > ~/.config/nvim/lua/theme/theme.lua
	elif (($1 == 1)); then
		echo $"require('tokyonight').setup { style = '${st_list[$theme_h,$theme_v]}',  lualine_bold = false, }
require('tokyonight').load()" > ~/.config/nvim/lua/theme/theme.lua
	elif (($1 == 2)); then
		echo 'vim.g.tokyodark_transparent_background = false
vim.g.tokyodark_enable_italic_comment = true
vim.g.tokyodark_enable_italic = true
vim.g.tokyodark_color_gamma = "1.0"
vim.cmd("colorscheme tokyodark")' > ~/.config/nvim/lua/theme/theme.lua
	elif (($1 == 3)); then
		echo $"vim.o.background = '${st_list[$theme_h,$theme_v]}' -- or "light"
vim.cmd([[colorscheme gruvbox]])" > ~/.config/nvim/lua/theme/theme.lua
	elif (($1 == 4)); then
	echo $"vim.cmd([[ colorscheme gruvbox-baby ]])" > ~/.config/nvim/lua/theme/theme.lua
	elif (($1 == 5)); then
		echo $"vim.g.neon_style = '${st_list[$theme_h,$theme_v]}'
vim.g.neon_italic_keyword = true
vim.g.neon_italic_function = true
vim.g.neon_transparent = false -- or 'true'

vim.cmd[[colorscheme neon]]" > ~/.config/nvim/lua/theme/theme.lua
	elif (($1 == 6)); then
	echo $"vim.cmd([[ colorscheme nord ]])" > ~/.config/nvim/lua/theme/theme.lua
	elif (($1 == 7)); then
	echo $"require('onenord').setup({ theme = '${st_list[$theme_h,$theme_v]}' })" > ~/.config/nvim/lua/theme/theme.lua
	elif (($1 == 8)); then
	echo $"vim.cmd.colorscheme 'catppuccin-${st_list[$theme_h,$theme_v]}'" > ~/.config/nvim/lua/theme/theme.lua
	fi
}







###########################################################

function check_num()
{
	if (( $theme_num > size )); then
# 		echo 'opcão inválida'
		return 0
	elif (( $theme_num < 1 )); then
# 		echo "opção inválida"
		return 0
	else
# 		echo "opção válida"
		return 1
	fi
};

function check_num_st()
{
	if (( $theme_v > ${st_list[$theme_v,0]} )); then
# 		echo 'opcão inválida'
		return 0
	elif (( $theme_v < 1 )); then
# 		echo "opção inválida"
		return 0
	else
# 		echo "opção válida"
		return 1
	fi
};

function is_num()
{
	if [[ $1 = ?(+|-)+([0-9]) ]] ; then
		return 1
	else
		return 0
fi
};

function st_list()
{
	v=1
	index=1
# 	if (( ${st_list[$theme_h,0]} == 0)); then
# 		echo_config
# 	fi
	while (($v <= ${st_list[$theme_h,0]})); do
		echo "$((index)) -> ${st_list[$theme_h,$v]}"
		((index++))
		((v++))
	done
};

function list_th()
{
	index=0
	for i in ${!th_list[@]}; do
		index=$((index+1))
		echo "$index -> ${th_list[$i]}"
	done
	return 1
};

function st_numf()
{
	num=0
	if (( ${st_list[$theme_h,0]} == 0)); then
		echo_config $theme_h
	else
		while (($num != 1)); do
			st_list
			read -p $'\nDigite o número do estilo: ' theme_v
			num=$(check_num_st $theme_v)
			if (( $theme_v == 0)); then
				clear
				echo -e $"\033[0;31m  Opção inválida! \n \033[0m"
				continue
			elif (( $theme_v > ${st_list[$theme_h,0]})); then
				clear
				echo -e $"\033[0;31m  Opção inválida! \n \033[0m"
				continue
			elif (( $theme_v < 0)); then
				clear
				echo -e $"\033[0;31m  Opção inválida! \n \033[0m"
				continue
			fi
		done
	fi
	echo 'faze do cofig inset'
	echo_config $theme_h $theme_v
};

function th_numf()
{
	while (( theme_num > size || theme_num <= 0 )); do
		list_th
		read -p $'\nDigite o número do tema: ' theme_num
		num=(check_num $theme_num)
# 		echo $theme_num
		if (( num == 0)); then
			clear
			echo -e $"\033[0;31m  Opção inválida! \n \033[0m"
			continue
		fi	
	done
	theme_h=$(($theme_num-1))
	clear
	st_numf
};

th_numf

clear

echo $"Tema --- N:" ${th_list[theme_num-1]}
echo $"Coluna - H:" ${theme_h}
echo $"Linha -- V:" ${theme_v}



# echo "${th_style[0,0]}" # will print 0 1
