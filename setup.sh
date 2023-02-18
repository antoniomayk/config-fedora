#!/bin/bash

echo
echo "# ---------------------------------------------------------"
echo "# --- update"
echo "# ---------------------------------------------------------"
echo
echo "updating the system..."
sudo dnf update -y
echo
echo "# ---------------------------------------------------------"
echo "# --- shell"
echo "# ---------------------------------------------------------"
echo
echo "installing fish..."
sudo dnf install -y fish
echo
echo
echo "# ---------------------------------------------------------"
echo "# --- install"
echo "# ---------------------------------------------------------"
echo
fish -l "./install/essentials.fish"
fish -l "./install/fonts.fish"
fish -l "./install/managers.fish"
fish -l "./install/docker.fish"
fish -l "./install/nvim.fish"
fish -l "./install/omf.fish"
fish -l "./install/papirus.fish"
fish -l "./install/qtile.fish"
fish -l "./install/vivaldi.fish"
echo
echo "# ---------------------------------------------------------"
echo "# --- config"
echo "# ---------------------------------------------------------"
echo
fish -l "./config/bat.fish"
fish -l "./config/vpn.fish"
fish -l "./config/fish.fish"
fish -l "./config/kitty.fish"
fish -l "./config/misc.fish"
