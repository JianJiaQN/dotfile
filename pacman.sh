#! /usr/bin/env bash

dir=$HOME/dot/config/pacman

mv /etc/pacman.{conf,bak}
ln -si $dir/pacman.conf /etc/

mv /etc/pacman.d/mirrorlist{,.bak}
ln -si $dir/mirrorlist* /etc/pacman.d/
