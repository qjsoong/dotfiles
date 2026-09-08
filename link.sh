#!/bin/sh

set -eu

SCRIPT_DIR="$(cd -- "$(dirname -- "$0")" && pwd)"

# Configuration files
ln -sf "$SCRIPT_DIR/vim/vimrc" "$HOME/.vimrc"
