#!/bin/sh

git clone -q https://github.com/$USER/dotfiles .dotfiles
stow -d .dotfiles .

sh "$@"
