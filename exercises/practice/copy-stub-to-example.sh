for e in ./**/*-test.elv; do
    :
    dir_name=$(echo "$e" | grep -Eo "^\./[^/]+" | grep -Eo "[^/]+$")
    echo "$dir_name"
    cp -n "$dir_name/$dir_name.elv" "$dir_name/.meta/example.elv"
done
