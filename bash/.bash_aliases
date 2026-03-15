#
# ./bash_aliases
#

alias n=nvim
alias c='cd ~/.config'
alias cn='cd ~/.config/nvim/lua/plugins'
alias d='cd ~/dotfiles'
alias r='cd ~/Workplace/Repos'
alias t='setsid nautilus ~/Thesis >/dev/null 2>&1 < /dev/null &'

function rm() { trash-put '$@'; echo 'Trashed: $*'; }

