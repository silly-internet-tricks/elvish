use github.com/silly-internet-tricks/elvish-test/elvish-test

use ./grains-test

elvish-test:run (grains-test:tests)

