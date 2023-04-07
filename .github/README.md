<h1 align="center"><img height="180em" width="180em" src="https://i.ibb.co/HGnRJp8/logo.png"></img></h1>

<p align="center">
    <a href="https://github.com/HydraVim/HydraVim/releases">
    <img
        alt="Release"
        src="https://img.shields.io/github/v/release/HydraVim/HydraVim.svg?style=for-the-badge&logo=github&color=F2CDCD&logoColor=D9E0EE&labelColor=363A4F">
        </a>
    <a href="https://github.com/HydraVim/HydraVim/stargazers">
    <img
        alt="Stars"
        src="https://img.shields.io/github/stars/HydraVim/HydraVim?colorA=363A4F&colorB=B7BDF8&logo=adafruit&logoColor=D9E0EE&style=for-the-badge">
    </a>
    <a href="https://github.com/HydraVim/HydraVim/issues">
    <img
        alt="Issues"
        src="https://img.shields.io/github/issues-raw/HydraVim/HydraVim?colorA=363A4f&colorB=F5A97F&logo=github&logoColor=D9E0EE&style=for-the-badge">
    </a>
    <a href="https://github.com/HydraVim/HydraVim/contributors">
    <img
        alt="Contributors"
        src="https://img.shields.io/github/contributors/HydraVim/HydraVim?colorA=363A4F&colorB=B5E8E0&logo=git&logoColor=D9E0EE&style=for-the-badge">
    </a>
    <img
        alt="Code Size"
        src="https://img.shields.io/github/languages/code-size/HydraVim/HydraVim?colorA=363A4F&colorB=DDB6F2&logo=gitlfs&logoColor=D9E0EE&style=for-the-badge">
</p>


</b><br>Welcome to official **Hydra 🌊** Repository! Carefully designed with usability and functionality in mind , keep the lightness on resources! All-in-one for back-end and front-end developers.</p>

## 🚀 Showcase
<img src="https://github.com/HydraVim/Hydra-Assets/blob/main/Images/preview_in_code.png">

## ✨ Features
  - Fast startup times
  - Autocompletion with [nvim-cmp](https://github.com/hrsh7th/nvim-cmp)
  - Terminal with [Toggleterm](https://github.com/akinsho/toggleterm.nvim)
  - Automatic [LSP](https://neovim.io/doc/user/lsp.html) with [Mason](https://github.com/williamboman/mason.nvim) and [LSPConfig](https://github.com/neovim/nvim-lspconfig)
  - Syntax highlighting with [Tree-sitter](https://github.com/tree-sitter/tree-sitter)
  - [Statusline](https://github.com/nvim-lualine/lualine.nvim) and [Bufferline](https://github.com/akinsho/bufferline.nvim)
  - Git integration with [DiffView](https://github.com/sindrets/diffview.nvim) and [GitSings](https://github.com/lewis6991/gitsigns.nvim)
  - Easily customize

<details>
  <summary> <b>Themes </b> </summary>

![TNPrint](https://user-images.githubusercontent.com/98850074/200186219-31bc10d3-8818-46ba-820e-ef8b7c5c9e40.png)

<hr>

<br>

![CPPRINT](https://user-images.githubusercontent.com/98850074/200188164-d7ce95dd-cb35-40e8-b192-10aa02b18341.png)

<hr>

<br>

![githubmode](https://user-images.githubusercontent.com/98850074/200182890-3cc9326e-811c-4bd4-a5bc-2cf2931b384b.png)
</details>

<br>

## 🎯 Requirements

- [Neovim](https://neovim.io/) 8.0+
- [Pynvim](https://github.com/neovim/pynvim) 0.4.3+
- [Yarn](https://classic.yarnpkg.com/lang/en/docs/install/) 1.22.0+
- [Nerd Fonts](https://www.nerdfonts.com/) (optional)

<br>

## 🛠 Installation 

After dependencies setup  , execute the command below . Make sure that <a href="https://git-scm.com/" target="_blank"> Git </a> is installed

### 🐧 Linux/🍎macOS
 - Backup of your current nvim
```bash
mv ~/.config/nvim ~/.config/nvim.bak
```
- Clone the HydraVim and start Neovim

```bash
git clone https://github.com/HydraVim/HydraVim.git --depth 1 --branch main ~/.config/nvim && nvim
```

### 🪟 Windows - Powershell
- Backup of your current nvim
```powershell
Move-Item $HOME\AppData\Local\nvim $HOME\AppData\Local\nvim.bak
```
- Clone the HydraVim and start Neovim
```powershell
git clone https://github.com/HydraVim/HydraVim.git $HOME\AppData\Local\nvim --depth 1 --branch main && nvim
```
          
<br>

## 🔠 Languages

Nvim supports Language Server Protocol (LSP), which means that it acts as a client for LSP servers. Thus, all language support is done through [Mason (LSP Installer)](https://github.com/williamboman/mason.nvim) and automatically configured by [LSPConfig](https://github.com/neovim/nvim-lspconfig). Use the Mason command to manage your language servers.
[nvim-cmp](https://github.com/hrsh7th/nvim-cmp) is responsible for giving suggestions for completing your code, including snippets.
Syntax highlighting is installed automatically through the
[Tree-sitter](https://github.com/tree-sitter/tree-sitter)

In short: Open HydarVim and start coding.

Read more about lsp [here](https://neovim.io/doc/user/lsp.html).

<br>

## 🐙 Live Server
Development in real time.
<details>
  <summary> <b>Live Server Config</b> </summary>
  
- Install Live-server

``` shell
npm i -g live-server
```

- Case install fails

``` shell
sudo npm i -g live-server
```

To use follow the instructions below <p>
- Go to `index.html` on Hydravim and open the terminal and type `live-server`, an window will open automatically on your default browser <p>
- The server will be updated automatically.
<br />
</details>

## 📚 Wiki
All HydraVim documentation is available on the [Wiki](https://github.com/HydraVim/HydraVim/wiki/), from installation to possible usage errors.

## 💫 Thanks to
We are grateful to the repositories, plugin authors and the Neovim community for making HydraVim possible.  They offer special thanks to AstroVim, NvChad, LunarVim and CosmicVim for their inspiration and resources, as well as to all the plugin developers who have created useful tools for Neovim.

## 🎈 Maintainers
  <span>
    <img src="https://user-images.githubusercontent.com/98850074/200189379-5b831bfd-a902-46c8-914e-284e53308dc2.png" width=100 height=100>
  </span>

  <span> 
    <img src="https://user-images.githubusercontent.com/98850074/200189532-28bd2d72-76e8-4650-a293-9fdfa64c4b73.png" width=100 height=100>
  </span>
