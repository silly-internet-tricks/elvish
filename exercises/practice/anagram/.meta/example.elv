use str

fn append { |l e|
  put [$@l $e]
}

fn filter { |l p|
  var filtered = []
  for e $l {
    if ($p $e) {
      set filtered = (append $filtered $e)
    }
  }

  put $filtered
}

fn is-anagram { |one-word another-word|
  set one-word = (str:to-lower $one-word)
  set another-word = (str:to-lower $another-word)
  if (==s $one-word $another-word) {
    put $false
    return
  }

  if (not (== (count $one-word) (count $another-word))) {
    put $false
    return
  }

  var @chars = $@one-word
  var char-counts = [&]
  for c $chars {
    if (has-key $char-counts $c) {
      set char-counts[$c] = (+ $char-counts[$c] 1)
    } else {
      set char-counts[$c] = (num 1)
    }
  }

  set @chars = $@another-word
  for c $chars {
    if (has-key $char-counts $c) {
      set char-counts[$c] = (- $char-counts[$c] 1)
      if (< $char-counts[$c] 0) {
        put $false
        return
      }
    } else {
      put $false
      return
    }
  }

  for c [(keys $char-counts)] {
    if (!= $char-counts[$c] 0) {
      put $false
      return
    }
  }

  put $true
}

fn new { |this-word|
  # Your constructor here
  fn is-anagram-of-this { |other-word|
    put (is-anagram $this-word $other-word)
  }

  fn match { |other-words|
    put (filter $other-words $is-anagram-of-this~)
  }

  put [&match=$match~]
}

