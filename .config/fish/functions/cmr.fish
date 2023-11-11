function cmr
    # Default build directory
    set build_dir build

    if not test -d $build_dir
        cmake -B $build_dir
    end

    # Build option
    set build_option -j4
    cmake --build $build_dir $build_option

    # Find an executable file and run it with optional arguments
    # This script assumes the first executable found is the target
    for file in $build_dir/bin/*
        if test -x $file; and not test -d $file
            ./$file $argv
            break
        end
    end
end
