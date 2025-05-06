# zsh paths
export ZSH="$HOME/.oh-my-zsh"
export PATH="$PATH:$HOME/go/bin"

# Plugins
plugins=(
    git
    tmux
    alias-finder
    command-not-found
    sudo
    archlinux
    poetry
    zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh
source $HOME/.config/zsh/.zshenv

# aliases
if [ -f ~/.aliases ]; then
  source ~/.aliases
fi
source $HOME/.aliases
# aliases end

# pyenv
export PYENV_ROOT="$HOME/.pyenv"
export PYENV_VIRTUALENVWRAPPER_PREFER_PYENV="true"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
# pyenv end

fpath+=~/.zfunc; autoload -Uz compinit; compinit
zstyle ':completion:*' menu select

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
# nvm end

# pnpm
export PNPM_HOME="/home/vitor/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

# starship
eval "$(starship init zsh)"
# starship end

# yazi shell wrapper
function y() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
	yazi "$@" --cwd-file="$tmp"
	if cwd="$(command cat -- "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
		builtin cd -- "$cwd"
	fi
	rm -f -- "$tmp"
}
# yazi shell wrapper end

. "$HOME/.local/share/../bin/env"
