for file [**/.meta/config.json] {
  var j = (cat $file | from-json)
  use re
  var dir_name = (echo (re:find "^[^/]+" $file)[text])
  var solution = (echo $dir_name".elv")
  var test = (echo $dir_name"-test.elv")
  var example = (echo ".meta/example.elv")
  set j[files][solution] = [$solution]
  set j[files][test] = [$test]
  set j[files][example] = [$example]
  set j[authors] = [silly-internet-tricks]
  put $j | to-json > $file
}
