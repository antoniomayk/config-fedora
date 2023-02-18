#!/bin/fish

# NEOVIM NIGHTLY

sudo dnf copr -y enable agriffis/neovim-nightly
sudo dnf install -y neovim

# NEOVIM CONFIG

git clone --depth 1 https://github.com/antoniomayk/config-nvim "$HOME/.config/nvim"

# PACKER

git clone --depth 1 https://github.com/wbthomason/packer.nvim "$HOME/.local/share/nvim/site/pack/packer/start/packer.nvim"
