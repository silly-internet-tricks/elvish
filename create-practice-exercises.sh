for e in ./exercises/practice/**/*-test.elv; do
    :
    dir_name=$(echo "$e" | grep -Eo "practice/[^/]+" | grep -Eo "[^/]+$")
    ./bin/configlet create --practice-exercise "$dir_name"
done
