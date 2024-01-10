# Path
export PATH=$HOME/bin:/usr/local/bin:$HOME/.local/bin:$HOME/.scripts:$HOME/.appimages:/usr/local/go/bin:$HOME/go/bin:$PATH

# Oh-my-zsh path
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"

# Plugins
plugins=(git tmux alias-finder git-prompt command-not-found sudo zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

if [ -f ~/.aliases ]; then
  source ~/.aliases
fi
source $HOME/.aliases

# NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  

# starship
eval "$(starship init zsh)"

# pyenv
export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"


# bun completions
[ -s "/home/vcardoso/.bun/_bun" ] && source "/home/vcardoso/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
export PYENV_ROOT="$HOME/.pyenv"

# spicetify
export PATH=$PATH:/home/vitor/.spicetify
