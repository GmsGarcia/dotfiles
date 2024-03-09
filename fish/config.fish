set fish_greeting ""


command -qv nvim && alias vim nvim

set -gx EDITOR nvim

set -gx PATH bin $PATH
set -gx PATH ~/bin $PATH
set -gx PATH ~/.local/bin $PATH
set -gx PATH ~/go/bin $PATH

set -Ux nvm_default_version v16

set -x ZELLIJ_AUTO_EXIT true

# fzf colorscheme
set -Ux FZF_DEFAULT_OPTS "$FZF_NON_COLOR_OPTS"\
" --color=bg+:-1,bg:-1,spinner:#C01C28,hl:#E9AD0C"\
" --color=fg:#EBEBEB,header:#268bd2,info:#E9AD0C,pointer:#2A7BDE"\
" --color=marker:#2A7BDE,fg+:#EBEBEB,prompt:#E9AD0C,hl+:#C01C28"

set -x GPG_TTY (tty)

if status is-interactive
# Commands to run in interactive sessions can go here
    # aliases
    alias g git

    alias ls "ls -p -G"
    alias la "ls -a"
    alias ll "ls -lA"
    alias lla "ll -A"

    alias cz chezmoi

    if type -q eza
        alias ls "eza --icons"
        alias lsa "ls -a"
        alias ll "eza -l -g --icons"
        alias lla "ll -a"
    end
    fish_add_path $HOME/.cargo/bin
    fish_add_path /usr/local/go/bin
    if type -q oh-my-posh # check if oh-my-posh exist
        oh-my-posh init fish --config ~/.config/oh-my-posh/gmsgarcia.omp.json | source
    end
end
