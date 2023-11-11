function bri
    if count $argv >/dev/null
        ~/.config/waybar/bin/brightness.sh $argv
    else
        echo "Usage: bri <monitor> <brightness>"
    end
end
