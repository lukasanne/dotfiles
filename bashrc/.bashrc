#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias cs='~/coding_style/lambdananas'
PS1='[\u@\h \W]\$ '

eval "$(starship init bash)"

[ -f "/home/lilo/.ghcup/env" ] && . "/home/lilo/.ghcup/env" # ghcup-env