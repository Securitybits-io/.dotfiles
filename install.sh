#!/bin/bash
apt update

apt install -y alacritty
apt install -y fzf
apt install -y ripgrep
apt install -y tmux

echo "Installing Tmux Packet Manager"
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
