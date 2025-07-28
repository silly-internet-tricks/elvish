use ./scrabble-score

fn tests {
  put [
    [$scrabble-score:score~ "scores an empty word as zero" [""] (num 0)]
    [$scrabble-score:score~ "scores a nil as zero" [$nil] (num 0)]
    [$scrabble-score:score~ "scores a very short word" ["a"] (num 1)]
    [$scrabble-score:score~ "scores the word by the number of letters" ["street"] (num 6)]
    [$scrabble-score:score~ "scores more complicated words with more" ["quirky"] (num 22)]
    [$scrabble-score:score~ "scores case insensitive words" ["OXYPHENBUTAZONE"] (num 41)]
  ]
}
