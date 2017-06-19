#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '
alias wifi-menu='sudo wifi-menu'
alias emacs='emacs -nw'

export TERMINAL=termite
#export TERMINAL=gnome-terminal

export EDITOR=vim
export VISUAL=vim
