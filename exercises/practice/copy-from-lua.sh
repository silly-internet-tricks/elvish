for e in ../../../lua/exercises/practice/**/*_spec.lua; do
    :
    dir_name=$(echo "$e" | grep -Eo "practice/[^/]*" | grep -Eo "[^/]*$")
    cp "$e" "./$dir_name/$dir_name.test.elv"
done
