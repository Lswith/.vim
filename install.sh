#!/usr/bin/env bash


# Make config directory for Neovim's init.vim
mkdir -p ~/.config/nvim

# Softlink init.vim into the appropriate spot
ln -sf ~/.vim/init.vim ~/.config/nvim/init.vim

# Install vim-plug
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Enter Neovim and install plugins, ignore warnings shown (missing colorschemes, functions, etc.), simply keep press ENTER
# nvim
# :PlugInstall
# :qa! # Quit (q) All (a) Force (!) (does not save). Useful when dealing with multiple split windows.
