# Dotfiles

Personal dotfiles managed with [chezmoi](https://www.chezmoi.io/) for macOS.

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

## Machine Profiles

The dotfiles automatically support different machine profiles:
- **Personal** (common apps and tools)
- **Jobr** (workplace tools: Cursor, Docker, Google Cloud SDK, Teams, Slack, Synology Drive, etc.)
- **Buypass** (workplace tools: Ansible, Autossh, Kubectx, Docker, Lens, Royal TSX)

The installation script prompts for the profile, which sets `machine_type` in `~/.config/chezmoi/chezmoi.toml`.

## Homebrew & Package Maintenance

### Automatic Daily Updates
Homebrew updates run silently in the background once every 24 hours via `homebrew/autoupdate`:
- Upgrades formulae and casks in the background.
- Runs `brew cleanup` to keep disk usage low.
- Displays a native macOS notification banner when updates complete (no disruptive terminal popups).

### Manual Updates & Aliases
You can also upgrade manually at any time:
- Run `update-brew` (or simply `bup` in Fish) to update Homebrew, casks, and Mac App Store apps in one go.
- Run `bcheck` to see outdated packages.

## Updating Dotfiles

To pull the latest dotfiles and apply changes:

```bash
chezmoi update
# or using fish alias:
czu
```

Useful aliases included in Fish:
- `cz` / `cza` / `czd` / `czu`: `chezmoi` shortcuts
- `bup` / `bcheck` / `bclean`: Homebrew shortcuts
- `ls` / `l` / `la` / `lla`: `lsd` listings
