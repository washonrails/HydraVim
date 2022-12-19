<p align="center"><img width="auto" height="90" src="http://www.pngall.com/wp-content/uploads/4/Settings-PNG-Images.png"></p>

<p align="center"><img src="https://img.shields.io/github/issues/HydraVim/Hydravim?color=171b20&label=Issues%20%20&logo=gnubash&labelColor=e05f65&logoColor=ffffff">&nbsp;&nbsp;&nbsp;<img src="https://img.shields.io/github/forks/Hydravim/HydraVim?color=171b20&label=Forks%20%20&logo=git&labelColor=f1cf8a&logoColor=ffffff">&nbsp;&nbsp;&nbsp;<img src="https://img.shields.io/github/stars/HydraVim/HydraVim?color=171b20&label=Stargazers&logo=github&labelColor=70a5eb">&nbsp;&nbsp;&nbsp;<img src="https://img.shields.io/badge/-Works on my machine-%2378dba9?style=flat&logo=linux&labelColor=171b20&logoColor=ffffff"></p>

</b><br>Bem vindo ao repositorio<b>  ️Hydra 🌊</b>! Cuidadosamente projetado com usabilidade e funcionalidade em mente, mantendo a leveza nos recursos!</p>

<br />

<details>
  <summary> <b> Temas </b> </summary>

