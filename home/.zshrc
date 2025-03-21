# Path
export PATH=/usr/local/bin:$HOME/.local/bin:/usr/local/go/bin:$HOME/go/bin:/usr/local:$PATH

export XDG_DATA_DIRS=$HOME/.local/share/applications:$XDG_DATA_DIRS

# Environment variables
export EDITOR=nvim

# Set keyboard layout :)
setxkbmap -layout br -variant abnt2

# Oh-my-zsh path
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"

# Plugins
plugins=(
    git
    tmux
    alias-finder
    git-prompt
    command-not-found
    sudo 
    archlinux
    poetry
)

source $ZSH/oh-my-zsh.sh

if [ -f ~/.aliases ]; then
  source ~/.aliases
fi
source $HOME/.aliases

# NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  
#
# starship
#eval "$(starship init zsh)"

# pyenv
export PYENV_ROOT="$HOME/.pyenv"
export PYENV_VIRTUALENVWRAPPER_PREFER_PYENV="true"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"


# bun completions
#[ -s "/home/vcardoso/.bun/_bun" ] && source "/home/vcardoso/.bun/_bun"

# bun
#export BUN_INSTALL="$HOME/.bun"
#export PATH="$BUN_INSTALL/bin:$PATH"
#
#export PATH=$PATH:/home/vitor/.spicetify

# zoxide
#eval "$(zoxide init zsh)"

# pnpm
#export PNPM_HOME="/home/vitor/.local/share/pnpm"
#case ":$PATH:" in
#  *":$PNPM_HOME:"*) ;;
#  *) export PATH="$PNPM_HOME:$PATH" ;;
#esac

# android SDK env variables
#export ANDROID_HOME=/home/vitor/Android/Sdk
#export PATH=$PATH:$ANDROID_HOME/emulator
#export PATH=$PATH:$ANDROID_HOME/tools
#export PATH=$PATH:$ANDROID_HOME/tools/bin
#export PATH=$PATH:$ANDROID_HOME/platform-tools

# zsh-syntax-highlighting
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.plugin.zsh

# direnv
#eval "$(direnv hook zsh)"

# Homebrew
#eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

# OpenAI API Key used by chatgpt.nvim plugin
#export OPENAI_API_KEY=$(pass chatgpt/nvim)

# Archived
# Pywal terminal persistance
# (cat ~/.cache/wal/sequences &)
# cat ~/.cache/wal/sequences
# source ~/.cache/wal/colors-tty.sh

fpath+=~/.zfunc; autoload -Uz compinit; compinit

feh --bg-scale ~/.wallpapers/adam.jpg

zstyle ':completion:*' menu select
