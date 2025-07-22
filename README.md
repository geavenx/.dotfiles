# lab settings

This repository holds my personal configuration files for my computers

## Overview

- Shell: ssh
- Text editor:
- terminal: alacritty
- font: CaskaydiaMono Nerd Font
- wayland compositor: hyprland

## Installation

1. **Clone this repo:**

    ```bash
    git clone https://github.com/geavenx/dotfiles.git ~/dotfiles
    cd ~/dotfiles
    ```

2. **symlinking the configuration files:**

    I use [stow](https://www.gnu.org/software/stow/) to create symlinks from my
    repository to the actual system. So every file under the [directory home](https://github.com/geavenx/.dotfiles/tree/main/home)
    will be reflected in the system ~/ directory as a symlink.

    - **Note:** You need to delete all files that has the same path as any of the
    files that are recursively present in the [home directory](https://github.com/geavenx/.dotfiles/tree/main/home)

    The command below will use **stow** to create all of those symlinks at once.

    ```bash
    make all
    ```

    And if you want to remove all symlinks, use

    ```bash
    make delete
    ```

    **Note:** Obviously, you have to install `stow` in order to do this.
