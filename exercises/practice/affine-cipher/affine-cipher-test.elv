use ./affine-cipher

fn affine-cipher-test-helper { |phrase key fun should-error|
  try {
    put ($fun phrase key)
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
    [$affine-cipher-test-helper~ "encode yes" ["yes" [&a=5 &b=7] $affine-cipher:encode~ $false] "xbt"]
    [$affine-cipher-test-helper~ "encode no" ["no" [&a=15 &b=18] $affine-cipher:encode~ $false] "fu"]
    [$affine-cipher-test-helper~ "encode omg" ["OMG" [&a=21 &b=3] $affine-cipher:encode~ $false] "lvz"]
    [$affine-cipher-test-helper~ "encode o m g" ["O M G" [&a=25 &b=47] $affine-cipher:encode~ $false] "hjp"]
    [$affine-cipher-test-helper~ "encode mindblowingly" ["mindblowingly" [&a=11 &b=15] $affine-cipher:encode~ $false] "rzcwa gnxzc dgt"]
    [$affine-cipher-test-helper~ "encode numbers" ["Testing,1 2 3, testing." [&a=3 &b=4] $affine-cipher:encode~ $false] "jqgjc rw123 jqgjc rw"]
    [$affine-cipher-test-helper~ "encode deep thought" ["Truth is fiction." [&a=5 &b=17] $affine-cipher:encode~ $false] "iynia fdqfb ifje"]
    [$affine-cipher-test-helper~ "encode all the letters" ["The quick brown fox jumps over the lazy dog." [&a=17 &b=33] $affine-cipher:encode~ $false] "swxtj npvyk lruol iejdc blaxk swxmh qzglf"]
    [$affine-cipher-test-helper~ "encode with a not coprime to m" ["This is a test." [&a=6 &b=17] $affine-cipher:encode~ $true] "a and m must be coprime"]
    [$affine-cipher-test-helper~ "decode exercism" ["tytgn fjr" [&a=3 &b=7] $affine-cipher:decode~ $false] "exercism"]
    [$affine-cipher-test-helper~ "decode a sentence" ["qdwju nqcro muwhn odqun oppmd aunwd o" [&a=19 &b=16] $affine-cipher:decode~ $false] "anobstacleisoftenasteppingstone"]
    [$affine-cipher-test-helper~ "decode numbers" ["odpoz ub123 odpoz ub" [&a=25 &b=7] $affine-cipher:decode~ $false] "testing123testing"]
    [$affine-cipher-test-helper~ "decode all the letters" ["swxtj npvyk lruol iejdc blaxk swxmh qzglf" [&a=17 &b=33] $affine-cipher:decode~ $false] "thequickbrownfoxjumpsoverthelazydog"]
    [$affine-cipher-test-helper~ "decode with no spaces in input" ["swxtjnpvyklruoliejdcblaxkswxmhqzglf" [&a=17 &b=33] $affine-cipher:decode~ $false] "thequickbrownfoxjumpsoverthelazydog"]
    [$affine-cipher-test-helper~ "decode with too many spaces" ["vszzm    cly   yd cg    qdp" [&a=15 &b=16] $affine-cipher:decode~ $false] "jollygreengiant"]
    [$affine-cipher-test-helper~ "decode with a not coprime to m" ["Test" [&a=13 &b=5] $affine-cipher:decode~ $true] "a and m must be coprime"]
  ]
}