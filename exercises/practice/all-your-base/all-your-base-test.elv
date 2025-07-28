use ./all-your-base

fn all-your-base-test-helper { |from-digits from-base to-base should-error|
  try {
    var converter = (all-your-base:convert from-digits from-base)
    put ($converter[to] to-base)
  } catch e {
    if $should-error {
      put $e[reason]
    } else {
      fail $e
    }
  }
}

fn tests {
  put [
    [$all-your-base-test-helper~ "should convert a single binary digit to a single decimal digit" [[1] 2 10 $false] [1]]
    [$all-your-base-test-helper~ "should convert multiple binary digits to a single decimal digit" [[1 0 1] 2 10 $false] [5]]
    [$all-your-base-test-helper~ "should convert a single decimal digit to binary" [[5] 10 2 $false] [1 0 1]]
    [$all-your-base-test-helper~ "should convert binary to decimal" [[4 2] 10 2 $false] [1 0 1 0 1 0]]
    [$all-your-base-test-helper~ "should convert decimal to binary" [[1 0 1 0 1 0] 2 10 $false] [4 2]]
    [$all-your-base-test-helper~ "should convert trinary to hexadecimal" [[1 1 2 0] 3 16 $false] [2 10]]
    [$all-your-base-test-helper~ "should convert hexadecimal to trinary" [[2 10] 16 3 $false] [1 1 2 0]]
    [$all-your-base-test-helper~ "should convert between large bases" [[3 46 60] 97 73 $false] [6 10 45]]
    [$all-your-base-test-helper~ "should convert no digits to 0" [[] 2 10 $false] [0]]
    [$all-your-base-test-helper~ "should convert no digits to 0" [[] 10 2 $false] [0]]
    [$all-your-base-test-helper~ "should convert multiple 0 digits to 0" [[0 0 0] 10 2 $false] [0]]
    [$all-your-base-test-helper~ "should ignore leading zeros" [[0 6 0] 7 10 $false] [4 2]]
    [$all-your-base-test-helper~ "should not allow negative digits" [[1 -1 1 0 1 0] 2 10 $true] "negative digits are not allowed"]
    [$all-your-base-test-helper~ "should not allow digits that are out of range" [[1 2 1 0 1 0] 2 10 $true] "digit out of range"]
    [$all-your-base-test-helper~ "should not allow an input base below zero" [[1 0 1 0 1 0] -1 10 $true] "invalid input base"]
    [$all-your-base-test-helper~ "should not allow an input base of zero" [[1 0 1 0 1 0] 0 10 $true] "invalid input base"]
    [$all-your-base-test-helper~ "should not allow an input base of one" [[1 0 1 0 1 0] 1 10 $true] "invalid input base"]
    [$all-your-base-test-helper~ "should not allow an output base below zero" [[1 0 1 0 1 0] 2 -1 $true] "invalid output base"]
    [$all-your-base-test-helper~ "should not allow an output base of zero" [[1 0 1 0 1 0] 2 0 $true] "invalid output base"]
    [$all-your-base-test-helper~ "should not allow an output base of one" [[1 0 1 0 1 0] 2 1 $true] "invalid output base"]
  ]
}
