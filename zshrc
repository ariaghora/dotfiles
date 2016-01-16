# Author:
#   Aria Ghora Prabono <hello@ghora.net>
#

#init zpresto
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# git things
alias ga="git add"
alias gcm="git commit -m"
#alias gp="git push" 

# Common terminal usage
alias c="clear"
alias bye="exit"
alias ls="ls -p -G"
alias vim="mvim" 

if [ "$TMUX" = "" ]; then tmux; fi
