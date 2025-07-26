use ./robot-simulator

fn test-helper-function { |config movement|
  var robot = (robot-simulator:robot $config)
  if (not-eq $movement $nil) {
    try {
      $robot[move] $movement
      put ($robot[get-status])
    } catch {
      put $nil
    }
  } else {
    put ($robot[get-status])
  }
}

fn tests {
  put [
    [$test-helper-function~ "should move forward when an A command is given" [[ &x=5 &y=10 &heading="north" ] "A" ] [&x=5 &y=11 &heading="north"]]
    [$test-helper-function~ "should change heading clockwise when an R command is given" [[ &x=5 &y=10 &heading="north" ] "R" ] [&x=5 &y=10 &heading="east"]]
    [$test-helper-function~ "should change heading counter-clockwise when an L command is given" [[ &x=5 &y=10 &heading="north" ] "L" ] [&x=5 &y=10 &heading="west"]]
    [$test-helper-function~ "should be able to chain commands" [[ &x=5 &y=10 &heading="north" ] "LAR" ] [&x=4 &y=10 &heading="north"]]
    [$test-helper-function~ "should be able to turn all the way around by turning clockwise" [[ &x=7 &y=-10 &heading="north" ] "RRRR" ] [&x=7 &y=-10 &heading="north"]]
    [$test-helper-function~ "should be able to turn all the way around by turning counter-clockwise" [[ &x=5 &y=10 &heading="south" ] "LLLL" ] [&x=5 &y=10 &heading="south"]]
    [$test-helper-function~ "should be able to advance in all directions" [[ &x=5 &y=10 &heading="north" ] "ARAARAARAR" ] [&x=6 &y=9 &heading="north"]]
    [$test-helper-function~ "should make the current x, y, and heading available" [[ &x=5 &y=10 &heading="north" ] $nil ] [&x=5 &y=10 &heading="north"]]
    # NOTE: I am not sure whether the robot should move or not when a partially invalid movement command is used
    # I would say probably not supposed to move, but I just don't have a test for that right now
    [$test-helper-function~ "should raise an error when an invalid command is used" [[ &x=5 &y=10 &heading="north" ] "ARALZR" ] $nil ]
  ]
}
