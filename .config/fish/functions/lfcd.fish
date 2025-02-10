function lfcd --wraps="lf" --description="lf - Terminal file manager (changing directory on exit)"
    set -l last_dir (command lf -print-last-dir $argv)

    # Ensure last_dir is not empty before attempting to change directory
    if test -n "$last_dir" && test -d "$last_dir"
        cd "$last_dir"
    end
end
