#! /usr/bin/env bash

dir=$HOME/dotfile

# zsh (oh-my-zsh, powerlevel10k, highlight, suggestion needed)
home=$dir/home
echo "ln -si $home/.* $HOME/"
ln -si $home/.* $HOME/

# other config in ~/.config
config=$dir/config
echo "ln -si $config/* $HOME/.config/"
ln -si $config/* $HOME/.config/
