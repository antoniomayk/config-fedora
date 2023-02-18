#!/bin/fish

sudo dnf config-manager --add-repo "https://download.docker.com/linux/fedora/docker-ce.repo"
sudo dnf install -y docker-ce docker-ce-cli containerd.io docker-compose-plugin

sudo systemctl enable docker.service && sudo systemctl enable containerd.service

sudo groupadd -f docker && sudo usermod -aG docker $USER
