function mvtd
    for file in $argv
        if test -e $file
            mv $file ~/Downloads/
        else
            echo "File or directory '$file' not fould."
        end
    end
end
