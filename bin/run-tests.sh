# This will run the provided example tests
# (which are supposed to all pass 😁)
for e in ./exercises/practice/**/.meta/example.elv; do
    :
    dir_name="$(echo "$e" | grep -Eo "practice/[^/]+" | grep -Eo "[^/]+$")"
    dir_stem="./exercises/practice"
    stub_path="$dir_stem/$dir_name/$dir_name.elv"
    mv "$stub_path" "$stub_path.tmp"
    cp "$e" "$stub_path"
    elvish "$dir_stem/$dir_name/local-test-helper.elv"
    mv "$stub_path.tmp" "$stub_path"
done
