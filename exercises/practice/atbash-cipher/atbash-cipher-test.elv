use ./atbash-cipher

fn tests {
  put [
    [$atbash-cipher:encode~ "should encode single letter plaintexts" ["n"] "m"]
    [$atbash-cipher:encode~ "should encode single-chunk plaintexts" ["hello"] "svool"]
    [$atbash-cipher:encode~ "should encode multi-chunk plaintexts" ["mindblowingly"] "nrmwy oldrm tob"]
    [$atbash-cipher:encode~ "should encode all letters as lower-case" ["HeLLo"] "svool"]
    [$atbash-cipher:encode~ "should not encode whitespace" ["h e l l o"] "svool"]
    [$atbash-cipher:encode~ "should not encode punctuation" ["h,e,l,l,o"] "svool"]
    [$atbash-cipher:encode~ "should not encode numbers" ["he11o"] "sv11l"]
    [$atbash-cipher:encode~ "should encode all letters" ["The quick brown fox jumps over the lazy dog."] "gsvjf rxpyi ldmul cqfnk hlevi gsvoz abwlt"]
  ]
}