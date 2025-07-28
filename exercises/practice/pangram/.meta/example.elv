use str
use re

fn is-pangram { |s|
  var abc = "abcdefghijklmnopqrstuvwxyz"
  var lower-s = (str:to-lower $s)
  for c $lower-s {
    set abc = (re:replace $c "" $abc)
  }

  put (eq $abc "")
}

