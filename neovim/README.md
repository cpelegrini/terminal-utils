# Neovim config

My vim (neovim) guide for everything.

## Vim guides
* [Neovim](https://www.lunarvim.org/configuration/01-settings.html#example-options)
* [QuickRef](https://quickref.me/vim?q=s)
* [DevHints](https://devhints.io/vim)



[fork from enriquesaid](https://github.com/enriquesaid/nvim-config)

## 1. MacOS Installations

* [nvim](https://neovim.io/)
```bash
brew install neovim
```
Neovim instalation folder:
```bash
~/.local/share/nvim
```
* [paq-nvim](https://github.com/savq/paq-nvim)
* [dracula](https://github.com/dracula/vim) color scheme
* [devicons](https://github.com/ryanoasis/vim-devicons)

### Others neovim guides
* [fanwangecon](https://fanwangecon.github.io/Tex4Econ/nontex/install/linux/fn_vim.html)
* [book portuguese](https://juliobiason.gitbooks.io/uma-licao-de-vim/content/index.html)

## Create config folder
* Create symbolic link to nvim config folder
* Current folder is *./nvim* 
```bash
ln -s $(pwd) ~/.config/nvim
```
## 2. Neovim Installations

```vim
:PaqInstall
:PaqSync

:LspInstall lua
:LspInstall typescript
:LspInstall html
:LspInstall css
:LspInstall csharp_ls
:LspInstall dockerls
:LspInstall marksman

:TSInstall lua
:TSInstall javascript
:TSInstall typescript
:TSInstall json
:TSInstall html
:TSInstall css
:TSInstall yaml
:TSInstall c_sharp
:TSInstall dockerfile
:TSInstall markdown
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
:help nvim-tree-mappings
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


### Debug - Vimspector

Steps to debug with neovim.
* [Repository](https://github.com/puremourning/vimspector)
* [Article: Debugging in Vim with Vimspector](https://dev.to/iggredible/debugging-in-vim-with-vimspector-4n0m)

