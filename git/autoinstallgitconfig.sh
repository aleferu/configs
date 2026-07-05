#!/usr/bin/env bash

set -xe

# Get the absolute path of the directory where THIS script lives
REPO_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Individual files
rm -f "$HOME/.gitconfig"
ln -sf "$REPO_DIR/gitconfig" "$HOME/.gitconfig"

echo "Git configuration installed!"
