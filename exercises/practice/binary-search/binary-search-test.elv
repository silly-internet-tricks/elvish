use ./binary-search
# TODO: look for a way to count the number of operations done in the solution

fn tests {
  put [
    [$binary-search:find~ "should return -1 when an empty array is searched" [[] "6"] "-1"]
    [$binary-search:find~ "should be able to find a value in a single element array with one access" [[ 6 ] "6"] "1"]
    [$binary-search:find~ "should return -1 if a value is less than the element in a single element array" [[ 94 ] "6"] "-1"]
    [$binary-search:find~ "should return -1 if a value is greater than the element in a single element array" [[ 94 ] "602"] "-1"]
    [$binary-search:find~ "should find an element in a longer array in less than log(n) accesses" [[ 6, 67, 123, 345, 456, 457, 490, 2002, 54321, 54322 ] "2002"] "8"]
    [$binary-search:find~ "should find elements at the beginning of an array in less than log(n) accesses" [[ 6, 67, 123, 345, 456, 457, 490, 2002, 54321, 54322 ] "6"] "1"]
    [$binary-search:find~ "should find elements at the end of an array in less than log(n) accesses" [[ 6, 67, 123, 345, 456, 457, 490, 2002, 54321, 54322 ] "54322"] "10"]
    [$binary-search:find~ "should return -1 if a value is less than all elements in a long array" [[ 6, 67, 123, 345, 456, 457, 490, 2002, 54321, 54322 ] "2"] "-1"]
    [$binary-search:find~ "should return -1 if a value is greater than all elements in a long array" [[ 6, 67, 123, 345, 456, 457, 490, 2002, 54321, 54322 ] "54323"] "-1"]
  ]
}