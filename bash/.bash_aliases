#
# ./bash_aliases
#

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias n=nvim
alias c="cd ~/.config"
alias cn="cd ~/.config/nvim/lua/plugins"
alias d="cd ~/dotfiles"

function rm() { trash-put "$@"; echo "Trashed: $*"; }

