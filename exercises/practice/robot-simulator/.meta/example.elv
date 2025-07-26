fn index-of { |l e|
  for i [(range (count $l))] {
    if (eq $e $l[$i]) {
      put $i
      return
    }
  }
}

var advance-headings = [
  &north=[0 1]
  &south=[0 -1]
  &east=[1 0]
  &west=[-1 0]
]

var turn-headings = [north east south west]

fn robot { |status|
  # the movement is a string made of any of three valid characters
  # A for advance
  # R for turn right
  # L for turn left
  var heading-index = (index-of $turn-headings $status[heading])
  fn move { |movement|
    for c $movement {
      if (==s $c "A") {
        set status[x] = (echo (+ $status[x] $advance-headings[$status[heading]][0]))
        set status[y] = (echo (+ $status[y] $advance-headings[$status[heading]][1]))
      } elif (==s $c "R") {
        set heading-index = (+ $heading-index 1)
        set heading-index = (% $heading-index 4)
        set status[heading] = $turn-headings[$heading-index]
      } elif (==s $c "L") {
        set heading-index = (- $heading-index 1)
        set heading-index = (% $heading-index 4)
        set status[heading] = $turn-headings[$heading-index]
      } else {
        fail "invalid movement"
      }
    }
  }

  fn get-status {
    put $status
  }

  put [&get-status=$get-status~ &move=$move~]
}

