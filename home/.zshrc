# Path
export PATH=$HOME/bin:/usr/local/bin:$HOME/.local/bin:$HOME/.scripts:$HOME/.appimages:/usr/local/go/bin:$HOME/go/bin:/usr/local:$PATH

# Environment variables
export EDITOR=nvim

# Oh-my-zsh path
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"

# Plugins
plugins=(git tmux alias-finder git-prompt command-not-found sudo archlinux)

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

export PATH=$PATH:/home/vitor/.spicetify

# zoxide
eval "$(zoxide init zsh)"

# pnpm
export PNPM_HOME="/home/vitor/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac

# android SDK env variables
export ANDROID_HOME=/home/vitor/Android/Sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools

# zsh-syntax-highlighting
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.plugin.zsh
