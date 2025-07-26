fn is-multiple { |number divisor|
  put (eq (% $number $divisor) (num 0))
}

fn leap-year { |number|
  put (or (is-multiple $number 400) (and (is-multiple $number 4) (not (is-multiple $number 100))))
}

