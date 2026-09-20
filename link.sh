#!/bin/sh

set -eu

SCRIPT_DIR="$(cd -- "$(dirname -- "$0")" && pwd)"

link_file() {
    src=$1
    dst=$2
    mkdir -p -- "$(dirname -- "$dst")"
    ln -sf -- "$src" "$dst"
}

# vim
link_file "$SCRIPT_DIR/vim/vimrc" "$HOME/.vimrc"
link_file "$SCRIPT_DIR/vim/pack/default/start/commentary/plugin/commentary.vim" \
  "$HOME/.vim/pack/default/start/commentary/plugin/commentary.vim"
link_file "$SCRIPT_DIR/vim/pack/default/start/commentary/doc/commentary.txt" \
  "$HOME/.vim/pack/default/start/commentary/doc/commentary.txt"
link_file "$SCRIPT_DIR/vim/pack/default/start/gruvbox/colors/gruvbox.vim" \
  "$HOME/.vim/pack/default/start/gruvbox/colors/gruvbox.vim"
link_file "$SCRIPT_DIR/vim/pack/default/start/gruvbox/autoload/gruvbox.vim" \
  "$HOME/.vim/pack/default/start/gruvbox/autoload/gruvbox.vim"
link_file "$SCRIPT_DIR/vim/pack/default/start/gruvbox/autoload/airline/themes/gruvbox.vim" \
  "$HOME/.vim/pack/default/start/gruvbox/autoload/airline/themes/gruvbox.vim"
link_file "$SCRIPT_DIR/vim/pack/default/start/gruvbox/autoload/lightline/colorscheme/gruvbox.vim" \
  "$HOME/.vim/pack/default/start/gruvbox/autoload/lightline/colorscheme/gruvbox.vim"

link_file "$SCRIPT_DIR/tmux/tmux.conf" "$HOME/.tmux.conf" # tmux
link_file "$SCRIPT_DIR/lf/lfrc" "$HOME/.config/lf/lfrc"   # lf
