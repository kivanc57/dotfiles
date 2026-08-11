eval "$(starship init bash)"
# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1='[\u@\h \W]\$ '

fastfetch

export VISUAL=nvim
export EDITOR=nvim
export PATH="${HOME}/.local/bin:${PATH}"

sources=(".bash_aliases" ".bash_work")
for src in "${sources[@]}"
do
    src_path="${HOME}/${src}"  
    [ -f "${src_path}" ] && source "${src_path}"
done

