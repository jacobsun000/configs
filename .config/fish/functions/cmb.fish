function cmb
    # Build directory
    set build_dir build

    if set -q argv[1]
        set build_dir $argv[1]
    end

    cmake -B $build_dir

    # Build option
    set build_option -j4

    # Build the project
    if set -q argv[2]
        cmake --build $build_dir $argv[2..-1]
    else
        cmake --build $build_dir $build_option
    end
end
