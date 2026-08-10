# navigation
alias n=nvim
alias c="cd ~/.config"
alias cn="cd ~/.config/nvim/lua/plugins"
alias d="cd ~/dotfiles"
alias r="cd ~/Workplace/Repos"

# coloring
alias grep='grep --color=auto'
alias diff='diff --color=auto'
alias ls='ls --color=auto'
alias ll='ls -lh --color=auto'
alias la='ls -lah --color=auto'
alias l.='ls -d .* --color=auto'

# safety
alias cp='cp -i'
alias mv='mv -i'

# improvement
alias which='(alias; declare -f) | /usr/bin/which --tty-only --read-alias --read-functions --show-tilde --show-dot'

# functions
rm() {
    trash-put "$@"
    echo "Trashed: $*"
}

wp() {
    cd "${HOME}/Workplace" &>/dev/null || return
}

ns() {
    cd "${HOME}/notes" &>/dev/null || return
}

toolbox() {
    cd "${HOME}/Workplace/Repos/devops-toolbox" &>/dev/null || return
}

utc() {
    date -u +"%Y-%m-%d-%H-%M-%S"
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