![TNPrint](https://user-images.githubusercontent.com/98850074/200186219-31bc10d3-8818-46ba-820e-ef8b7c5c9e40.png)


<hr>

<br>

![CPPRINT](https://user-images.githubusercontent.com/98850074/200188164-d7ce95dd-cb35-40e8-b192-10aa02b18341.png)


<hr>

<br>

![githubmode](https://user-images.githubusercontent.com/98850074/200182890-3cc9326e-811c-4bd4-a5bc-2cf2931b384b.png)
</details>

<br>

## 🔒 Dependências obrigatórias

- <a href="https://neovim.io/" target="_blank"> Neovim </a>
- <a href="https://nodejs.org" target="_blank"> Nodejs </a>
- <a href="https://github.com/neovim/pynvim" target="_blank"> Pynvim </a>
- <a href="https://classic.yarnpkg.com/lang/en/docs/install/" target="_blank"> Yarn </a>
 
### 🔓 Dependências opcionais:
- <a href="https://www.nerdfonts.com/" target="_blank"> Nerd Fonts </a>
- <a href="https://github.com/jesseduffield/lazygit" target="_blank"> Lazygit </a>

<br>

## 🛠 Installation 

### 🐧 Linux
Após a instalação das dependências, execute o comando abaixo. Tenha o <a href="https://git-scm.com/" target="_blank"> Git </a> instalado.<p>

```shell
curl https://raw.githubusercontent.com/HydraVim/HydraVim/main/script/install.sh > HydraVim.sh && sh HydraVim.sh
```
  
## ⭕ Desinstalação
  
### 🐧 Linux
```shell
rm -rf ~/.config/nvim ~/.local/share/nvim ~/.cache/nvim ~/.config/HydraVim ~/.config/coc /home/$USER/.vim
```
  
<br>
  
## 🔠 Linguagens
Cada linguagem necessita de suporte indivídual para seu funcionamento no HydraVim, mas é simples. 
O autocomplete é o <a href="https://github.com/neoclide/coc.nvim" target="_blank"> Coc.nvim </a> e toda sua documentação oficial está disponível em <a href="https://github.com/neoclide/coc.nvim" target="_blank"> Coc.nvim </a>. 
  
Cada linguagem precisa de seu compilador e do seu <a href="https://github.com/neoclide/coc.nvim/wiki/Language-servers#supported-features" target="_blank"> Language servers </a>.
  
```C/C++```, ```HTML```, ```Java```, ```Javascript/Typescript```, ```JSON```, ```Lua``` e ```Python``` podem ser instaldas através dos comandos abaixo, instruções para outras linguagem <a href="" target="_blank"> aqui.</a><p>

  ### C/C++
<details>
  <summary><b>Guia de Instalação</b></summary>
    
- Instale o ```gcc```, ```g++``` e ```make```

``` shell
sudo apt-get install manpages-dev
```
- Instale <a href="https://clangd.llvm.org/installation.html" target="_blank"> CLangd</a> >= 8.0, para o autocomplete
  
``` shell
sudo apt-get install clangd-12
```
- Execute o comando abaixo para instalar o <a href="https://github.com/neoclide/coc.nvim/wiki/Language-servers#supported-features" target="_blank"> language servers.</a>
  
``` shell
nvim -c 'CocInstall coc-clangd'
```
</details>
  
<br />
  
### HTML, CSS e JS
  
<details>
  <summary><b>Guia de Instalação</b></summary>
  
- Execute o comando abaixo para instalar o <a href="https://github.com/neoclide/coc.nvim/wiki/Language-servers#supported-features" target="_blank"> language servers.</a>
  
``` shell
nvim -c 'CocInstall coc-html coc-css coc-tsserver'
```
  
</details>
<br />

### Java
<details>
  <summary><b>Guia de Instalação</b></summary>
  
- Instale o <a href="https://www.oracle.com/java/technologies/downloads/" target="_blank"> Java JDK </a >>= 11<p>

- Execute o comando abaixo para instalar o <a href="https://github.com/neoclide/coc.nvim/wiki/Language-servers#supported-features" target="_blank"> language servers.</a>

``` shell
nvim -c 'CocInstall coc-java'
```

</details>
<br />

### JSON
<details>

  <summary><b>Guia de Instalação</b></summary>

- Execute o comando abaixo para instalar o <a href="https://github.com/neoclide/coc.nvim/wiki/Language-servers#supported-features" target="_blank"> language servers.</a>

``` shell
nvim -c 'CocInstall coc-json'
```
</details>
  
<br />

### Lua
<details>
  <summary><b>Guia de Instalação</b></summary>

- Execute o comando abaixo para instalar o <a href="https://github.com/neoclide/coc.nvim/wiki/Language-servers#supported-features" target="_blank"> language servers.</a>
``` shell
nvim -c 'CocInstall coc-sumneko-lua'
```
</details>

<br />

### Python
<details>
  <summary><b>Guia de Instalação</b></summary>
- Instale o <a href="https://www.python.org/downloads/" target="_blank"> Python3 </a>
  
``` shell
sudo apt install python3
```

- Execute o comando abaixo para instalar o <a href="https://github.com/neoclide/coc.nvim/wiki/Language-servers#supported-features" target="_blank"> language servers.</a>
  
``` shell
nvim -c 'CocInstall coc-python'
```
</details

<br />

<br />
 
### Rust
<details>
  <summary><b>Guia de Instalação</b></summary>
  
- Instale o <a href="https://www.rust-lang.org" target="_blank"> Rust</a>
    
``` shell
sudo apt install rustc
```
    
- Install rust-analyzer binary
    
```
  curl -L https://github.com/rust-lang/rust-analyzer/releases/latest/download/rust-analyzer-x86_64-unknown-linux-gnu.gz | gunzip -c - > ~/.local/bin/rust-analyzer
```

  Change permission to being executable
```
  chmod +x ~/.local/bin/rust-analyzer 
```
  Read with caution :
  If your ~/.local/bin is not in your path you should to add to your $PATH variable on Shell !
  
  To verify if exist <b>~/.local/bin</b> in your $PATH , type :
  ```
  echo $PATH | whereis rust-analyzer
  ```
If your $PATH contains something like the output below , its already on your path , 
  ```
    /home/$USER/.cargo/bin or /home/$USER/.local/bin
  ```
Else
  ```
    export PATH=~/.local/bin:$PATH or put in your .zshrc .bashrc and so on.
  ```
  and restart your shell to apply changes ! and done.
  
  BUT IF NOT WORKING , TRY THE YOUR LAST CHANCE WITH
  ```
  sudo ln -s ~/.local/bin/rust-analyzer /usr/local/bin
  ```
  To make a symlink to binary directory restart your shell and done.
<br>

- Execute o comando abaixo para instalar o <a href="https://github.com/neoclide/coc.nvim/wiki/Language-servers#supported-features" target="_blank"> language servers.</a>
    
``` shell
nvim -c 'CocInstall coc-rust-analyzer'
```
</details>
  
<br />

## 🗒️ Recomendações
Para evitar travamentos adicione `stty -ixon` no `.bashrc`, faça isso com  comando abaixo.
``` shell
echo 'stty -ixon' >> ~/.bashrc
```
## HTML, CSS e JS em termpo real
- Instale o live server
``` shell
npm i -g live-server
```
Caso a instalção acima dê algum erro execute o código abaixo
``` shell
sudo npm i -g live-server
```

- Execute o comando abaixo para instalar o <a href="https://github.com/neoclide/coc.nvim/wiki/Language-servers#supported-features" target="_blank"> language servers.</a>
``` shell
nvim -c 'CocInstall coc-html coc-css coc-tsserver'
```
Para usar siga a instruções abaixo <p>
- Acesse o `index.html` através do SUNvim e precione `F5`, uma aba será aberta automaticamente em seu navegador padrão <p>
- O site será atualizado assim que as alterções forem salvas com `Ctrl` + `s`
<br />

### <img width="auto" height="20px" src="https://github.com/oddlama/vane/blob/main/docs/vane.png"> Geral
  
<img src="https://img.shields.io/badge/Mantido:-Sim! (Bug fixes, Repositorio , Site..)-brightgreen?style=flat">
<img src="https://img.shields.io/badge/Estado:-Otimizado%20(Utilizavel%20para o dia a dia)-brightgreen?style=flat">
<img src="https://img.shields.io/badge/Uso RAM:-~138MB/Max-brightgreen?style=flat">

## ❤️ Contribuidores
  <span>
    <img src="https://user-images.githubusercontent.com/98850074/200189379-5b831bfd-a902-46c8-914e-284e53308dc2.png" width=100 height=100>
  </span>

  <span> 
    <img src="https://user-images.githubusercontent.com/98850074/200189532-28bd2d72-76e8-4650-a293-9fdfa64c4b73.png" width=100 height=100>
  </span>



<b>Ko-Fi:</b><br>
  [![ko-fi](https://ko-fi.com/img/githubbutton_sm.svg)](https://ko-fi.com/)

<b>Librepay:</b> <br>
<a href="https://liberapay.com/"><img alt="Donate usando liberepay" src="https://liberapay.com/assets/widgets/donate.svg"></a> 

<br /> 

<p align="center"><b> Se você gostou da nossa versão modificada do Vim e de alguma maneira quiser contrubuir com a nossa equipe fique avontade 😊</b> </p>
