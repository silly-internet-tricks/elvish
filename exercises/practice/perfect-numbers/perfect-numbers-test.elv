local perfect_numbers = require('perfect-numbers')

describe('perfect-numbers', function()
    [$perfect_numbers.aliquot_sum~ "should be able to calculate the Aliquot sum of a number with no divisors" ["1"] "0"]
    [$perfect_numbers.aliquot_sum~ "should be able to calculate the Aliquot sum of a number with a single divisor" ["2"] "1"]
    [$perfect_numbers.aliquot_sum~ "should be able to calculate the Aliquot sum of a number with a multiple divisors" ["16"] "15"]
    [$perfect_numbers.aliquot_sum~ "should be able to calculate the Aliquot sum of a large number" ["1115"] "229"]
    [$perfect_numbers.classify~ "should classify numbers whose Aliquot sum is less than itself as deficient" ["13"] "deficient"]
    [$perfect_numbers.classify~ "should classify numbers whose Aliquot sum is equal to itself as perfect" ["28"] "perfect"]
    [$perfect_numbers.classify~ "should classify numbers whose Aliquot sum is greater than itself as abundant" ["12"] "abundant"]end)
