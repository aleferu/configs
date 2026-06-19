#!/usr/bin/env bash

set -xe

# Get the absolute path of the directory where THIS script lives
REPO_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Remove the default fresh install folder if it exists
rm -rf "$HOME/.config/sublime-text/Packages/User"

# Force create the symlink using an absolute path
ln -sf "$REPO_DIR/User" "$HOME/.config/sublime-text/Packages/User"

echo "Sublime Text configuration installed!"
