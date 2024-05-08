#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '
[ -r /home/jianjia/.byobu/prompt ] && . /home/jianjia/.byobu/prompt   #byobu-prompt#
