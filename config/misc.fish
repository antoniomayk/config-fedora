#!/bin/fish

set CURRENT (status dirname)

cp -rf "$CURRENT/../data/user-dirs.dirs" "$HOME/.config"
cp -rf "$CURRENT/../data/kora" "$HOME/.local/bin"
