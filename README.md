# Dotfiles

My personal dotfiles managed with chezmoi.

## Installation

### Quick Install

```bash
curl -fsSL https://raw.githubusercontent.com/trondvh/dotfiles/main/install.sh | bash
```

### Manual Install

1. Clone this repository:
```bash
git clone https://github.com/trondvh/dotfiles.git
cd dotfiles
```

2. Run the installation script:
```bash
./install.sh
```

## Machine Types

The dotfiles support different machine types:
- Personal
- Jobr
- Buypass

The installation script will prompt you to select the appropriate machine type.

## Updating

To update your dotfiles:

```bash
chezmoi update
chezmoi apply
```

## Structure

- `dot_chezmoi/`: Repository management files
  - `scripts/`: Installation and utility scripts
    - `install.sh`: Initial installation script
    - `run-in-terminal.sh`: Script to run brew updates in Terminal
    - `update-brew.sh`: Homebrew update script
  - `README.md`: This file
- `dot_config/`: Configuration files
  - `launchagents/`: macOS Launch Agents
- `common/` - Common packages and configurations
- `workplace.jobr/` - Jobr-specific packages
- `workplace.buypass/` - Buypass-specific packages
- `personal/` - Personal-specific packages 