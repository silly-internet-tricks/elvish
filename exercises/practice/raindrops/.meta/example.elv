fn mx { |n x|
  put (== 0 (% $n $x))
}

fn m3 { |n|
  put (mx $n 3)
}

fn m5 { |n|
  put (mx $n 5)
}

fn m7 { |n|
  put (mx $n 7)
}

fn raindrops { |n|
  if (or (m3 $n) (m5 $n) (m7 $n)) {
    var result = ""
    if (m3 $n) { set result = $result"Pling" }
    if (m5 $n) { set result = $result"Plang" }
    if (m7 $n) { set result = $result"Plong" }
    put $result
  } else {
    put $n
  }
}

