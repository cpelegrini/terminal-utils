# Neovim config

My vim (neovim) guide for everything.

## Vim guides
* [QuickRef](https://quickref.me/vim?q=s)
* [DevHints](https://devhints.io/vim)



[fork from enriquesaid](https://github.com/enriquesaid/nvim-config)

## 1. MacOS Installations

* [nvim](https://neovim.io/)
```bash
brew install neovim
```
* [paq-nvim](https://github.com/savq/paq-nvim)
* [dracula](https://github.com/dracula/vim) color scheme
* [devicons](https://github.com/ryanoasis/vim-devicons)

### Others neovim guides
* [fanwangecon](https://fanwangecon.github.io/Tex4Econ/nontex/install/linux/fn_vim.html)
* [book portuguese](https://juliobiason.gitbooks.io/uma-licao-de-vim/content/index.html)

## Clone repository
* Create nvim config folder
```bash
mkdir ~/.config/nvim
cd ~/.config/nvim
```
* Clone repository
```github
git clone https://github.com/cpelegrini/neovim.git .
```

## 2. Neovim Installations

```vim
:PaqInstall
:PaqSync

:LspInstall lua
:LspInstall typescript
:LspInstall html
:LspInstall css

:TSInstall lua
:TSInstall javascript
:TSInstall typescript
:TSInstall json
:TSInstall html
:TSInstall css
:TSInstall yaml
```

## Key Maps

### Manipulate vim Windows
|cmd  |desc  |
|---|---|
|:vsp|vertical split|
|:sp|split|
|:e file|open a file|
|:close|close window|
|:only|close all other windows|
|ctrl + w + w|alternate focus between windows|


### nvim-tree mappings
To see help, type:
```vim
:help nvim-tree-default-mappings
```
[link](https://github.com/kyazdani42/nvim-tree.lua/blob/master/doc/nvim-tree-lua.txt)

## Sessions
Save session to restore after restart nvim
```vim
:mksession session.vim
```
Restore session
```vim
:source session.vim
```
Restore outside nvim
```bash
nvim -S session.vim
```
