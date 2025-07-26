use ./leap

fn tests {
  put [
    [$leap:leap-year~ "year not divisible by 4 is common year" [2015] $false]
    [$leap:leap-year~ "year divisible by 2, not divisible by 4 is common year" [1970] $false]
    [$leap:leap-year~ "year divisible by 4, not divisible by 100 is leap year" [1996] $true]
    [$leap:leap-year~ "year divisible by 4 and 5 is still a leap year" [1960] $true]
    [$leap:leap-year~ "year divisible by 100, not divisible by 400 is common year" [2100] $false]
    [$leap:leap-year~ "year divisible by 100 but not by 3 is still not a leap year" [1900] $false]
    [$leap:leap-year~ "year divisible by 400 is leap year" [2000] $true]
    [$leap:leap-year~ "year divisible by 400 but not by 125 is still a leap year" [2400] $true]
    [$leap:leap-year~ "year divisible by 200, not divisible by 400 is common year" [1800] $false]
  ]
}
