#!/usr/bin/env bash

set -xe

# Get the absolute path of the directory where THIS script lives
REPO_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Ensure target directories exist
mkdir -p "$HOME/.kiro/settings"
mkdir -p "$HOME/.kiro/powers"
mkdir -p "$HOME/.kiro/extensions"

# Individual files
rm -f "$HOME/.kiro/argv.json"
ln -sf "$REPO_DIR/argv.json" "$HOME/.kiro/argv.json"

rm -f "$HOME/.kiro/settings/cli.json"
ln -sf "$REPO_DIR/settings/cli.json" "$HOME/.kiro/settings/cli.json"

rm -f "$HOME/.kiro/settings/permissions.yaml"
ln -sf "$REPO_DIR/settings/permissions.yaml" "$HOME/.kiro/settings/permissions.yaml"

rm -f "$HOME/.kiro/settings/mcp.json"
ln -sf "$REPO_DIR/settings/mcp.json" "$HOME/.kiro/settings/mcp.json"

rm -f "$HOME/.kiro/powers/installed.json"
ln -sf "$REPO_DIR/powers/installed.json" "$HOME/.kiro/powers/installed.json"

# Individual files (continued)
rm -f "$HOME/.kiro/extensions/extensions.json"
ln -sf "$REPO_DIR/extensions.json" "$HOME/.kiro/extensions/extensions.json"

# Whole directories
rm -rf "$HOME/.kiro/steering"
ln -sf "$REPO_DIR/steering" "$HOME/.kiro/steering"

rm -rf "$HOME/.kiro/agents"
ln -sf "$REPO_DIR/agents" "$HOME/.kiro/agents"

rm -rf "$HOME/.kiro/skills"
ln -sf "$REPO_DIR/skills" "$HOME/.kiro/skills"

echo "Kiro configuration installed!"
