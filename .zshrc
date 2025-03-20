if [[ $TERM_PROGRAM != "WarpTerminal" ]]; then
  setopt HIST_IGNORE_ALL_DUPS
  setopt INC_APPEND_HISTORY
  setopt SHARE_HISTORY
  setopt EXTENDED_HISTORY
  SAVEHIST=9000
  HISTSIZE=9999
  
  # Initialize zsh completion system
  autoload -Uz compinit
  compinit

  # Starship
  eval "$(starship init zsh)"

  # Completions
  source <(devbox completion zsh)
  source <(docker completion zsh)
  source <(kubectl completion zsh)
  source <(flux completion zsh)
fi

# Devbox
DEVBOX_NO_PROMPT=false
eval "$(devbox global shellenv --init-hook)"

# Aliases
alias k=kubectl
alias f=flux
alias cat='bat --paging never --style plain'

alias ls='ls -G'

alias kubectl='kubecolor'

#PROMPT='$(kube_ps1)'$PROMPT
#KUBE_PS1_SYMBOL_ENABLE=false

export OS_CLOUD=openstack
#export PATH="$HOME/go/bin:$PATH"
export PATH="/usr/local/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"
