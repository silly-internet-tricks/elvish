for e in ./exercises/practice/**/*-test.elv; do
    :
    dir_name=$(echo "$e" | grep -Eo "practice/[^/]+" | grep -Eo "[^/]+$")
    echo "{ \"slug\": \"$dir_name\" }" >> ./config.json
done
