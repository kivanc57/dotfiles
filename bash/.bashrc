#
# ~/.bashrc
#

eval "$(starship init bash)"
# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1='[\u@\h \W]\$ '

export VISUAL=nvim
export EDITOR=nvim
export STARSHIP_CONFIG=~/.config/starship/starship.toml

fastfetch

. "$HOME/.local/bin/env"

if [ -f ~/.bash_aliases ]; then
. ~/.bash_aliases
fi

