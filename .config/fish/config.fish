if status is-interactive
    # Commands to run in interactive sessions can go here
end


# PATH
contains /usr/local/bin $PATH
or set PATH /usr/local/bin $PATH

contains /opt/homebrew/bin
or set PATH /opt/homebrew/bin $PATH

contains /opt/homebrew/opt/openjdk/bin
or set PATH /opt/homebrew/opt/openjdk/bin $PATH

contains /Users/jacob/.cargo/bin
or set PATH /Users/jacob/.cargo/bin $PATH

# defult editor
set -x EDITOR nvim
set -x VISUAL $EDITOR
set -x GIT_EDITOR $EDITOR

# vi-mode
# set fish_key_bindings fish_user_key_bindings

# bat
set MANPAGER "sh -c 'col -bx | bat -l man -p'"
set BAT_THEME "Monokai Extended Origin"

# aliases
alias ls=exa
alias la='exa -a'
alias nv=nvim
alias nf=neofetch
alias pf=pfetch
alias ra='joshuto --change-directory'
alias q=exit
alias cl=clear
alias mpv='mpv --fullscreen'
alias lg=lazygit
