#!/bin/bash

# Set PATH for Homebrew (Apple Silicon and Intel)
export PATH="/opt/homebrew/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"

set -eufo pipefail

echo "Updating Homebrew..."
/opt/homebrew/bin/brew update

echo "Upgrading Homebrew packages..."
/opt/homebrew/bin/brew upgrade

echo "Upgrading Homebrew casks..."
/opt/homebrew/bin/brew upgrade --cask

echo "Cleaning up old versions..."
/opt/homebrew/bin/brew cleanup

echo "Checking for outdated packages..."
/opt/homebrew/bin/brew outdated

echo "Checking for system issues..."
/opt/homebrew/bin/brew doctor

echo "Done!" 