local grains = require('grains')

describe('grains', function()
    [$grains.square~ "square 1" ["1"] "1"]
    [$grains.square~ "square 2" ["2"] "2"]
    [$grains.square~ "square 3" ["3"] "4"]
    [$grains.square~ "square 4" ["4"] "8"]
    [$grains.square~ "square 16" ["16"] "32768"]
    [$grains.square~ "square 32" ["32"] "2147483648"]
    [$grains.square~ "square 64" ["64"] "9223372036854775808"]
    [$grains.total~ "total" [""] "18446744073709551615"]end)
