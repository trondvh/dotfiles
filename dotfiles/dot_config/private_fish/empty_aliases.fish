# LSD
alias ls='lsd'

# k8s
alias k='kubectl'
alias kctx='kubectx'
alias kns='kubens'

# History
alias history-ignore-space-on='\
setopt hist_ignore_space;\
echo "Commands starting with space are now EXCLUDED from history."'

alias history-ignore-space-off='\
unsetopt hist_ignore_space;\
echo "Commands starting with space are now ADDED to history."'