#!/bin/fish

set -Ux BAT_THEME Catppuccin-mocha

git clone --depth 1 https://github.com/catppuccin/bat "$(bat --config-dir)/themes"
