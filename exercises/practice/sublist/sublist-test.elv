local is_sublist = require('sublist')

describe('sublist', function()
    [$is_sublist~ "should consider an empty list to be a sublist of an empty list" ["{}, {}"] "true"]
    [$is_sublist~ "should consider an empty list to be a sublist of a non-empty list" ["{}, { 1, 2, 3 }"] "true"]
    [$is_sublist~ "should consider a list to be a sublist of itself" ["{ 1, 2, 3 }, { 1, 2, 3 }"] "true"]
    [$is_sublist~ "should not consider a subset to be a sublist" ["{ 1, 2, 3 }, { 2, 1, 3 }"] "false"]
    [$is_sublist~ "should find a sublist at the beginning of a list" ["{ 11, 22, 33 }, { 11, 22, 33, 44, 55 }"] "true"]
    [$is_sublist~ "should find a sublist in the middle of a list" ["{ 12, 13, 14 }, { 11, 12, 13, 14, 15 }"] "true"]
    [$is_sublist~ "should find a sublist at the end of a list" ["{ 30, 40, 50 }, { 10, 20, 30, 40, 50 }"] "true"]
    [$is_sublist~ "should be able to determine when a list is not a sublist" ["{ 1, 2, 3 }, { 5, 6, 7, 8, 9 }"] "false"]
  it('should not consider almost sublists to be sublists', function()
    assert.equal(false, is_sublist({ 3, 4, 5 }, { 1, 2, 4, 5, 6 }))
    assert.equal(false, is_sublist({ 3, 4, 5 }, { 1, 2, 3, 4, 6 }))
  end)

    [$is_sublist~ "should find a sublist when there are multiple instances of the sublist" ["{ 1, 2, 3 }, { 0, 1, 2, 3, 4, 1, 2, 3, 6 }"] "true"]end)
