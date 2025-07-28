use ./raindrops

fn tests {
  put [
    [$raindrops:raindrops~ "the sound for 1 is 1" ["1"] "1"]
    [$raindrops:raindrops~ "the sound for 3 is Pling" ["3"] "Pling"]
    [$raindrops:raindrops~ "the sound for 5 is Plang" ["5"] "Plang"]
    [$raindrops:raindrops~ "the sound for 7 is Plong" ["7"] "Plong"]
    [$raindrops:raindrops~ "the sound for 6 is Pling as it has a factor 3" ["6"] "Pling"]
    [$raindrops:raindrops~ "2 to the power 3 does not make a raindrop sound as 3 is the exponent not the base" ["8"] "8"]
    [$raindrops:raindrops~ "the sound for 9 is Pling as it has a factor 3" ["9"] "Pling"]
    [$raindrops:raindrops~ "the sound for 10 is Plang as it has a factor 5" ["10"] "Plang"]
    [$raindrops:raindrops~ "the sound for 14 is Plong as it has a factor 7" ["14"] "Plong"]
    [$raindrops:raindrops~ "the sound for 15 is PlingPlang as it has a factor 3 and 5" ["15"] "PlingPlang"]
    [$raindrops:raindrops~ "the sound for 21 is PlingPlong as it has factors 3 and 7" ["21"] "PlingPlong"]
    [$raindrops:raindrops~ "the sound for 25 is Plang as it has a factor 5" ["25"] "Plang"]
    [$raindrops:raindrops~ "the sound for 27 is Pling as it has a factor 3" ["27"] "Pling"]
    [$raindrops:raindrops~ "the sound for 35 is PlangPlong as it has factors 5 and 7" ["35"] "PlangPlong"]
    [$raindrops:raindrops~ "the sound for 49 is Plong as it has a factor 7" ["49"] "Plong"]
    [$raindrops:raindrops~ "the sound for 52 is 52" ["52"] "52"]
    [$raindrops:raindrops~ "the sound for 105 is PlingPlangPlong as it has factors 3, 5 and 7" ["105"] "PlingPlangPlong"]
    [$raindrops:raindrops~ "the sound for 3125 is Plang as it has a factor 5" ["3125"] "Plang"]
  ]
}