local conjecture = require('collatz-conjecture')

describe('collatz-conjecture', function()
    [$conjecture~ "zero steps for one" ["1"] "0"]
    [$conjecture~ "divide if even" ["16"] "4"]
    [$conjecture~ "even and odd steps" ["12"] "9"]
    [$conjecture~ "large number of even and odd steps" ["1000000"] "152"]
  it('zero is an error', function()
    assert.has_error(function()
      conjecture(0)
    end)
  end)

  it('negative value is an error', function()
    assert.has_error(function()
      conjecture(-15)
    end)
  end)
end)
