function r
    # Default to running run.sh if none of the above project types are found
    if test -f run.sh
        ./run.sh $argv
        return
    end

    # Check for a CMake project
    if test -f CMakeLists.txt
        cmr $argv
        return
    end

    # Check for a Cargo (Rust) project
    if test -f Cargo.toml
        cargo run --release $argv
        return
    end

    # Check for a Makefile project
    if test -f Makefile
        if set -q argv[1]
            make $argv
        else
            make all
        end
        return
    end

    # If none of the above conditions are met
    echo "No recognizable project type found."
end
