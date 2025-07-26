for e in ./**/*-test.elv; do
    :
    src_helper="./local-test-helper.elv"
    dir_name=$(echo "$e" | grep -Eo "^\./[^/]*" | grep -Eo "[^/]*$")
    sed "s/leap/$dir_name/g" < "$src_helper" > "./$dir_name/local-test-helper.elv"
done
