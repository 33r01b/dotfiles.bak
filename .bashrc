#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

#PS1='[\u@\h \W]\$ '
#PS1="\W \$ "

force_color_prompt=yes

source /usr/lib/git-core/git-sh-prompt # Show git branch name at command prompt
export GIT_PS1_SHOWCOLORHINTS=true # Option for git-prompt.sh to show branch name in color

# Terminal Prompt:
# Include git branch, use PROMPT_COMMAND (not PS1) to get color output (see git-prompt.sh for more)
export PROMPT_COMMAND='__git_ps1 "| \w" "\n└─ "' # Git branch (relies on git-prompt.sh)

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi
# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias ls='ls --color=auto'
alias wifi-menu='sudo wifi-menu'
alias emacs='emacs -nw'
alias svim='sudo -E vim'
alias vtodo='vim todo_$(date +%F).txt'
alias update='sudo apt update && apt list --upgradable'
alias ssh='ssh -o "ServerAliveInterval 60"'

# include .bashrc if it exists
if [ -f $HOME/.bashrc_aliases ]; then
    . $HOME/.bashrc_aliases
fi

if [ -f ~/.bash_functions ]; then
    . ~/.bash_functions
fi

[ -f ~/.fzf.bash ] && source ~/.fzf.bash

export TERMINAL=konsole
#export TERMINAL=termite
#export TERMINAL=gnome-terminal

export EDITOR=vim
export VISUAL=vim

