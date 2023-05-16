# Yabai, skhd Configs


## Symlinks

1. Create a symlink to yabai config file
   ```bash
      mkdir -p ~/.config/yabai
      ln -s $(pwd)/yabairc ~/.config/yabai/yabairc
   ```
2. Create a symlink to skhd config file
   ```bash
      mkdir -p ~/.config/skhd
      ln -s $(pwd)/skhdrc ~/.config/skhd/skhdrc
   ```

## Yabai log
Location:
/usr/local/var/log/yabai
```bash
cat /usr/local/var/log/yabai/yabai.err.log
```
```bash
cat /usr/local/var/log/yabai/yabai.out.log
```
