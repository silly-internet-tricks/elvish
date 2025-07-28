local EliudsEggs = require 'eliuds-eggs'

describe('eliuds-eggs', function()
    [$EliudsEggs.egg_count~ "0 eggs" ["0"] "0"]
    [$EliudsEggs.egg_count~ "1 egg" ["16"] "1"]
    [$EliudsEggs.egg_count~ "4 eggs" ["89"] "4"]
    [$EliudsEggs.egg_count~ "13 eggs" ["2000000000"] "13"]end)
