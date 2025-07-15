export EDITOR="nvim"
export VISUAL="nvim"

# History
export HISTFILE="$HOME/.zsh_history"
HISTSIZE=10000
SAVEHIST=HISTSIZE

setopt hist_expire_dups_first # delete duplicates first when HISTFILE size exceeds HISTSIZE
setopt hist_ignore_dups       # ignore duplicated commands history list
setopt share_history
setopt append_history
setopt inc_append_history

# Alias
alias vim="nvim"
alias vi="nvim"
alias ls="ls --color"
alias grep="grep --color"
alias gch="git fetch && git checkout"
alias vimrc="nvim ~/.config/nvim"
alias zconf="nvim ~/.zshrc"
alias vpn=" forticlient vpn connect idealista -u tlorono -p"
alias screencast="peek"

# FZF
source <(fzf --zsh)

# Starship
eval "$(starship init zsh)"

# Plugins
#source ~/.zplug/init.zsh
#zplug "zsh-users/zsh-autosuggestions"


## Completions
autoload -Uz +X compinit && compinit
setopt menu_complete   # do autoselect the first completion entry

zstyle ':completion:*' matcher-list 'm:{[:lower:][:upper:]-_}={[:upper:][:lower:]_-}' 'r:|=*' 'l:|=* r:|=*' # Hypen & case insensitive
zstyle ':completion:*:*:*:*:*' menu select

zstyle ':completion:*' debug

zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"

# Keymaps
# [Shift-Tab] - move through the completion menu backwards
bindkey '^[[Z' reverse-menu-complete
# Move forward/backward by word
bindkey '^[[1;5C' forward-word
bindkey '^F' forward-word
bindkey '^[[1;5D' backward-word
bindkey '^B' backward-word

# Move to start/end of line
bindkey '^A' beginning-of-line
bindkey '^E' end-of-line

# Move though history
bindkey '^N' down-line-or-history
bindkey '^P' up-line-or-history

# Zoxide
eval "$(zoxide init zsh)"
alias cd="z"

export PATH="$PATH:${HOME}/.local/bin"

# bun completions
[ -s "$HOME/.bun/_bun" ] && source "$HOME/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# pnpm
export PNPM_HOME="$HOME/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end
