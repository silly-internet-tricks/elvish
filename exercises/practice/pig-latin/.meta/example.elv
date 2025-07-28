use re
use str

fn translate-word { |word|
  if (re:match "^([aeiou]|yt|xr)" $word) {
    put $word"ay"
  } else {
    put (echo (re:replace ^
        "^(qu|[^aeiou][^aeiouyq]*(qu?)?)" "" $word)(re:replace ^
        "^(qu|[^aeiou][^aeiouyq]*(qu?)?)(.*)" "$1" $word)"ay")
  }
}

fn translate { |phrase|
  var result = ""
  for word [(str:split " " $phrase)] {
    set result = $result" "(translate-word $word)
  }

  put $result[1..]
}

