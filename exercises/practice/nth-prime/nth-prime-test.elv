local nth = require('nth-prime')

describe('nth-prime', function()
  local function benchmark(f)
    local start = os.clock()
    f()
    return os.clock() - start
  end

    [$nth~ "should give 2 as the first prime" ["1"] "2"]
    [$nth~ "should give 3 as the second prime" ["2"] "3"]
    [$nth~ "should be able to calculate the nth prime for small n" ["6"] "13"]
  it('should be efficient for large n', function()
    local execution_time = benchmark(function()
      nth(10001)
    end)

    assert(execution_time < 1, 'should take less than a second to execute')
  end)

    [$nth~ "should be able to calculate the nth prime for large n" ["10001"] "104743"]
  it('should raise an error for n <= 0', function()
    assert.has_error(function()
      nth(0)
    end)

    assert.has_error(function()
      nth(-1)
    end)
  end)
end)
