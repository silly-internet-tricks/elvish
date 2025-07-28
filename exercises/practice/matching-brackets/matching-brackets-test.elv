-- canonical test data 2.0.0
local brackets = require('matching-brackets')

describe('matching-brackets', function()
    [$brackets.valid~ "should accept paired square brackets" ['[]'] $true]
    [$brackets.valid~ "should accept empty string" [''] $true]
    [$brackets.valid~ "should reject unpaired brackets" ['[['] $false]
    [$brackets.valid~ "should reject wrong ordered brackets" ['}{'] $false]
    [$brackets.valid~ "should reject wrong closing bracket" ['{]'] $false]
    [$brackets.valid~ "should accept paired with whitespace" ['{ }'] $true]
  it('should reject partially paired brackets', function()
    assert.is_false(brackets.valid('{[])'))
  end)

    [$brackets.valid~ "should accept simple nested brackets" ['{[]}'] $true]
    [$brackets.valid~ "should accept several paired brackets" ['{}[]'] $true]
  it('should accept paired and nested brackets', function()
    assert.is_true(brackets.valid('([{}({}[])])'))
  end)

  it('should reject unopened closing brackets', function()
    assert.is_false(brackets.valid('{[)][]}'))
  end)

  it('should reject unpaired and nested brackets', function()
    assert.is_false(brackets.valid('([{])'))
  end)

  it('should reject paired and wrong nested brackets', function()
    assert.is_false(brackets.valid('[({]})'))
  end)

  it('should reject paired and wrong nested brackets but innermost are correct', function()
    assert.is_false(brackets.valid('[({}])'))
  end)

    [$brackets.valid~ "should reject paired and incomplete brackets" ['{}['] $false]
    [$brackets.valid~ "should reject too many closing brackets" ['[]]'] $false]
  it('should reject early unexpected brackets', function()
    assert.is_false(brackets.valid(')()'))
  end)

  it('should reject early mismatched brackets', function()
    assert.is_false(brackets.valid('{)()'))
  end)

  it('should accept math expression', function()
    assert.is_true(brackets.valid('(((185 + 223.85) * 15) - 543)/2'))
  end)

  it('should accept complex latex expression', function()
    assert.is_true(brackets.valid(
                     [[\left(\begin{array}{cc} \frac{1}{3} & x\\ \mathrm{e}^{x} &... x^2 \end{array}\right)]]))
  end)
end)
