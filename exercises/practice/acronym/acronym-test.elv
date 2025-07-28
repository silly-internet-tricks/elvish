use ./acronym

fn tests {
  put [
    [$acronym:acronym~ "should generate single-letter acronyms" ["Lua"] "L"]
    [$acronym:acronym~ "should generate multi-letter acronyms" ["Lua Ultimate Acronym"] "LUA"]
    [$acronym:acronym~ "should include lowercase words" ["Ruby on Rails"] "ROR"]
    [$acronym:acronym~ "should ignore punctuation" ["First In, First Out"] "FIFO"]
    [$acronym:acronym~ "should split words with internal capitalization" ["HyperText Markup Language"] "HTML"]
    [$acronym:acronym~ "should not split words that are all uppercase" ["PHP: Hypertext Processor"] "PHP"]
  ]
}