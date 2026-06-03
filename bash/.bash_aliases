# shortcuts
alias n=nvim
alias c="cd ~/.config"
alias cn="cd ~/.config/nvim/lua/plugins"
alias d="cd ~/dotfiles"
alias r="cd ~/Workplace/Repos"

# coloring
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias diff='diff --color=auto'

# wrappers
rm() {
    trash-put "$@"
    echo "Trashed: $*"
}

wp() {
    setsid -f nautilus "${HOME}/Workplace" >/dev/null 2>&1 || return
}

ns() {
    cd "${HOME}/notes/" >/dev/null 2>&1 || return
}

# search like a pro
# https://www.howtogeek.com/the-alternative-cli-tools-i-immediately-install-on-linux/
s() {
  fzf --ansi --disabled \
      --bind "change:reload:command \
          rg --line-number --no-heading --color=always --smart-case {q} \
          || :" \
      --bind "enter:execute(${EDITOR:-nano} +{2} {1})" \
      --delimiter ":" \
      --preview "command bat -p --color=always {1} --highlight-line {2}" \
      --preview-window 'up:80%,border-bottom,~3,+{2}+3/3'
}

# yazi setup
# cd to last dir
y() {
    local tmp cwd
    tmp="$(mktemp -t "yazi-cwd.XXXXXX")" || return
    command yazi "$@" --cwd-file="$tmp"
    cwd="$(cat "$tmp")"
    [ "$cwd" != "$PWD" ] && [ -d "$cwd" ] && builtin cd -- "$cwd" || exit
    command rm -f -- "$tmp"
}

