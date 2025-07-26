use ./resistor-color

fn tests {
  put [
    [$resistor-color:color-code~ "Black" ["black"] 0]
    [$resistor-color:color-code~ "Brown" ["brown"] 1]
    [$resistor-color:color-code~ "Red" ["red"] 2]
    [$resistor-color:color-code~ "Orange" ["orange"] 3]
    [$resistor-color:color-code~ "Yellow" ["yellow"] 4]
    [$resistor-color:color-code~ "Green" ["green"] 5]
    [$resistor-color:color-code~ "Blue" ["blue"] 6]
    [$resistor-color:color-code~ "Violet" ["violet"] 7]
    [$resistor-color:color-code~ "Grey" ["grey"] 8]
    [$resistor-color:color-code~ "White" ["white"] 9]
  ]
}
