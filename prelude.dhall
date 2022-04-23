let cv =
      https://github.com/mstksg/dhall-cv/raw/v2.3.0/package.dhall
        sha256:64ff299d707ce05679e38f73b25cb246e91168358151ac9a9affbcb317d55e76

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
