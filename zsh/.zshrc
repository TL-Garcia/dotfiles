export EDITOR="nvim"
export VISUAL="nvim"

# Alias
alias vim="nvim"
alias vi="nvim"
alias ls="ls --color"
alias grep="grep --color"
alias vimrc="nvim ~/.config/nvim"
alias zconf="nvim ~/.zshrc"
alias vpn=" forticlient vpn connect idealista -u tlorono -p"
alias screencast="peek"

# FZF
source /usr/share/doc/fzf/examples/key-bindings.zsh
source /usr/share/doc/fzf/examples/completion.zsh

# Starship
eval "$(starship init zsh)"

# Plugins
source ~/.zplug/init.zsh
zplug "zsh-users/zsh-autosuggestions"
zplug "zsh-users/zsh-syntax-highlighting"

autoload -Uz +X compinit && compinit

## case insensitive path-completion
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"
zstyle ':completion:*' menu select

# Zoxide
eval "$(zoxide init zsh)"
alias cd="z"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  

export PATH="$PATH:/home/tomas/.local/bin"

# TODO: remove from here
setxkbmap -layout us,es -option grp:win_space_toggle -option caps:super

# bun completions
[ -s "/home/tomas/.bun/_bun" ] && source "/home/tomas/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

