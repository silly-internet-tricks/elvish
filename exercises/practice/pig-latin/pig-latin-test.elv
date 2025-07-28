use ./pig-latin

fn tests {
  put [
    [$pig-latin:translate~ "word beginning with a" ["apple"] "appleay"]
    [$pig-latin:translate~ "word beginning with e" ["ear"] "earay"]
    [$pig-latin:translate~ "word beginning with i" ["igloo"] "iglooay"]
    [$pig-latin:translate~ "word beginning with o" ["object"] "objectay"]
    [$pig-latin:translate~ "word beginning with u" ["under"] "underay"]
    [$pig-latin:translate~ "word beginning with a vowel and followed by a qu" ["equal"] "equalay"]
    [$pig-latin:translate~ "word beginning with p" ["pig"] "igpay"]
    [$pig-latin:translate~ "word beginning with k" ["koala"] "oalakay"]
    [$pig-latin:translate~ "word beginning with x" ["xenon"] "enonxay"]
    [$pig-latin:translate~ "word beginning with q without a following u" ["qat"] "atqay"]
    [$pig-latin:translate~ "word beginning with consonant and vowel containing qu" ["liquid"] "iquidlay"]
    [$pig-latin:translate~ "word beginning with ch" ["chair"] "airchay"]
    [$pig-latin:translate~ "word beginning with qu" ["queen"] "eenquay"]
    [$pig-latin:translate~ "word beginning with qu and a preceding consonant" ["square"] "aresquay"]
    [$pig-latin:translate~ "word beginning with th" ["therapy"] "erapythay"]
    [$pig-latin:translate~ "word beginning with thr" ["thrush"] "ushthray"]
    [$pig-latin:translate~ "word beginning with sch" ["school"] "oolschay"]
    [$pig-latin:translate~ "word beginning with yt" ["yttria"] "yttriaay"]
    [$pig-latin:translate~ "word beginning with xr" ["xray"] "xrayay"]
    [$pig-latin:translate~ "y is treated like a consonant at the beginning of a word" ["yellow"] "ellowyay"]
    [$pig-latin:translate~ "y is treated like a vowel at the end of a consonant cluster" ["rhythm"] "ythmrhay"]
    [$pig-latin:translate~ "y as second letter in two letter word" ["my"] "ymay"]
    [$pig-latin:translate~ "a whole phrase" ["quick fast run"] "ickquay astfay unray"]
  ]
}
