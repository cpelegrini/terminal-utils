# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH



# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
	git
	vscode
	encode64
	droplr
	web-search
	wd
	urltools
	jsontools
   copypath
   copyfile
   copybuffer   
   history
)

export ZSH_THEME="apple"
source $ZSH/oh-my-zsh.sh


#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
eval "$(starship init zsh)"

### Added by Zinit's installer
if [[ ! -f $HOME/.local/share/zinit/zinit.git/zinit.zsh ]]; then
    print -P "%F{33} %F{220}Installing %F{33}ZDHARMA-CONTINUUM%F{220} Initiative Plugin Manager (%F{33}zdharma-continuum/zinit%F{220})…%f"
    command mkdir -p "$HOME/.local/share/zinit" && command chmod g-rwX "$HOME/.local/share/zinit"
    command git clone https://github.com/zdharma-continuum/zinit "$HOME/.local/share/zinit/zinit.git" && \
        print -P "%F{33} %F{34}Installation successful.%f%b" || \
        print -P "%F{160} The clone has failed.%f%b"
fi

source "$HOME/.local/share/zinit/zinit.git/zinit.zsh"
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit

# Load a few important annexes, without Turbo
# (this is currently required for annexes)
zinit light-mode for \
    zdharma-continuum/zinit-annex-as-monitor \
    zdharma-continuum/zinit-annex-bin-gem-node \
    zdharma-continuum/zinit-annex-patch-dl \
    zdharma-continuum/zinit-annex-rust

### End of Zinit's installer chunk

zinit light zdharma/fast-syntax-highlighting
zinit light zsh-users/zsh-autosuggestions
zinit light zsh-users/zsh-history-substring-search
zinit light zsh-users/zsh-completions
zinit light buonomo/yarn-completion

### NNN
export VISUAL=lvim # edit files with key "e"
export EDITOR=lvim # default editor inside nnn
export NNN_FIFO=/tmp/nnn.fifo                # preview
export NNN_TMPFILE='/tmp/.lastd'             # cd on exit
# Bookmarks
NNN_CURRENT="1:~/OneDrive/Trabalho/Iben/Vialize"
NNN_PROJECTS="/Volumes/ExtraData/Projects"
NNN_ONEDRIVE="~/OneDrive"
NNN_VIALIZE="v:$NNN_PROJECTS/Vialize/_git/vialize"
NNN_IGILE="i:$NNN_PROJECTS/Igile/_git"
NNN_TERM_UTILS="t:$NNN_PROJECTS/CPelegrini/_git/terminal-utils"
export NNN_BMS="$NNN_CURRENT;d:$HOME/Downloads;o:$NNN_ONEDRIVE;p:$NNN_PROJECTS;$NNN_VIALIZE;$NNN_IGILE;$NNN_TERM_UTILS" # bookmarks
# Plugins
NNN_PLUG_PERSONAL='g:-!lazygit*'
NNN_PLUG_DEFAULT='1:ipinfo;f:!open .'
NNN_PLUG="$NNN_PLUG_PERSONAL;$NNN_PLUG_DEFAULT;"
export NNN_PLUG
# Colors
BLK="0B" CHR="0B" DIR="4c" EXE="06" REG="00" 
HARDLINK="06" SYMLINK="21" MISSING="00" 
ORPHAN="09" FIFO="06" SOCK="0B" OTHER="06"
export NNN_FCOLORS="$BLK$CHR$DIR$EXE$REG$HARDLINK$SYMLINK$MISSING$ORPHAN$FIFO$SOCK$OTHER"
export NNN_COLORS='#0a1b2c3d;1234' # (/'#0a1b2c3d'/'#0a1b2c3d;1234')

function nnn () {
    command nnn "$@"
    if [ -f "$NNN_TMPFILE" ]; then
            . "$NNN_TMPFILE"
    fi
}

# Kitty
export TERM=xterm-256color

# Tmuxifier
# export TMUXIFIER_LAYOUT_PATH="$HOME/.config/tmux/tmuxifier-layouts"
# eval "$(tmuxifier init -)"
# PATH=$PATH:$HOME/.config/tmux/plugins/tmuxifier/bin

# Python3 as default (pip)
export PATH="/usr/local/bin:$PATH"
alias python='python3.9'
alias pip='pip3.9'


### ALIASES
# lock screen and turn off bluetooth and wifi
alias lock='shortcuts run "Ligar flight mode"; pmset displaysleepnow'
# clear screen inside Tmux
alias cls="clear; tmux clearhist"
# Cli do One Password
# alias aws="op run --env-file=$HOME/.config/op/aws.env -- aws"
# source ~/.config/op/plugins.sh
alias n="nnn"
alias l="lvim +LvimReload"
alias lg="lazygit"
alias t="tmux attach || tmux"
#alias tf="tmuxifier"
alias k="kubectl"
alias sy="yabai --stop-service ; sudo yabai --load-sa ; yabai --start-service ; skhd --restart-service"
alias rotate_clockwise="~/.config/skhd/cycle_clockwise.sh"
alias rotate_counterclockwise="~/.config/skhd/cycle_counterclockwise.sh"
