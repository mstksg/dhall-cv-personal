let prelude = ./prelude.dhall

let Collection = ./helpers/Collection.dhall

let contents = ./contents.dhall

in    { objectives = contents.objectives
      , education = contents.education
      , skills = contents.skills
      , experience =
        [ contents.experience.sdge
        , contents.experience.rainnets
        , contents.experience.intela
        , contents.experience.dynes
        ]
      , projects =
        [ contents.projects.backprop
        , contents.projects.montecarlo
        , contents.projects.blog
        ]
      , publications =
        [ contents.publications.atmos2017
        , contents.publications.functional
        , contents.publications.regexp
        , contents.publications.aogs2016
        ]
      , teaching =
        [ contents.teaching.lab
        , contents.teaching.cs230
        , contents.teaching.intela
        , contents.teaching.vsa
        , contents.teaching.fp
        ]
      , courses =
        [ contents.courses.cs611
        , contents.courses.cs533
        , contents.courses.phys520
        , contents.courses.cs540
        ]
      }
    : Collection
