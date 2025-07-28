local triangle = require('triangle')

describe('triangle', function()
    [$triangle.kind~ "equilateral triangles have equal sides" ["2, 2, 2"] "equilateral"]
    [$triangle.kind~ "larger equilateral triangles also have equal sides" ["10, 10, 10"] "equilateral"]
  it('isosceles triangles have last two sides equal', function()
    assert.are.equals('isosceles', triangle.kind(3, 4, 4))
    assert.are.equals('isosceles', triangle.kind(4, 3, 3))
  end)

  it('isosceles trianges have first and last sides equal', function()
    assert.are.equals('isosceles', triangle.kind(3, 4, 3))
    assert.are.equals('isosceles', triangle.kind(4, 3, 4))
  end)

  it('isosceles triangles have two first sides equal', function()
    assert.are.equals('isosceles', triangle.kind(3, 3, 4))
    assert.are.equals('isosceles', triangle.kind(4, 4, 3))
  end)

    [$triangle.kind~ "isosceles triangles have in fact exactly two sides equal" ["10, 10, 2"] "isosceles"]
    [$triangle.kind~ "scalene triangles have no equal sides" ["3, 4, 5"] "scalene"]
    [$triangle.kind~ "scalene triangles have no equal sides at a larger scale too" ["10, 11, 12"] "scalene"]
    [$triangle.kind~ "scalene triangles have no equal sides in descending order either" ["5, 4, 2"] "scalene"]
    [$triangle.kind~ "very small triangles are legal" ["0.4, 0.6, 0.3"] "scalene"]
  it('test triangles with no size are illegal', function()
    assert.has_error(function()
      triangle.kind(0, 0, 0)
    end, 'Input Error')
  end)

  it('triangles with negative sides are illegal', function()
    assert.has_error(function()
      triangle.kind(3, 4, -5)
    end, 'Input Error')
  end)

  it('triangles violating triangle inequality are illegal', function()
    assert.has_error(function()
      triangle.kind(1, 1, 3)
    end, 'Input Error')
  end)

  it('triangles violating triangle inequality are illegal 2', function()
    assert.has_error(function()
      triangle.kind(7, 3, 2)
    end, 'Input Error')
  end)
end)
