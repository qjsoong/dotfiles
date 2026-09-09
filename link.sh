#!/bin/sh

set -eu

SCRIPT_DIR="$(cd -- "$(dirname -- "$0")" && pwd)"

link_file() {
    src=$1
    dst=$2
    mkdir -p -- "$(dirname -- "$dst")"
    ln -sf -- "$src" "$dst"
}

# Configuration files
link_file "$SCRIPT_DIR/vim/vimrc"          "$HOME/.vimrc"
link_file "$SCRIPT_DIR/tmux/tmux.conf"     "$HOME/.tmux.conf"
link_file "$SCRIPT_DIR/lf/lfrc"            "$HOME/.config/lf/lfrc"
