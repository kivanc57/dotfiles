#
# ~/.bashrc
#

eval "$(starship init bash)"
# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1='[\u@\h \W]\$ '

export VISUAL=nvim
export EDITOR=nvim
export MANPAGER="sh -c 'bat -l man -p'"
fastfetch

. "$HOME/.local/bin/env"

if [ -f ~/.bash_aliases ]; then
. ~/.bash_aliases
fi

export PATH="$HOME/.local/bin:$PATH"


# yazi setup
# - 'y' alias
# - cd to last dir
function y() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
	command yazi "$@" --cwd-file="$tmp"
	IFS= read -r -d '' cwd < "$tmp"
	[ "$cwd" != "$PWD" ] && [ -d "$cwd" ] && builtin cd -- "$cwd"
	rm -f -- "$tmp"
}

