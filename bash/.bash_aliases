alias n=nvim
alias c="cd ~/.config"
alias cn="cd ~/.config/nvim/lua/plugins"
alias d="cd ~/dotfiles"
alias r="cd ~/Workplace/Repos"

rm() {
    trash-put "$@"
    echo "Trashed: $*"
}

t() {
    setsid -f nautilus "$HOME/Thesis" >/dev/null 2>&1
}

# yazi setup
# - 'y' alias
# - cd to last dir
y() {
	local tmp
    tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
	command yazi "$@" --cwd-file="$tmp"
	IFS= read -r -d '' cwd < "$tmp"
	[ "$cwd" != "$PWD" ] && [ -d "$cwd" ] && builtin cd -- "$cwd"
	command rm -f -- "$tmp"
}

