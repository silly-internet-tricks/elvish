# This will run the provided example tests
# (which are supposed to all pass 😁)

# Note on the local-test-helpers:
#   The function inputs are always in a list
for e in $(cat list-of-completed-exercises); do
    :
    dir_stem="./exercises/practice"
    stub_path="$dir_stem/$e/$e.elv"
    example_path="$dir_stem/$e/.meta/example.elv"
    mv "$stub_path" "$stub_path.tmp"
    cp "$example_path" "$stub_path"
    printf "\n******** running test %s ********\n" "$e"
    elvish "$dir_stem/$e/local-test-helper.elv"
    mv "$stub_path.tmp" "$stub_path"
done
