#!/bin/zsh

# if we want to include something else, simply add to the array below.
# note: the directories are relative to ~/.config, so you should not include a leading slash in your paths.
dirs_to_copy=( "sway" "waybar" "nvim")
for dir in $dirs_to_copy; do
    mkdir -p $(pwd)/.config/$dir
    cp -r ~/.config/$dir/* $(pwd)/.config/$dir
done
cp ~/.zsh_plugins.txt $(pwd)/.zsh_plugins.txt
cp ~/.zshrc $(pwd)/.zshrc
echo "\033[0;32mDone!\033[0m"
