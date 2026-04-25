#!/bin/zsh

grim -g "$(slurp)" - | swappy -f - -o - | wl-copy
