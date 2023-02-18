#!/bin/fish

set TMP (mktemp)

curl -Lfso "$TMP" "https://raw.githubusercontent.com/oh-my-fish/oh-my-fish/master/bin/install"

fish -l "$TMP" --noninteractive --yes
fish -c "omf install sdk nvm pure ghcup rustup"
