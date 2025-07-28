use str

var letter-scores = [
  ""
  aeioulnrst
  dg
  bcmp
  fhvwy
  k
  ""
  ""
  jx
  ""
  qz
]

fn score-letter { |c|
  range (count $letter-scores) | each { |i|
    if (str:contains $letter-scores[$i] $c) {
      put $i
      return
    }
  }

  put (num 0)
}

fn score { |word|
  if (eq $word $nil) {
    put (num 0)
    return
  }

  var result = (num 0)
  for c (str:to-lower $word) {
    set result = (+ $result (score-letter $c))
  }

  put $result
}

