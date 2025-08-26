# zsh envvars
export EDITOR=nvim

BUN_INSTALL="$HOME/.bun"

export PATH="$HOME/.local/bin:$HOME/.config/scripts:$HOME/.cargo/bin:$BUN_INSTALL/bin:$PATH"

# XDG envvars
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_STATE_HOME="$HOME/.local/state"
export XDG_DATA_DIRS="$HOME/.local/share/applications:$HOME/.cargo/env:/var/lib/flatpak/exports/share:/home/vitor/.local/share/flatpak/exports/share"

