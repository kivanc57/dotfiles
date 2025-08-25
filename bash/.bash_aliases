#
# ./bash_aliases
#

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias n=nvim
alias c="cd $HOME/.config"

function rm() { trash-put "$@"; echo "Trashed: $*"; }

