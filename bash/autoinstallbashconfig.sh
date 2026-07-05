#!/usr/bin/env bash

set -xe

# Get the absolute path of the directory where THIS script lives
REPO_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Individual files
rm -f "$HOME/.bashrc"
ln -sf "$REPO_DIR/bashrc" "$HOME/.bashrc"

echo "Bash configuration installed!"
