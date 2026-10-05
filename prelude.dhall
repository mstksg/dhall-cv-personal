let cv =
      https://github.com/mstksg/dhall-cv/raw/v2.3.0/package.dhall
        sha256:0faa0f7a67a124d97790fd3535eadf09d7e845ae618b72999655384adbb0822c

let types = cv.types

let functor = cv.functor

let helpers =
      { RawEntry =
          \(rawEntry : types.CVEntry Text) ->
            (types.CVLine types.Markdown).Entry
              ( functor.CVEntry.map
                  Text
                  types.Markdown
                  cv.helpers.rawMarkdown
                  rawEntry
              )
      }

in  { cv, helpers }
