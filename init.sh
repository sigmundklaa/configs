#!/usr/bin/env bash

here=$(readlink -f $(dirname $0))

home=$HOME
config=${XDG_CONFIG_HOME-"$home/.config"}

nvim=$config/nvim
alacritty=$config/alacritty
tmux=$home/.tmux.conf

_install() {
    src=$1
    dst=$2

    ln -s "$src" "$dst"
}

_uninstall() {
    dst=$1

    if [ -d $dst ]; then
        rm -rf $dst
    elif [ -f $dst ]; then
        rm $dst
    fi
}

_reinstall() {
    src=$1
    dst=$2

    _uninstall $dst
    _install $src $dst
}

_reinstall "$here/nvim" "$nvim"
_reinstall "$here/alacritty" "$alacritty"
_reinstall "$here/.tmux.conf" "$tmux"

