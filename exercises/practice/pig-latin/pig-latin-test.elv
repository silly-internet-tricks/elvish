local translate = require('pig-latin')

describe('pig-latin', function()
  describe('ay is added to words that start with vowels', function()
    [$translate~ "word beginning with a" ["apple"] "appleay"]
    [$translate~ "word beginning with e" ["ear"] "earay"]
    [$translate~ "word beginning with i" ["igloo"] "iglooay"]
    [$translate~ "word beginning with o" ["object"] "objectay"]
    [$translate~ "word beginning with u" ["under"] "underay"]
    [$translate~ "word beginning with a vowel and followed by a qu" ["equal"] "equalay"]  end)

  describe('first letter and ay are moved to the end of words that start with consonants', function()
    [$translate~ "word beginning with p" ["pig"] "igpay"]
    [$translate~ "word beginning with k" ["koala"] "oalakay"]
    [$translate~ "word beginning with x" ["xenon"] "enonxay"]
    [$translate~ "word beginning with q without a following u" ["qat"] "atqay"]
    [$translate~ "word beginning with consonant and vowel containing qu" ["liquid"] "iquidlay"]  end)

  describe('some letter clusters are treated like a single consonant', function()
    [$translate~ "word beginning with ch" ["chair"] "airchay"]
    [$translate~ "word beginning with qu" ["queen"] "eenquay"]
    [$translate~ "word beginning with qu and a preceding consonant" ["square"] "aresquay"]
    [$translate~ "word beginning with th" ["therapy"] "erapythay"]
    [$translate~ "word beginning with thr" ["thrush"] "ushthray"]
    [$translate~ "word beginning with sch" ["school"] "oolschay"]  end)

  describe('some letter clusters are treated like a single vowel', function()
    [$translate~ "word beginning with yt" ["yttria"] "yttriaay"]
    [$translate~ "word beginning with xr" ["xray"] "xrayay"]  end)

  describe('position of y in a word determines if it is a consonant or a vowel', function()
    [$translate~ "y is treated like a consonant at the beginning of a word" ["yellow"] "ellowyay"]
    [$translate~ "y is treated like a vowel at the end of a consonant cluster" ["rhythm"] "ythmrhay"]
    [$translate~ "y as second letter in two letter word" ["my"] "ymay"]  end)

  describe('phrases are translated', function()
    [$translate~ "a whole phrase" ["quick fast run"] "ickquay astfay unray"]  end)
end)
