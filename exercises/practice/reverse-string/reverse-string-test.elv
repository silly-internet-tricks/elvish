local reverse_string = require('reverse-string')

describe('reverse-string', function()
  it('an empty string', function()
    assert.are.equal('', reverse_string(''))
  end)

    [$reverse_string~ "a word" ["robot"] "tobor"]
    [$reverse_string~ "a capitalized word" ["Ramen"] "nemaR"]
  it('a sentence with punctuation', function()
    assert.are.equal("!yrgnuh m'I", reverse_string("I'm hungry!"))
  end)

    [$reverse_string~ "a palindrome" ["racecar"] "racecar"]end)
