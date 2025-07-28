use ./armstrong-numbers

fn tests {
  [
    [$armstrong-numbers:is-armstrong-number~ "Zero is an Armstrong number" [0] $true]
    [$armstrong-numbers:is-armstrong-number~ "Single-digit numbers are Armstrong numbers" [5] $true]
    [$armstrong-numbers:is-armstrong-number~ "There are no two-digit Armstrong numbers" [10] $false]
    [$armstrong-numbers:is-armstrong-number~ "Three-digit number that is an Armstrong number" [153] $true]
    [$armstrong-numbers:is-armstrong-number~ "Three-digit number that is not an Armstrong number" [100] $false]
    [$armstrong-numbers:is-armstrong-number~ "Four-digit number that is an Armstrong number" [9474] $true]
    [$armstrong-numbers:is-armstrong-number~ "Four-digit number that is not an Armstrong number" [9475] $false]
    [$armstrong-numbers:is-armstrong-number~ "Seven-digit number that is an Armstrong number" [9926315] $true]
    [$armstrong-numbers:is-armstrong-number~ "Seven-digit number that is not an Armstrong number" [9926314] $false]
  ]
}
