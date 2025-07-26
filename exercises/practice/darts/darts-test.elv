use ./darts

fn tests {
  put [
    [$darts:score~ "Missed target" [-9 9] 0]
    [$darts:score~ "On the outer circle" [0 10] 1]
    [$darts:score~ "On the middle circle" [-5 0] 5]
    [$darts:score~ "On the inner circle" [0 -1] 10]
    [$darts:score~ "Exactly on center" [0 0] 10]
    [$darts:score~ "Near the center" [-0.1 -0.1] 10]
    [$darts:score~ "Just within the inner circle" [0.7 0.7] 10]
    [$darts:score~ "Just outside the inner circle" [0.8 -0.8] 5]
    [$darts:score~ "Just within the middle circle" [-3.5 3.5] 5]
    [$darts:score~ "Just outside the middle circle" [-3.6 -3.6] 1]
    [$darts:score~ "Just within the outer circle" [-7.0 7.0] 1]
    [$darts:score~ "Just outside the outer circle" [7.1 -7.1] 0]
    [$darts:score~ "Asymmetric position between the inner and middle circles" [0.5 -4] 5]
  ]
}
