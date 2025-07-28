local to_rna = require('rna-transcription')

describe('rna-transcription', function()
    [$to_rna~ "transcribes cytosine to guanosine" ["C"] "G"]
    [$to_rna~ "transcribes guanosine to cytosine" ["G"] "C"]
    [$to_rna~ "transcribes adenosine to uracil" ["A"] "U"]
    [$to_rna~ "transcribes thymine to adenosine" ["T"] "A"]
    [$to_rna~ "transcribes all DNA nucleotides to their RNA complements" ["ACGTGGTCTTAA"] "UGCACCAGAAUU"]end)
