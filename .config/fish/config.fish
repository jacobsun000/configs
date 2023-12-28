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

# Homebrew
set -l brew_path /opt/homebrew/bin/brew
if test -x $brew_path
    eval ($brew_path shellenv)
end

if type -q zoxide
    zoxide init fish | source
end

if type -q thefuck
    thefuck --alias | source
end

# defult editor
set -gx EDITOR (which nvim)
set -gx VISUAL $EDITOR
set -gx GIT_EDITOR $EDITOR
set -gx SUDO_EDITOR $EDITOR
set -x MANPAGER "nvim +Man!" # Man pager

# Cmake compile commands
set -x CMAKE_EXPORT_COMPILE_COMMANDS 1

# vi-mode
# set fish_key_bindings fish_user_key_bindings

# bat
set MANPAGER "sh -c 'col -bx | bat -l man -p'"
set BAT_THEME "Monokai Extended Origin"

# lazygit
set XDG_CONFIG_HOME "$HOME/.config"

# Files & Directories
abbr mv "mv -iv"
abbr cp "cp -riv"
abbr mkdir "mkdir -vp"
abbr cat bat
# TODO: Switch from exa to eza
alias ls="exa --color=always --icons --group-directories-first"
alias la 'exa --color=always --icons --group-directories-first --all'
alias ll 'exa --color=always --icons --group-directories-first --long'
alias lla 'exa --color=always --icons --group-directories-first --all --long'
abbr l lla

# aliases
abbr cl clear
abbr nv nvim
abbr nf neofetch
abbr q exit
abbr mpv 'mpv --fullscreen'
abbr lg lazygit
alias ly 'lazygit -w ~ -g ~/.local/share/yadm/repo.git -ucd ~/.config/lazygit'
abbr grep rg
abbr copy wl-copy
abbr nvd 'neovide --multigrid'
abbr start_zoom 'XDG_CURRENT_DESKTOP=gnome zoom'
abbr chrome google-chrome-stable

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
