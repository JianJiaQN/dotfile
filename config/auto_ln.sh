#! /usr/bin/env bash

dir=$HOME/dotfile

# bash
f_bash=$dir/bash
echo "ln -si $f_bash/.* $HOME/"
ln -si $f_bash/.* $HOME/

# zsh (oh-my-zsh, powerlevel10k, highlight, suggestion needed)
f_zsh=$dir/zsh
echo "ln -si $f_zsh/.* $HOME/"
ln -si $f_zsh/.* $HOME/

# other config in ~/.config
f_config=$dir/config
echo "ln -si $f_config/* $HOME/.config/"
ln -si $f_config/* $HOME/.config/
