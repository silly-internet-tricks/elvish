use ./clock

fn one-clock-test-helper { |hours minutes fn-name fn-arg|
  var c = (clock:at $hours $minutes)
  if (eq $fn-name $nil) {
    put ($c[tostring])
  } else {
    put (($c[$fn-name] $fn-arg)[tostring])
  }
}

fn two-clocks-test-helper {|h1 m1 h2 m2|
  var c1 = (clock:at $h1 $m1)
  var c2 = (clock:at $h2 $m2)
  put ($c1[equals] $c2)
}

# TODO: should assume 0 minutes if none are provided?

fn tests {
  [
    [$one-clock-test-helper~ "should create a clock on the hour" [8 0 $nil $nil] 08:00]
    [$one-clock-test-helper~ "should create a clock past the hour" [11 9 $nil $nil] 11:09]
    [$one-clock-test-helper~ "should treat midnight (24:00) as 00:00" [24 00 $nil $nil] 00:00]
    [$one-clock-test-helper~ "should roll over hours" [25 00 $nil $nil] 01:00]
    [$one-clock-test-helper~ "should continuously roll over hours" [100 00 $nil $nil] 04:00]
    [$one-clock-test-helper~ "should add sixty minutes to hours" [1 60 $nil $nil] 02:00]
    [$one-clock-test-helper~ "should roll over minutes to hours" [1 60 $nil $nil] 02:00]
    [$one-clock-test-helper~ "should continuously roll over minutes to hours" [0 1723 $nil $nil] 04:43]
    [$one-clock-test-helper~ "should roll over hours and minutes" [25 160 $nil $nil] 03:40]
    [$one-clock-test-helper~ "should continuously roll over hours and minutes" [201 3001 $nil $nil] 11:01]
    [$one-clock-test-helper~ "should roll over hours and minutes to exactly midnight" [72 8640 $nil $nil] 00:00]
    [$one-clock-test-helper~ "should convert negative hours" [-1 15 $nil $nil] 23:15]
    [$one-clock-test-helper~ "should roll over negative hours" [-25 0 $nil $nil] 23:00]
    [$one-clock-test-helper~ "should continuously roll over negative hours" [-91 0 $nil $nil] 05:00]
    [$one-clock-test-helper~ "should convert negative minutes" [1 -40 $nil $nil] 00:20]
    [$one-clock-test-helper~ "should roll over negative minutes" [1 -160 $nil $nil] 22:20]
    [$one-clock-test-helper~ "should continuously roll over negative minutes" [1 -4820 $nil $nil] 16:40]
    [$one-clock-test-helper~ "should roll over negative hours and minutes" [-25 -160 $nil $nil] 20:20]
    [$one-clock-test-helper~ "should continuously roll over negative hours and minutes" [-121 -5810 $nil $nil] 22:10]
    [$one-clock-test-helper~ "should add minutes" [10 0 plus 3] "10:03"]
    [$one-clock-test-helper~ "should add no minutes" [6 41 plus 0] "06:41"]
    [$one-clock-test-helper~ "should add minutes to the next hour" [0 45 plus 40] "01:25"]
    [$one-clock-test-helper~ "should add more than an hour" [10 00 plus 61] "11:01"]
    [$one-clock-test-helper~ "should add more than two hours with carry" [0 45 plus 160] "03:25"]
    [$one-clock-test-helper~ "should add across midnight" [23 59 plus 2] "00:01"]
    [$one-clock-test-helper~ "should add more than one day" [5 32 plus 1500] "06:32"]
    [$one-clock-test-helper~ "should add more than two days" [1 1 plus 3500] "11:21"]
    [$one-clock-test-helper~ "should subtract minutes" [10 3 minus 30] "09:33"]
    [$one-clock-test-helper~ "should subtract to the previous hour" [10 03 minus 70] "08:53"]
    [$one-clock-test-helper~ "should subtract across midnight" [0 3 minus 4] "23:59"]
    [$one-clock-test-helper~ "should subtract more than two hours" [0 0 minus 160] "21:20"]
    [$one-clock-test-helper~ "should subtract more than two hours with borrow" [6 15 minus 160] "03:35"]
    [$one-clock-test-helper~ "should subtract more than one day" [5 32 minus 1500] "04:32"]
    [$one-clock-test-helper~ "should subtract more than two days" [2 20 minus 3000] "00:20"]
    [$two-clocks-test-helper~ "should consider clocks with the same time to be equal" [15 37 15 37] $true]
    [$two-clocks-test-helper~ "should consider clocks a minute apart to be different" [15 36 15 37] $false]
    [$two-clocks-test-helper~ "should consider clocks an hour apart to be different" [14 37 15 37] $false]
    [$two-clocks-test-helper~ "should identify equal clocks with hour overflow" [10 37 34 37] $true]
    [$two-clocks-test-helper~ "should identify equal clocks with hour overflow by several days" [3 11 99 11] $true]
    [$two-clocks-test-helper~ "should identify equal clocks with negative hours" [22 40 2 40] $true]
    [$two-clocks-test-helper~ "should identify equal clocks with negative hours that wrap" [17 3 31 3] $true]
    [$two-clocks-test-helper~ "should identify equal clocks with negative hours that wrap several times" [13 49 83 49] $true]
    [$two-clocks-test-helper~ "should identify equal clocks with minute overflow" [0 1 0 1441] $true]
    [$two-clocks-test-helper~ "should identify equal clocks with minute overflow by several days" [2 2 2 4322] $true]
    [$two-clocks-test-helper~ "should identify equal clocks with negative minutes" [2 40 3 20] $true]
    [$two-clocks-test-helper~ "should identify equal clocks with negative minutes that wrap" [4 10 5 1490] $true]
    [$two-clocks-test-helper~ "should identify equal clocks with negative minutes that wrap several times" [6 15 6 4305] $true]
    [$two-clocks-test-helper~ "should identify equal clocks with negative hours and minutes" [7 32 12 268] $true]
    [$two-clocks-test-helper~ "should identify equal clocks with negative hours and minutes that wrap" [18 7 54 11513] $true]
  ]
}
