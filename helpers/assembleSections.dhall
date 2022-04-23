let cv = (../prelude.dhall).cv

let types = cv.types

let helpers = cv.helpers

let Collection = ./Collection.dhall

in  λ(collection : Collection) →
        [ { title = Some "Objectives"
          , contents = helpers.noTitles types.Markdown collection.objectives
          }
        , { title = Some "Education", contents = collection.education }
        , { title = Some "Skills"
          , contents = helpers.mkSkills collection.skills
          }
        , { title = Some "Selected Work and Research Experience"
          , contents = collection.experience
          }
        , { title = Some "Selected Projects", contents = collection.projects }
        , { title = Some "Selected Publications & Presentations"
          , contents = helpers.mkPublications collection.publications
          }
        , { title = Some "Teaching and Leadership"
          , contents = helpers.mkTeachings types.Markdown collection.teaching
          }
        , { title = Some "Selected Coursework", contents = collection.courses }
        ]
      : List (types.CVSection types.Markdown)
