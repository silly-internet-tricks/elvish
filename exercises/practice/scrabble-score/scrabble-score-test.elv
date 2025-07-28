local score = require('scrabble-score').score

describe('scrabble-score', function()
    [$score~ "scores an empty word as zero" [""] "0"]
    [$score~ "scores a nil as zero" ["nil"] "0"]
    [$score~ "scores a very short word" ["a"] "1"]
    [$score~ "scores the word by the number of letters" ["street"] "6"]
    [$score~ "scores more complicated words with more" ["quirky"] "22"]
    [$score~ "scores case insensitive words" ["OXYPHENBUTAZONE"] "41"]end)
