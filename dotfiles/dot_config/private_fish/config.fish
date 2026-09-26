# Set PATH to include Homebrew
if test -d /opt/homebrew/bin
  set -gx PATH /opt/homebrew/bin $PATH
end

# Hermes Agent & user binaries — ensure ~/.local/bin is on PATH
if test -d $HOME/.local/bin
  fish_add_path $HOME/.local/bin
end

if test -f ~/.config/fish/aliases.fish
  source ~/.config/fish/aliases.fish
end

if status is-interactive
  # Init starship
  if type -q starship
    starship init fish | source
  end
end

# fnm (Fast Node Manager)
set -q FNM_DIR; or set -gx FNM_DIR "$HOME/.local/share/fnm"
if test -d "$FNM_DIR/bin"
  fish_add_path "$FNM_DIR/bin"
end
if type -q fnm
  fnm env --use-on-cd | source
end
