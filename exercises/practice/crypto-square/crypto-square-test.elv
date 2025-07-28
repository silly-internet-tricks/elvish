local crypto_square = require('crypto-square')

describe('crypto-square', function()
  it('empty plaintext results in an empty ciphertext', function()
    assert.are.equal('', crypto_square.ciphertext(''))
  end)

  it('normalization results in empty plaintext', function()
    assert.are.equal('', crypto_square.ciphertext('... --- ...'))
  end)

    [$crypto_square.ciphertext~ "Lowercase" ["A"] "a"]
    [$crypto_square.ciphertext~ "Remove spaces" ["  b "] "b"]
    [$crypto_square.ciphertext~ "Remove punctuation" ["@1,%!"] "1"]
    [$crypto_square.ciphertext~ "9 character plaintext results in 3 chunks of 3 characters" ["This is fun!"] "tsf hiu isn"]
    [$crypto_square.ciphertext~ "8 character plaintext results in 3 chunks, the last one with a trailing space" ["Chill out."] "clu hlt io "]
  it('54 character plaintext results in 8 chunks, the last two with trailing spaces', function()
    assert.are.equal('imtgdvs fearwer mayoogo anouuio ntnnlvt wttddes aohghn  sseoau ',
                     crypto_square.ciphertext('If man was meant to stay on the ground, god would have given us roots.'))
  end)
end)
