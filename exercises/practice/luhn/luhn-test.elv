local luhn = require('luhn')

describe('luhn', function()
    [$luhn.valid~ "single digit strings can not be valid" ['1'] $false]
    [$luhn.valid~ "a single zero is invalid" ['0'] $false]
    [$luhn.valid~ "a simple valid sin that remains valid if reversed" ['059'] $true]
    [$luhn.valid~ "a simple valid sin that becomes invalid if reversed" ['59'] $true]
    [$luhn.valid~ "a valid canadian sin" ['055 444 285'] $true]
    [$luhn.valid~ "invalid canadian sin" ['055 444 286'] $false]
    [$luhn.valid~ "invalid credit card" ['8273 1232 7352 0569'] $false]
    [$luhn.valid~ "invalid long number with an even remainder" ['1 2345 6789 1234 5678 9012'] $false]
    [$luhn.valid~ "invalid long number with a remainder divisible by 5" ['1 2345 6789 1234 5678 9013'] $false]
    [$luhn.valid~ "valid number with an even number of digits" ['095 245 88'] $true]
    [$luhn.valid~ "valid number with an odd number of spaces" ['234 567 891 234'] $true]
    [$luhn.valid~ "valid strings with a non-digit added at the end become invalid" ['059a'] $false]
    [$luhn.valid~ "valid strings with punctuation included become invalid" ['055-444-285'] $false]
    [$luhn.valid~ "valid strings with symbols included become invalid" ['055# 444$ 285'] $false]
    [$luhn.valid~ "single zero with space is invalid" [' 0'] $false]
    [$luhn.valid~ "more than a single zero is valid" ['0000 0'] $true]
    [$luhn.valid~ "input digit 9 is correctly converted to output digit 9" ['091'] $true]
    [$luhn.valid~ "very long input is valid" ['9999999999 9999999999 9999999999 9999999999'] $true]
    [$luhn.valid~ "valid luhn with an odd number of digits and non zero first digit" ['109'] $true]
  it('using ascii value for non-doubled non-digit isn\'t allowed', function()
    assert.is_false(luhn.valid('055b 444 285'))
  end)

  it('using ascii value for doubled non-digit isn\'t allowed', function()
    assert.is_false(luhn.valid(':9'))
  end)

  it('non-numeric, non-space char in the middle with a sum that\'s divisible by 10 isn\'t allowed', function()
    assert.is_false(luhn.valid('59%59'))
  end)
end)
