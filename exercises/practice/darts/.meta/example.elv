fn score { |x y|
  var distance-squared = (+ (* $x $x) (* $y $y))
  if (> $distance-squared 100) {
    put 0
  } elif (> $distance-squared 25) {
    put 1
  } elif (> $distance-squared 1) {
    put 5
  } else {
    put 10
  }
}

