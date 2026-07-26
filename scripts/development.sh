#!/usr/bin/env bash

# Install packages

sudo pacman -S --needed \
    git \
    neovim

# Configurations

ln -sfn "$REPO_ROOT/nvim" "$CONFIG_DIR/nvim"
