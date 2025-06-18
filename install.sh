#!/bin/bash

set -eufo pipefail

# Function to ask yes/no question
ask_yn() {
    local prompt="$1"
    local answer
    while true; do
        read -p "$prompt (y/n): " answer
        case "$answer" in
            [Yy]* ) return 0;;
            [Nn]* ) return 1;;
            * ) echo "Please answer yes or no.";;
        esac
    done
}

# Ask about machine type
echo "What type of machine is this?"
echo "1) Personal"
echo "2) Jobr"
echo "3) Buypass"
read -p "Enter your choice (1-3): " machine_type

# Create .config/chezmoi directory if it doesn't exist
mkdir -p ~/.config/chezmoi

# Create chezmoi.toml based on machine type
case "$machine_type" in
    1)
        echo "Setting up for personal machine..."
        printf '[data]\nbuypass_machine = false\n' > ~/.config/chezmoi/chezmoi.toml
        ;;
    2)
        echo "Setting up for Jobr machine..."
        printf '[data]\njobr_machine = true\nbuypass_machine = false\n' > ~/.config/chezmoi/chezmoi.toml
        ;;
    3)
        echo "Setting up for Buypass machine..."
        printf '[data]\nbuypass_machine = true\n' > ~/.config/chezmoi/chezmoi.toml
        ;;
    *)
        echo "Invalid choice. Exiting."
        exit 1
        ;;
esac

# Default GitHub username
default_username="trondvh"

# Ask for GitHub username with default
read -p "Enter your GitHub username [$default_username]: " github_username
github_username=${github_username:-$default_username}

# Initialize chezmoi
echo "Initializing chezmoi..."
chezmoi init --apply "$github_username"

echo "Installation complete!" 