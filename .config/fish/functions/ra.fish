function ra
    set ID (math $fish_pid)
    set OUTPUT_DIR /tmp/$USER
    set OUTPUT_FILE "$OUTPUT_DIR/joshuto-cwd-$ID"

    mkdir -p $OUTPUT_DIR
    env joshuto --output-file "$OUTPUT_FILE" $argv
    set exit_code $status
    switch $exit_code
        case 0
            # regular exit
        case 101
            # output contains current directory
            set JOSHUTO_CWD (cat "$OUTPUT_FILE")
            cd $JOSHUTO_CWD
        case 102
            # output selected files
        case '*'
            echo "Exit code: $exit_code"
    end
end
