if status is-interactive
    # Commands to run in interactive sessions can go here
end

zoxide init fish | source
thefuck --alias | source

# defult editor
set -x EDITOR nvim
set -x VISUAL $EDITOR
set -x GIT_EDITOR $EDITOR
set -x CMAKE_EXPORT_COMPILE_COMMANDS 1

# vi-mode
# set fish_key_bindings fish_user_key_bindings

# bat
set MANPAGER "sh -c 'col -bx | bat -l man -p'"
set BAT_THEME "Monokai Extended Origin"

# aliases
alias cat=bat
alias ls=exa
alias la='exa -a'
alias lla='exa -la'
alias cl=clear
alias nv=nvim
alias vim=nvim
alias ra='joshuto --change-directory'
alias nf=neofetch
alias q=exit
alias mpv='mpv --fullscreen'
alias lg=lazygit
alias ly='lazygit -ucd ~/.local/share/yadm/lazygit -w ~ -g ~/.local/share/yadm/repo.git'
alias copy=wl-copy
alias nvd='neovide --multigrid'
alias start_zoom='XDG_CURRENT_DESKTOP=gnome zoom'

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
if test -f /home/jacob/miniconda3/bin/conda
    eval /home/jacob/miniconda3/bin/conda "shell.fish" hook $argv | source
else
    if test -f "/home/jacob/miniconda3/etc/fish/conf.d/conda.fish"
        . "/home/jacob/miniconda3/etc/fish/conf.d/conda.fish"
    else
        set -x PATH /home/jacob/miniconda3/bin $PATH
    end
end
# <<< conda initialize <<<
