#!/usr/bin/env bash

set -e

# BASH_SOURCE[0] -> Gets script's path 
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Stores dotfiles instead of setup path
export REPO_ROOT="$(dirname "$SCRIPT_DIR")" 

mkdir -p ~/.config

"$SCRIPT_DIR/fonts.sh"
"$SCRIPT_DIR/development.sh"

