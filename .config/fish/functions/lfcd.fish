function lfcd --wraps="lf" --description="lf - Terminal file manager (changing directory on exit)"
    set -l tmp (mktemp)
    command lf -last-dir-path "$tmp" $argv

    # Read the last directory from the temp file
    set -l last_dir (cat "$tmp")
    rm -f "$tmp"

    # Ensure last_dir is valid before changing directory
    if test -n "$last_dir" && test -d "$last_dir"
        cd "$last_dir"
    end

    # Simulate an Enter keypress
    commandline -f execute
end

