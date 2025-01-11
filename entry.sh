#!/bin/sh

git clone -q https://github.com/pvorselaars/dotfiles .dotfiles
stow -d .dotfiles .

sh "$@"
