#!/usr/bin/env zsh
set -e

cd ${0:a:h}
DIR=$(pwd)
mkdir -pv bak
for rc in *rc gitconfig tmux.conf wezterm.lua; do
  [ -e ~/.$rc ] && mv -v ~/.$rc bak/.$rc
  ln -sfv $DIR/$rc ~/.$rc
done
