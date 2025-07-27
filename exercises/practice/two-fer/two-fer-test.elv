use ./two-fer

fn two-fer-test-helper { |name|
  if (eq $name $nil) {
    put (two-fer:two-fer)
  } else {
    put (two-fer:two-fer $name)
  }
}

fn tests {
  put [
    [$two-fer-test-helper~ "no name given" [$nil] "One for you, one for me."]
    [$two-fer-test-helper~ "a name given" ["Alice"] "One for Alice, one for me."]
    [$two-fer-test-helper~ "another name given" ["Bob"] "One for Bob, one for me."]
  ]
}
