use str

use ./pangram

fn tests {
  put [
    [$pangram:is-pangram~ "should not consider the empty string to be a pangram" [''] $false]
    [$pangram:is-pangram~ "should not consider a sentence with 26 of the same letter to be a pangram" [(str:repeat a 26)] $false]
    [$pangram:is-pangram~ "should consider the alphabet to be a pangram" ['abcdefghijklmnopqrstuvwxyz'] $true]
    [$pangram:is-pangram~ "should consider a sentence with one of each letter to be a pangram" ['the quick brown fox jumps over the lazy dog'] $true]
    [$pangram:is-pangram~ "should allow mixed case in pangrams" ['The Quick Brown Fox Jumps Over The Lazy Dog'] $true]
    [$pangram:is-pangram~ "should allow punctuation in pangrams" ['the.quick.brown.fox.jumps.over.the.lazy.dog'] $true]
    [$pangram:is-pangram~ "should allow underscores in pangrams" ['the_quick_brown_fox_jumps_over_the_lazy.dog'] $true]
    [$pangram:is-pangram~ "should allow numbers in pangrams" ['the 1 quick brown fox jumps over the 2 lazy dogs'] $true]
    [$pangram:is-pangram~ "should not allow letters in pangrams to be replaced by numbers" ['7h3 qu1ck brown fox jumps ov3r 7h3 lazy dog'] $false]
    [$pangram:is-pangram~ "should not consider a sentence with only 25 unique letters to be a pangram" ['a quick movement of the enemy will jeopardize five gunboats'] $false]
    [$pangram:is-pangram~ "should not consider another sentence with only 25 unique letters to be a pangram" ['the quick brown fish jumps over the lazy dog'] $false]
    [$pangram:is-pangram~ "should allow non-ASCII characters in pangrams" ['Victor jagt zwölf Boxkämpfer quer über den großen Sylter Deich.'] $true]
    [$pangram:is-pangram~ "should not consider non-ASCII characters to be letters" ['äbcdefghijklmnopqrstuvwxyz'] $false]
    [$pangram:is-pangram~ "should not consider a-m and A-M to be a pangram" ['abcdefghijklm ABCDEFGHIJKLM'] $false]
  ]
}
