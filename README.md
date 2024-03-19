# .Dotfiles

This repository contains my personal dotfiles, a collection of configuration files and scripts that I use to customize and personalize my development environment. Feel free to explore, fork, and adapt them to suit your own preferences.

## Table of Contents

- [Overview](#overview)
- [Installation](#installation)
- [Customization](#customization)
- [Contributing](#contributing)
- [License](#license)

## Overview

- Shell: Zsh
- Text editor: Neovim
- Terminal emulator: kitty
- Fonts Comic Shanns Nerd Font
- Compositor: Hyprland
- Status bar: Eww
- Application launcher: Fuzzel
- Spotify client & player: spotifyd & spotify-player

## Installation

To install these dotfiles on your system, follow these steps:

1. **Clone the repository:**
    ```bash
    git clone https://github.com/geavenx/dotfiles.git ~/.dotfiles
    ```

2. **Navigate to the dotfiles directory:**
    ```bash
    cd ~/.dotfiles
    ```

3. **Using the Makefile:**
    I use [stow](https://www.gnu.org/software/stow/) to create symlinks from my repository to the actual system.
    The command below will use stow to create all of those symlinks at once.
    ```bash
    make all
    ```
    And if you want to remove all symlinks, use
    ```bash
    make delete
    ```

    NOTE: Obviously, you have to install stow in order to do this.

## Customization

To customize these dotfiles for your own use:

- Fork this repo
- Edit the specific configuration files in each tool's directory.
- Add or remove configurations as needed.

## Contributing

If you find an issue, have a suggestion, or want to contribute improvements, please open an issue or create a pull request. Your contributions are highly welcome!

## License

This project is licensed under the [MIT License](LICENSE). Feel free to use and modify the dotfiles.

