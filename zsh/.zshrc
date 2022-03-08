# Useful history options: 
# - https://www.soberkoder.com/better-zsh-history/
# - https://jdhao.github.io/2021/03/24/zsh_history_setup/
HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000000
HISTFILESIZE=1000000000

setopt INC_APPEND_HISTORY_TIME  # append command to history file immediately after execution
setopt EXTENDED_HISTORY 
setopt HIST_FIND_NO_DUPS
export HISTTIMEFORMAT="[%F %T] "

bindkey -e # emacs keybindings

# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/Users/g.clark/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
# Aliases
alias ll="ls -lh"
alias g=git
alias tf13=/usr/local/opt/terraform@0.13/bin/terraform
alias tf=terraform
alias gitk="sed -i .bak 's/zoomed/normal/g' ~/.config/git/gitk && /usr/local/bin/gitk"

# So that M-d jumps back by /levels/in/dir/paths
autoload -U select-word-style
select-word-style bash

# Kill word fn from https://unix.stackexchange.com/questions/250690/how-to-configure-ctrlw-as-delete-word-in-zsh
# Ctrl-w - delete a full WORD (including colon, dot, comma, quotes...)
my-backward-kill-word () {
    # Add colon, comma, single/double quotes to word chars
#   local WORDCHARS='*?_-.[]~=/&;!#$%^(){}<>:,"'"'"
    local WORDCHARS='*?_-.[]~=&;!#$%^(){}<>:,"'"'"
    zle -f kill # Append to the kill ring on subsequent kills.
    zle backward-kill-word
}
zle -N my-backward-kill-word
bindkey '^w' my-backward-kill-word

# google-cloud-sdk auto-complete (from homebrew instructions)
# source "/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.zsh.inc"

# Custom prompt
source ~/.dotfiles/zsh/.prompt.zsh

# K8s
[[ /usr/local/bin/kubectl ]] && source <(kubectl completion zsh)
alias k=kubectl
