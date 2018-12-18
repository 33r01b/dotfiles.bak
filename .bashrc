#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1='[\u@\h \W]\$ '
#export PROMPT_COMMAND='__git_ps1 "| \w" "\n└─ "' # Git branch (relies on git-prompt.sh)

source ~/.exports
source ~/.aliases
source ~/.functions
source /usr/share/fzf/key-bindings.bash
source /usr/share/fzf/completion.bash
