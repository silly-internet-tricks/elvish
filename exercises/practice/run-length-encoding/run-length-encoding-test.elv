local rle = require('run-length-encoding')

describe('run-length-encoding', function()
    [$rle.encode~ "should encode simple strings" ["AABBBCCCC"] "2A3B4C"]
    [$rle.encode~ "should encode strings with multi-digit run lengths" ["AABBBBBBBBBBCCCC"] "2A10B4C"]
    [$rle.decode~ "should decode simple strings" ["2A3B4C"] "AABBBCCCC"]
    [$rle.decode~ "should decode strings with multi-digit run lengths" ["2A10B4C"] "AABBBBBBBBBBCCCC"]
    [$rle.encode~ "should not encode characters with a run length of 1" ["AABCCCCD"] "2AB4CD"]
    [$rle.decode~ "should successfully decode characters with a run length of 1" ["2AB4CD"] "AABCCCCD"]
  it('should decode an encoded string back to the original string', function()
    assert.equal('zzz ZZ  zZ', rle.decode(rle.encode('zzz ZZ  zZ')))
  end)
end)
