#!/bin/fish

# GHCUP

set -x BOOTSTRAP_HASKELL_NONINTERACTIVE 1
set -x BOOTSTRAP_HASKELL_ADJUST_BASHRC 1
set -x BOOTSTRAP_HASKELL_INSTALL_HLS 1

curl -Lfs "https://get-ghcup.haskell.org" | bash

# RUSTUP

curl -Lfs "https://sh.rustup.rs" | bash -s -- -y

# SDKMAN

curl -Lfs "https://get.sdkman.io" | bash

# NVM

curl -Lfs "https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh" | bash
