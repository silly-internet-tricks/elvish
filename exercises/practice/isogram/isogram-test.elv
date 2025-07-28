local is_isogram = require('isogram')

describe('isogram', function()
    [$is_isogram~ "empty string" [''] $true]
    [$is_isogram~ "isogram with only lower case characters" ['isogram'] $true]
    [$is_isogram~ "word with one duplicated character" ['eleven'] $false]
    [$is_isogram~ "word with one duplicated character from the end of the alphabet" ['zzyzx'] $false]
    [$is_isogram~ "longest reported english isogram" ['subdermatoglyphic'] $true]
    [$is_isogram~ "word with duplicated character in mixed case" ['Alphabet'] $false]
    [$is_isogram~ "word with duplicated character in mixed case, lowercase first" ['alphAbet'] $false]
    [$is_isogram~ "hypothetical isogrammic word with hyphen" ['thumbscrew-japingly'] $true]
    [$is_isogram~ "hypothetical word with duplicated character following hyphen" ['thumbscrew-jappingly'] $false]
    [$is_isogram~ "isogram with duplicated hyphen" ['six-year-old'] $true]
    [$is_isogram~ "made-up name that is an isogram" ['Emily Jung Schwartzkopf'] $true]
    [$is_isogram~ "duplicated character in the middle" ['accentor'] $false]
    [$is_isogram~ "same first and last characters" ['angola'] $false]
    [$is_isogram~ "word with duplicated character and with two hyphens" ['up-to-date'] $false]end)
