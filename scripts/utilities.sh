#!/usr/bin/env bash

# fd          - Fast file and directory finder
# fzf         - Fuzzy finder                  
# ripgrep     - Fast text search inside files 
# tree-sitter - Parser generator and CLI      

sudo pacman -S --needed \
    fd \
    fzf \
    ripgrep \
    tree-sitter 
