# Simple Useful Nvim - HydraVim

<img src="https://raw.githubusercontent.com/HydraVim/HydraVim/main/.github/hydra_logo.png" min-width="50px" max-width="50px" width="200px" align="right" alt="Computador iuriCode">

<a href="https://sunvim.netlify.app/" target="_blank"> 🚀 Site - beta</a>

- [Introdução](#introdução)
- [Screenshot](#screenshot)
- [Dependências](#dependências)
- [Instalação](#instalação)
  - [Linguagens](#linguagens)
  - [Recomendações](#recomendações)
- [Atalhos](#atalhos)
  - [Atalhos gerais](#atalhos-gerais)
  - [Navegação](#navegação)
- [Contribuidores](#contribuidores)
- [Créditos](#créditos)
- [FAQ](#faq)

## Introdução

## Screenshot

## Dependências

``
nodejs ranger python3 yarn
``

pynvim:
``
pip install pynvim
``

<a href="https://neovim.io/" target="_blank"> Neovim </a> >= 0.7.0<p>
<a href="https://nodejs.org" target="_blank"> Nodejs </a> >= 12.xx - Necessário para o autocomplete <p>
<a href="https://github.com/junegunn/vim-plug" target="_blank"> Vim-Plug</a> - Instalador dos Plugins <p>
<a href="https://www.nerdfonts.com/" target="_blank"> Nerd Fonts </a> - Necessário para os ícones <p>
  
### Dependências opcionais:
<a href="https://github.com/jesseduffield/lazygit" target="_blank"> LazyGit</a> - Para facilitar o uso do Git<p>

## Instalação 
### (WSL/Linux)
Após a instalação das dependências, execute o comando abaixo. Tenha o <a href="https://git-scm.com/" target="_blank"> Git </a> instalado.<p>
```shell
curl https://raw.githubusercontent.com/HydraVim/HydraVim/main/script/install.sh > HydraVim.sh && sh HydraVim.sh
```
Após o termino da instalção: Execute o comando abaixo
```shell
nvim -c 'CocInstall coc-pairs coc-snippets'
```
## Linguagens
Cada linguagem necessita de suporte indivídual para seu funcionamento no SUNvim, mas é simples. O autocomplete é o <a href="https://github.com/neoclide/coc.nvim" target="_blank"> Coc.nvim </a> e toda sua documentação oficial está disponível em <a href="https://github.com/neoclide/coc.nvim" target="_blank"> Coc.nvim </a>. Cada linguagem precisa de seu compilador e do seu <a href="https://github.com/neoclide/coc.nvim/wiki/Language-servers#supported-features" target="_blank"> Language servers </a>. ```C/C++```, ```HTML```, ```Java```, ```Javascript/Typescript```, ```JSON```, ```Lua``` e ```Python``` podem ser instaldas através dos comandos abaixo, instruções para outras linguagem <a href="" target="_blank"> aqui.</a><p>

### C/C++
1° - Instale o ```gcc```, ```g++``` e ```make```

``` shell
sudo apt-get install manpages-dev
```
2° - Instale <a href="https://clangd.llvm.org/installation.html" target="_blank"> CLangd</a> >= 8.0, para o autocomplete
``` shell
sudo apt-get install clangd-12
```
3° - Execute o comando abaixo para instalar o <a href="https://github.com/neoclide/coc.nvim/wiki/Language-servers#supported-features" target="_blank"> language servers.</a>
``` shell
nvim -c 'CocInstall coc-clangd'
```
<br />
  
### HTML, CSS e JS
1° - Execute o comando abaixo para instalar o <a href="https://github.com/neoclide/coc.nvim/wiki/Language-servers#supported-features" target="_blank"> language servers.</a>
``` shell
nvim -c 'CocInstall coc-html coc-css coc-tsserver'
```
<br />

### Java
1° instale o <a href="https://www.oracle.com/java/technologies/downloads/" target="_blank"> Java JDK </a >>= 11<p>
2° - Execute o comando abaixo para instalar o <a href="https://github.com/neoclide/coc.nvim/wiki/Language-servers#supported-features" target="_blank"> language servers.</a>
``` shell
nvim -c 'CocInstall coc-java'
```
<br />
  
### JSON
1° - Execute o comando abaixo para instalar o <a href="https://github.com/neoclide/coc.nvim/wiki/Language-servers#supported-features" target="_blank"> language servers.</a>
``` shell
nvim -c 'CocInstall coc-json'
```
<br />

### Lua
1° - Execute o comando abaixo para instalar o <a href="https://github.com/neoclide/coc.nvim/wiki/Language-servers#supported-features" target="_blank"> language servers.</a>
``` shell
nvim -c 'CocInstall coc-sumneko-lua'
```
<br />

### Python
1° Instale o <a href="https://www.python.org/downloads/" target="_blank"> Python3 </a>
``` shell
sudo apt install python3
```
2° - Execute o comando abaixo para instalar o <a href="https://github.com/neoclide/coc.nvim/wiki/Language-servers#supported-features" target="_blank"> language servers.</a>
``` shell
nvim -c 'CocInstall coc-python'
```
<br />
 
### Rust
1° - Instale o <a href="https://www.rust-lang.org" target="_blank"> Rust</a>
``` shell
sudo apt install rustc
```
2° - Execute o comando abaixo para instalar o <a href="https://github.com/neoclide/coc.nvim/wiki/Language-servers#supported-features" target="_blank"> language servers.</a>
``` shell
nvim -c 'CocInstall coc-rust-analyzer'
```
<br />

## Recomendações
Para evitar travamentos adicione `stty -ixon` no `.bashrc`, faça isso com  comando abaixo.
``` shell
echo 'stty -ixon' >> ~/.bashrc
```
## HTML, CSS e JS em termpo real
1° - Instale o live server
``` shell
npm i -g live-server
```
Caso a instalção acima dê algum erro execute o código abaixo
``` shell
sudo npm i -g live-server
```

2° - Execute o comando abaixo para instalar o <a href="https://github.com/neoclide/coc.nvim/wiki/Language-servers#supported-features" target="_blank"> language servers.</a>
``` shell
nvim -c 'CocInstall coc-html coc-css coc-tsserver'
```
Para usar siga a instruções abaixo <p>
1° - Acesse o `index.html` através do SUNvim e precione `F5`, uma aba será aberta automaticamente em seu navegador padrão <p>
2° - O site será atualizado assim que as alterções forem salvas com `Ctrl` + `s`
<br />


## Atalhos
## Atalhos gerais
## Navegação
## Geral

## Navegação

## Contribuidores

## Créditos

## FAQ
