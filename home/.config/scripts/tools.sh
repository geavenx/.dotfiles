#!/bin/bash

# Archlinux + Hyprland setup script

#{{ HARDWARE
#   CPU: AMD Ryzen 7 5700X
#   GPU: AMD Radeon 7600
#   RAM: 16GB DDR4
#   Motherboard: msi b550m pro-vdh wifi 
#   SSD: 1TB kingston nvme
#}}


# Exit on error
#set -e

# Print commands and their arguments as they are executed
#set -x

# {{ BASIC PACKAGES
#curl https://gist.githubusercontent.com/geavenx/ab61e45551c4638ac599a60fa6b5fa90/raw/f27d484d9b567aff71914d0c8c7eb45e7d5f0547/gistfile1.txt > /tmp/pkglist.txt
#sudo pacman -S --needed $(comm -12 <(pacman -Slq | sort) <(sort /tmp/pkglist.txt))
#rm /tmp/pkglist.txt


CONFIG=$HOME/.config
GITHUB_SCRIPT="https://raw.githubusercontent.com/geavenx/.dotfiles/main/home/.config/scripts/github_ssh.sh"

echo "installing packages"
sudo pacman -S --needed \
    base-devel git zsh neovim tmux python-pip go amd-ucode \
    otf-comicshanns-nerd wget tar tldr stow speedtest-cli python \
    neofetch mesa vulkan-radeon gdb gcc lsd zsh-syntax-highlighting \
    curl unzip unrar xclip lazygit spotifyd net-tools pass
# }}

# {{ YAY SETUP
echo "setting up yay"
if ! [ -x "$(command -v yay)" ]; then
  git clone https://aur.archlinux.org/yay.git /tmp/yay
  cd /tmp/yay
  makepkg -si
  cd -
  rm -rf /tmp/yay
fi

echo "installing AUR packages"
yay -S --needed \
    spotify dtrx thorium-browser-bin sublime-text-4 \
    visual-studio-code-bin ncurses5-compat-libs ttf-apple-emoji \
    vesktop-bin eww-git swww nvm
# }}

# {{ GITHUB SETUP
echo "=== GITHUB ==="
echo -n "Connect to github (ssh)? [Y/n]: "
read connect_github

if [[ "$connect_github" == "n" || "$connect_github" == "N" ]]; then
    echo "not connecting to github."
else
    cd /tmp
    curl -o /tmp/github.sh $GITHUB_SCRIPT
    chmod +x /tmp/github.sh
    ./tmp/github.sh
    rm /tmp/github.sh
    cd $HOME
    echo -n "Press any key to continue..."
    read any
fi
# }}

# {{ DOTFILES SETUP
echo "setting up dotfiles"
echo -n "sync dotfiles? [Y/n]: "
read sync_dots

if [[ "$sync_dots" == "n" || "$sync_dots" == "N" ]]; then
    echo "Not syncing dotfiles..."
else
    if ! [ -e $HOME/repos/dotfiles ]; then
        mkdir -p $HOME/repos/dotfiles
        git clone https://github.com/geavenx/.dotfiles.git $HOME/repos/dotfiles
        cd repos/dotfiles

        rm -rf \
            $HOME/.zshrc $HOME/.tmux.conf $HOME/.gitconfig $HOME/.aliases \
            $CONFIG/eww $CONFIG/hypr $CONFIG/kitty $CONFIG/nvim $CONFIG/scripts \
            $CONFIG/spotifyd

        make all
        cd $HOME
    fi
fi
# }}

# {{ PYTHON SETUP
if ! [ -x "$(command -v pyenv)" ]; then
    echo "setting up pyenv"
    curl https://pyenv.run | bash
fi
# }}

# {{ RUST/CARGO SETUP
if ! [ -x "$(command -v cargo)" ]; then
    echo "setting up rust"
    curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
fi

cargo install \
    ripgrep zoxide starship \
    spotify_player --features daemon,lyric-finder
# }}

# {{ SOURCE BUILDS
#if ! [-x "$(command -v spotifyd)" ]; then
#    echo "installing spotifyd"
#    SPOTIFYD_PATH=$HOME/build/spotifyd
#    git clone https://github.com/Spotifyd/spotifyd.git $SPOTIFYD_PATH
#    cd $SPOTIFYD_PATH 
#    cargo build --release
#    sudo cp $SPOTIFYD_PATH/target/release/spotifyd /usr/local
#    sudo cp $SPOTIFYD_PATH/contrib/spotifyd.service /etc/systemd/user
#    cd $HOME
#fi
# }}
