let cv = (../prelude.dhall).cv

let types = cv.types

let sections = ./sections.dhall

let Collection = ./Collection.dhall

in  λ(collection : Collection) →
      let s = sections collection

      in    [ s.objectives
            , s.education
            , s.experience
            , s.skills
            , s.projects
            , s.publications
            , s.teaching
            ]
          : List (types.CVSection types.Markdown)
