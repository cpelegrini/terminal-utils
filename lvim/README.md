# Lvim


1. Create a symlink
   ```bash
      ln -s $(pwd) ~/.config/lvim
      sudo rm -r /Users/claudineipelegrini/.cache/lvim
   ```


2. Plugins changes

* Remove bufferline plugin:
Path: ~/.local/share/lunarvim/lvim/plugins.lua
Edit file plugins.lua. Comment the bufferline plugin lines.


3. Add omnisharp LSP config
