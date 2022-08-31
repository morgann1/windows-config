#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='exa -la --icons'
PS1='[\u@\h \W]\$ '
