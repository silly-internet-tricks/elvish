fn two-fer { |@names|
  if (== (count $names) 0) {
    put "One for you, one for me."
  } else {
    put "One for "$names[0]", one for me."
  }
}

