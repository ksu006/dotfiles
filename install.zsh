#!/usr/bin/env zsh
set -e

cd ${0:a:h}
DIR=$(pwd)
for rc in *rc gitconfig tmux.conf zplug.packages.zsh; do
  ln -sfv $DIR/$rc ~/.$rc
done
