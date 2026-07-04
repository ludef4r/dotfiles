#!/usr/bin/env bash

# Install packages

sudo pacman -S --needed \
    waybar 

# Configurations

ln -sfn "$REPO_ROOT/waybar" "$CONFIG_DIR/waybar"
