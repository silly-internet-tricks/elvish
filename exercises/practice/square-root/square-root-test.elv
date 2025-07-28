local SquareRoot = require 'square-root'

describe('square-root', function()
    [$SquareRoot.square_root~ "root of 1" ["1"] "1"]
    [$SquareRoot.square_root~ "root of 4" ["4"] "2"]
    [$SquareRoot.square_root~ "root of 25" ["25"] "5"]
    [$SquareRoot.square_root~ "root of 81" ["81"] "9"]
    [$SquareRoot.square_root~ "root of 196" ["196"] "14"]
    [$SquareRoot.square_root~ "root of 65025" ["65025"] "255"]end)
