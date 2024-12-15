if status is-interactive
    # Commands to run in interactive sessions can go here
end


abbr mv "mv -iv"
abbr cp "cp -riv"
abbr mkdir "mkdir -vp"
abbr cat bat
abbr cl clear
abbr nv nvim
abbr ze zellij -l welcome
abbr nf neofetch
abbr q exit
abbr lg lazygit
abbr ldocker lazydocker
abbr nf neofetch
abbr q exit
abbr grep rg
abbr copy wl-copy
alias ly 'lazygit -w ~ -g ~/.local/share/yadm/repo.git -ucd ~/.config/lazygit'
alias nswitch="sudo nixos-rebuild switch --flake /etc/nixos#nixos"
alias nswitchu="sudo nix flake update --flake /etc/nixos; and sudo nixos-rebuild switch --flake /etc/nixos#nixos --upgrade"
alias nau="sudo nix-channel --add https://nixos.org/channels/nixos-unstable nixos"
alias nsgc="sudo nix-store --gc"
alias ngc="sudo nix-collect-garbage -d"
alias ngc7="sudo nix-collect-garbage --delete-older-than 7d"
alias ngc14="sudo nix-collect-garbage --delete-older-than 14d"
#alias ls="exa --color=always --icons --group-directories-first"
#alias la 'exa --color=always --icons --group-directories-first --all'
#alias ll 'exa --color=always --icons --group-directories-first --long'
#alias lla 'exa --color=always --icons --group-directories-first --all --long'
#abbr l lla

# defult editor
set -gx EDITOR (which nvim)
set -gx VISUAL $EDITOR
set -gx GIT_EDITOR $EDITOR
set -gx SUDO_EDITOR $EDITOR
set -gx MANPAGER 'nvim +Man!'
set -gx MANWIDTH 999

# volume & brightness step
set -gx VOLUME_STEP 5
set -gx BRIGHTNESS_STEP 5

# Cmake
set -x CMAKE_EXPORT_COMPILE_COMMANDS 1

# lazygit
set XDG_CONFIG_HOME "$HOME/.config"

# theme
set BAT_THEME "Monokai Extended Origin"


#set -gx PATH $HOME/.cargo/bin $PATH

set fish_vi_force_cursor
set fish_cursor_default block
set fish_cursor_insert line blink
set fish_cursor_visual underscore blink

fish_default_key_bindings

set -Ux FZF_DEFAULT_OPTS "\
--color=bg+:#363a4f,bg:#24273a,spinner:#f4dbd6,hl:#ed8796 \
--color=fg:#cad3f5,header:#ed8796,info:#c6a0f6,pointer:#f4dbd6 \
--color=marker:#f4dbd6,fg+:#cad3f5,prompt:#c6a0f6,hl+:#ed8796"

#starship init fish | source
zoxide init fish | source
direnv hook fish | source
