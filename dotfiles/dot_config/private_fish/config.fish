# Set PATH to include Homebrew
if test -d /opt/homebrew/bin
  set -gx PATH /opt/homebrew/bin $PATH
end

# Add ~/.local/bin to PATH (Hermes Agent & user scripts)
if test -d ~/.local/bin
  contains ~/.local/bin $PATH; or set -gx PATH ~/.local/bin $PATH
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
contains $FNM_DIR/bin $PATH; or set -gx PATH $FNM_DIR/bin $PATH
if type -q fnm
  fnm env --use-on-cd | source
end
