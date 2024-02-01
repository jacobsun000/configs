function cptd
    for file in $argv
        if test -e $file
            cp $file ~/Downloads/
        else
            echo "File or directory '$file' not found."
        end
    end
end
