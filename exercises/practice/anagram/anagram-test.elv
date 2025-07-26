use ./anagram

fn get-anagram-results { |constructor-word method-words|
  var detector = (anagram:new $constructor-word)
  put ($detector[match] $method-words)
}

fn tests {
  put [
    [$get-anagram-results~ "no matches" ["diaper" ["hello" "world" "zombies" "pants"]] []]
    [$get-anagram-results~ "detects two anagrams" ["solemn" [ "lemons" "cherry" "melons" ]] [ "lemons" "melons" ]]
    [$get-anagram-results~ "does not detect anagram subsets" ["good" [ "dog" "goody" ]] []]
    [$get-anagram-results~ "detects anagram" ["listen" [ "enlists" "google" "inlets" "banana" ]] [ "inlets" ]]
    [$get-anagram-results~ "detects three anagrams" ["allergy" [ "gallery" "ballerina" "regally" "clergy" "largely" "leading" ]] [ "gallery" "regally" "largely" ]]
    [$get-anagram-results~ "detects multiple anagrams with different case" ["nose" [ "Eons" "ONES" ]] [ "Eons" "ONES" ]]
    [$get-anagram-results~ "does not detect non-anagrams with identical checksum" ["mass" [ "last" ]] []]
    [$get-anagram-results~ "detects anagrams case-insensitively" ["Orchestra" [ "cashregister" "Carthorse" "radishes" ]] [ "Carthorse" ]]
    [$get-anagram-results~ "detects anagrams using case-insensitive subject" ["Orchestra" [ "cashregister" "carthorse" "radishes" ]] [ "carthorse" ]]
    [$get-anagram-results~ "detects anagrams using case-insensitive possible matches" ["orchestra" [ "cashregister" "Carthorse" "radishes" ]] [ "Carthorse" ]]
    [$get-anagram-results~ "does not detect an anagram if the original word is repeated" ["go" [ "goGoGO" ]] []]
    [$get-anagram-results~ "anagrams must use all letters exactly once" ["tapper" [ "patter" ]] []]
    [$get-anagram-results~ "words are not anagrams of themselves" ["BANANA" [ "BANANA" ]] []]
    [$get-anagram-results~ "words are not anagrams of themselves even if letter case is partially different" ["BANANA" [ "Banana" ]] []]
    [$get-anagram-results~ "words are not anagrams of themselves even if letter case is completely different" ["BANANA" [ "banana" ]] []]
    [$get-anagram-results~ "words other than themselves can be anagrams" ["LISTEN" [ "LISTEN" "Silent" ]] [ "Silent" ]]
  ]
}


