# Path
export PATH=/usr/local/bin:$HOME/.local/bin:/usr/local/go/bin:$HOME/go/bin:/usr/local:$PATH

export XDG_DATA_DIRS=$HOME/.local/share/applications:$XDG_DATA_DIRS

# Environment variables
export EDITOR=nvim

# Oh-my-zsh path
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"

# Plugins
plugins=(
    git
    docker
    tmux
    alias-finder
    command-not-found
    sudo
    archlinux
    poetry
    zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

if [ -f ~/.aliases ]; then
  source ~/.aliases
fi
source $HOME/.aliases

# pyenv
export PYENV_ROOT="$HOME/.pyenv"
export PYENV_VIRTUALENVWRAPPER_PREFER_PYENV="true"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

fpath+=~/.zfunc; autoload -Uz compinit; compinit
zstyle ':completion:*' menu select

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# pnpm
export PNPM_HOME="/home/vitor/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end
