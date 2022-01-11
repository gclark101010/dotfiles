# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=100000
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/Users/g.clark/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
# Custom prompt
source ~/.dotfiles/zsh/.prompt.zsh

# Aliases
alias g=git
alias tf13=/usr/local/opt/terraform@0.13/bin/terraform
alias tf=terraform
alias gitk="sed -i .bak 's/zoomed/normal/g' ~/.config/git/gitk && /usr/local/bin/gitk"
