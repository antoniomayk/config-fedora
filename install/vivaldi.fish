#!/bin/fish

sudo dnf config-manager --add-repo "https://repo.vivaldi.com/archive/vivaldi-fedora.repo"
sudo dnf install -y vivaldi-stable
