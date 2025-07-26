for e in ../../../lua/exercises/practice/**/*_spec.lua; do
    :
    dir_name=$(echo "$e" | grep -Eo "practice/[^/]*" | grep -Eo "[^/]*$")
    cp "../../../lua/exercises/practice/$dir_name/$dir_name.lua" "./$dir_name/$dir_name.elv"
done
