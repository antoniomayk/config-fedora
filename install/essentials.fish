#!/bin/fish

# BASE

sudo dnf install -y redhat-rpm-config @base-x xrandr qemu-guest-agent \
    spice-vdagent picom tar git wget curl which

# DEVELOPMENT

sudo dnf install -y gcc gcc-c++ gmp gmp-devel ncurses ncurses-compat-libs xz \
    perl cmake make pip python2-devel python3-devel kernel-devel

# GTK CUSTOMIZATION

sudo dnf install -y lxappearance

# TERMINAL

sudo dnf install -y kitty

# MISC

sudo dnf install -y alsa-utils scrot exa bat fd-find fzf ripgrep \
    the_silver_searcher xclip openvpn gnome-keyring
