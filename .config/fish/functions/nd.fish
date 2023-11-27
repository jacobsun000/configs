function nd
    # get current workspace id
    set current_workspace (hyprctl activeworkspace | string match -r "workspace ID \d+" | string replace -r "workspace ID " '')

    # make sure current window is not neovide
    set window_class (hyprctl activewindow | string match -r "class: .+" | string replace -r "class: " '')

    if test "$window_class" = neovide
        echo "Active window is neovide"
        exit 1
    end


    # get current window pid
    set term_pid (hyprctl activewindow | string match -r "pid: \d+" | string replace -r "pid: " '')

    # hide terminal
    hyprctl dispatch movetoworkspacesilent 0,pid:$term_pid >/dev/null
    neovide $argv

    # get neovide pid
    sleep 1
    set neovide_pid (hyprctl activewindow | string match -r "pid: \d+" | string replace -r "pid: " '')

    # wait for neovide to exit
    while ps -p $neovide_pid >/dev/null
        sleep 0.1
    end

    # bring back terminal
    hyprctl dispatch movetoworkspacesilent $current_workspace,pid:$term_pid >/dev/null
end
