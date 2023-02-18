#!/bin/fish

set CURRENT (status dirname)

cp -rf "$CURRENT/../data/user-dirs.dirs" "~/.config"
cp -rf "$CURRENT/../data/kora" "~/.local/bin"
