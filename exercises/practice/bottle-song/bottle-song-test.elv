use ./bottle-song

var expected-first-generic-verse = (echo "Ten green bottles hanging on the wall,\n" ^
  "Ten green bottles hanging on the wall,\n" ^
  "And if one green bottle should accidentally fall,\n" ^
  "There'll be nine green bottles hanging on the wall.\n")
var expected-last-generic-verse = (echo "Three green bottles hanging on the wall,\n" ^
  "Three green bottles hanging on the wall,\n" ^
  "And if one green bottle should accidentally fall,\n" ^
  "There'll be two green bottles hanging on the wall.\n")
var expected-verse-with-two-bottles = (echo "Two green bottles hanging on the wall,\n" ^
  "Two green bottles hanging on the wall,\n" ^
  "And if one green bottle should accidentally fall,\n" ^
  "There'll be one green bottle hanging on the wall.\n")
var expected-verse-with-one-bottle = (echo "One green bottle hanging on the wall,\n" ^
  "One green bottle hanging on the wall,\n" ^
  "And if one green bottle should accidentally fall,\n" ^
  "There'll be no green bottles hanging on the wall.\n")
var expected-first-two-verses = (echo "Ten green bottles hanging on the wall,\n" ^
  "Ten green bottles hanging on the wall,\n" ^
  "And if one green bottle should accidentally fall,\n" ^
  "There'll be nine green bottles hanging on the wall.\n" ^
  "\n" ^
  "Nine green bottles hanging on the wall,\n" ^
  "Nine green bottles hanging on the wall,\n" ^
  "And if one green bottle should accidentally fall,\n" ^
  "There'll be eight green bottles hanging on the wall.\n")
var expected-last-three-verses = (echo "Three green bottles hanging on the wall,\n" ^
  "Three green bottles hanging on the wall,\n" ^
  "And if one green bottle should accidentally fall,\n" ^
  "There'll be two green bottles hanging on the wall.\n" ^
  "\n" ^
  "Two green bottles hanging on the wall,\n" ^
  "Two green bottles hanging on the wall,\n" ^
  "And if one green bottle should accidentally fall,\n" ^
  "There'll be one green bottle hanging on the wall.\n" ^
  "\n" ^
  "One green bottle hanging on the wall,\n" ^
  "One green bottle hanging on the wall,\n" ^
  "And if one green bottle should accidentally fall,\n" ^
  "There'll be no green bottles hanging on the wall.\n")
var expected-all-verses = (echo "Ten green bottles hanging on the wall,\n" ^
  "Ten green bottles hanging on the wall,\n" ^
  "And if one green bottle should accidentally fall,\n" ^
  "There'll be nine green bottles hanging on the wall.\n" ^
  "\n" ^
  "Nine green bottles hanging on the wall,\n" ^
  "Nine green bottles hanging on the wall,\n" ^
  "And if one green bottle should accidentally fall,\n" ^
  "There'll be eight green bottles hanging on the wall.\n" ^
  "\n" ^
  "Eight green bottles hanging on the wall,\n" ^
  "Eight green bottles hanging on the wall,\n" ^
  "And if one green bottle should accidentally fall,\n" ^
  "There'll be seven green bottles hanging on the wall.\n" ^
  "\n" ^
  "Seven green bottles hanging on the wall,\n" ^
  "Seven green bottles hanging on the wall,\n" ^
  "And if one green bottle should accidentally fall,\n" ^
  "There'll be six green bottles hanging on the wall.\n" ^
  "\n" ^
  "Six green bottles hanging on the wall,\n" ^
  "Six green bottles hanging on the wall,\n" ^
  "And if one green bottle should accidentally fall,\n" ^
  "There'll be five green bottles hanging on the wall.\n" ^
  "\n" ^
  "Five green bottles hanging on the wall,\n" ^
  "Five green bottles hanging on the wall,\n" ^
  "And if one green bottle should accidentally fall,\n" ^
  "There'll be four green bottles hanging on the wall.\n" ^
  "\n" ^
  "Four green bottles hanging on the wall,\n" ^
  "Four green bottles hanging on the wall,\n" ^
  "And if one green bottle should accidentally fall,\n" ^
  "There'll be three green bottles hanging on the wall.\n" ^
  "\n" ^
  "Three green bottles hanging on the wall,\n" ^
  "Three green bottles hanging on the wall,\n" ^
  "And if one green bottle should accidentally fall,\n" ^
  "There'll be two green bottles hanging on the wall.\n" ^
  "\n" ^
  "Two green bottles hanging on the wall,\n" ^
  "Two green bottles hanging on the wall,\n" ^
  "And if one green bottle should accidentally fall,\n" ^
  "There'll be one green bottle hanging on the wall.\n" ^
  "\n" ^
  "One green bottle hanging on the wall,\n" ^
  "One green bottle hanging on the wall,\n" ^
  "And if one green bottle should accidentally fall,\n" ^
  "There'll be no green bottles hanging on the wall.\n")

fn tests {
  put [
    [$bottle-song:recite~ "first generic verse" [10 1] $expected-first-generic-verse]
    [$bottle-song:recite~ "last generic verse" [3 1] $expected-last-generic-verse]
    [$bottle-song:recite~ "verse with 2 bottles" [2 1] $expected-verse-with-two-bottles]
    [$bottle-song:recite~ "verse with 1 bottle" [1 1] $expected-verse-with-one-bottle]
    [$bottle-song:recite~ "first two verses" [10 2] $expected-first-two-verses]
    [$bottle-song:recite~ "last three verses" [3 3] $expected-last-three-verses]
    [$bottle-song:recite~ "all verses" [10 10] $expected-all-verses]
  ]
}