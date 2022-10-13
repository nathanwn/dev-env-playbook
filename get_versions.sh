#!/bin/bash

echo "---"
echo "version:"
neovim_version=$(gh release list -R https://github.com/neovim/neovim | grep "Latest" | awk '{print $2}')
echo "  nvim_version: \"$neovim_version\""
