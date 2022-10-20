# Tmux config

## Install tmux
Follow this steps: \
MacOS:
```bash
brew install tmux
``
## Configuration tmux italics

[Guide](https://gist.github.com/bbqtd/a4ac060d6f6b9ea6fe3aabe735aa9d95)

## Configuration

* Create symbolics links to tmux config file and dracula theme.
* Current folder is *./tmux
```bash
ln -s $(pwd)/tmux.conf ~/.tmux.conf
ln -s $(pwd)/dracula.tmuxtheme ~/dracula.tmuxtheme
```

## Install plugins

* [tpm plugins manager](https://github.com/tmux-plugins/tpm)
Resume:
```bash
mkdir -p ~/.tmux/plugins
cd ~/.tmux/plugins
git clone https://github.com/tmux-plugins/tpm
tmux source ~/.tmux.conf
~/.tmux/plugins/tpm/bin/install_plugins
```


