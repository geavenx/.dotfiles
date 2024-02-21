# Dotfiles Repository

This repository contains my personal dotfiles, a collection of configuration files and scripts that I use to customize and personalize my development environment. Feel free to explore, fork, and adapt them to suit your own preferences.

## Table of Contents

- [Overview](#overview)
- [Installation](#installation)
- [Usage](#usage)
- [Customization](#customization)
- [Contributing](#contributing)
- [License](#license)

## Overview

Dotfiles are configuration files that start with a dot (`.`) and are used to customize various applications and tools in a Unix-like operating system. This repository includes configurations for tools such as:

- Shell (Zsh)
- Text editors (Neovim)
- Version control (Git)
- Terminal emulator (Alacritty)
- and more...

By centralizing these configurations, I can easily synchronize and maintain a consistent development environment across different machines.

## Installation

To use these dotfiles on your system, follow these steps:

1. **Clone the repository:**
    ```bash
    git clone https://github.com/geavenx/dotfiles.git ~/.dotfiles
    ```

2. **Navigate to the dotfiles directory:**
    ```bash
    cd ~/.dotfiles
    ```

3. **Using the Makefile:**
    If you want to use stow for linking your dotfiles, you can run the makefile:
    ```bash
    make all
    ```

    This will use `stow` (you probably will need to install this.) to set up symbolic links for each configuration.

4. **Reload your shell or restart your terminal:**
    This step is necessary for the changes to take effect.

## Usage

The dotfiles are organized in a way that makes it easy to enable or disable specific configurations. Each tool's configuration is stored in its own directory, using $HOME as starting point.

Feel free to explore the various directories and files to understand the structure and make any adjustments according to your preferences.

## Customization

To customize these dotfiles for your own use:

- Edit the specific configuration files in each tool's directory.
- Add or remove configurations as needed.
- Feel free to create a new fork for your customizations.

## Contributing

If you find an issue, have a suggestion, or want to contribute improvements, please open an issue or create a pull request. Your contributions are highly welcome!

## License

This project is licensed under the [MIT License](LICENSE). Feel free to use and modify the dotfiles as you see fit.

