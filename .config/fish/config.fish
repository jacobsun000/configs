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

contains ~/.cargo/bin
or set PATH ~/.cargo/bin $PATH

contains ~/.local/share/gem/ruby/3.0.0/bin
or set PATH ~/.local/share/gem/ruby/3.0.0/bin $PATH

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

# lazygit
set XDG_CONFIG_HOME "$HOME/.config"

# aliases
alias cat=bat
alias ls=exa
alias la='exa -a'
alias lla='exa -la'
alias cl=clear
alias nv=nvim
alias vim=nvim
alias nf=neofetch
alias q=exit
alias mpv='mpv --fullscreen'
alias lg=lazygit
alias ly='lazygit -w ~ -g ~/.local/share/yadm/repo.git'
alias copy=wl-copy
alias nvd='neovide --multigrid'
alias start_zoom='XDG_CURRENT_DESKTOP=gnome zoom'
alias chrome='google-chrome-stable'

# fix kitty xterm
if test "$TERM" = xterm-kitty
    alias ssh="kitty +kitten ssh"
end

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
if test -f /home/jacob/miniconda3/bin/conda
    eval /home/jacob/miniconda3/bin/conda "shell.fish" hook $argv | source
else
    if test -f "/home/jacob/miniconda3/etc/fish/conf.d/conda.fish"
        ./home/jacob/miniconda3/etc/fish/conf.d/conda.fish
    else
        set -x PATH /home/jacob/miniconda3/bin $PATH
    end
end
# <<< conda initialize <<<
