# SketchyBar
Setup based on: [felixkratz](https://github.com/FelixKratz/dotfiles/blob/4dcd36c6b72be0f385af0a56b4e3aae31d2842ff/README.md)

## Install
1. [Link](https://felixkratz.github.io/SketchyBar/setup) 
2. Run followed scripts:
```bash
curl -L https://github.com/kvndrsslr/sketchybar-app-font/releases/download/v1.0.4/sketchybar-app-font.ttf -o $HOME/Library/Fonts/sketchybar-app-font.ttf
brew install sf-symbols
```
3. Create symlink:
```bash
   ln -s $(pwd)/sketchybar ~/.config/sketchybar
```
4. Make all .sh files executable: chmod +x <file.sh>
5. Run:
```bash
brew services restart sketchybar
```

