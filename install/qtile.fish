#!/bin/fish

# QTILE

pip install 'xcffib>=0.5.0'
pip install qtile psutil

# QTILE CONFIG

git clone --depth 1 https://github.com/antoniomayk/config-qtile "$HOME/.config/qtile"

echo -e "!#/bin/sh\nexec qtile start --config $HOME/.config/qtile/config.py" >"$HOME/.Xclients" && chmod +x "$HOME/.Xclients"
