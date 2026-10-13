-- Builds each CV section once, by name, so consumers that want a subset
-- (e.g. a PDF resume that skips the Objectives intro) can pick fields
-- directly instead of re-deriving the section content themselves.
-- assembleSections.dhall is just this record flattened into the
-- default, full ordering.
let cv = (../prelude.dhall).cv

let types = cv.types

let helpers = cv.helpers

let Collection = ./Collection.dhall

in  λ(collection : Collection) →
      { objectives =
          { title = Some "Objectives"
          , contents = helpers.noTitles types.Markdown collection.objectives
          }
      , education =
        { title = Some "Education", contents = collection.education }
      , experience =
          { title = Some "Selected Work and Research Experience"
          , contents = collection.experience
          }
      , skills =
          { title = Some "Skills"
          , contents = helpers.mkSkills collection.skills
          }
      , projects =
        { title = Some "Selected Projects", contents = collection.projects }
      , publications =
          { title = Some "Selected Publications & Presentations"
          , contents = helpers.mkPublications collection.publications
          }
      , teaching =
          { title = Some "Teaching and Leadership"
          , contents = helpers.mkTeachings types.Markdown collection.teaching
          }
      }
