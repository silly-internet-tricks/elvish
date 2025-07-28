local isbn_verifier = require('isbn-verifier')

describe('isbn-verifier', function()
    [$isbn_verifier.valid~ "valid isbn" ['3-598-21508-8'] $true]
    [$isbn_verifier.valid~ "invalid isbn check digit" ['3-598-21508-9'] $false]
    [$isbn_verifier.valid~ "valid isbn with a check digit of 10" ['3-598-21507-X'] $true]
    [$isbn_verifier.valid~ "check digit is a character other than x" ['3-598-21507-A'] $false]
    [$isbn_verifier.valid~ "invalid check digit in isbn is not treated as zero" ['4-598-21507-B'] $false]
    [$isbn_verifier.valid~ "invalid character in isbn is not treated as zero" ['3-598-P1581-X'] $false]
    [$isbn_verifier.valid~ "x is only valid as a check digit" ['3-598-2X507-9'] $false]
    [$isbn_verifier.valid~ "valid isbn without separating dashes" ['3598215088'] $true]
    [$isbn_verifier.valid~ "isbn without separating dashes and x as check digit" ['359821507X'] $true]
    [$isbn_verifier.valid~ "isbn without check digit and dashes" ['359821507'] $false]
    [$isbn_verifier.valid~ "too long isbn and no dashes" ['3598215078X'] $false]
    [$isbn_verifier.valid~ "too short isbn" ['00'] $false]
    [$isbn_verifier.valid~ "isbn without check digit" ['3-598-21507'] $false]
    [$isbn_verifier.valid~ "check digit of x should not be used for 0" ['3-598-21515-X'] $false]
    [$isbn_verifier.valid~ "empty isbn" [''] $false]
    [$isbn_verifier.valid~ "input is 9 characters" ['134456729'] $false]
    [$isbn_verifier.valid~ "invalid characters are not ignored after checking length" ['3132P34035'] $false]
    [$isbn_verifier.valid~ "invalid characters are not ignored before checking length" ['3598P215088'] $false]
    [$isbn_verifier.valid~ "input is too long but contains a valid isbn" ['98245726788'] $false]end)
