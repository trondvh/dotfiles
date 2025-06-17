# Set PATH to include Homebrew
if test -d /opt/homebrew/bin
  set -gx PATH /opt/homebrew/bin $PATH
end

# Add ~/.local/bin to PATH
if test -d ~/.local/bin
  set -gx PATH ~/.local/bin $PATH
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
