let types = (../prelude.dhall).cv.types

let Col = types.CVCol types.Markdown

in  { objectives : List types.Markdown
    , education : List Col
    , skills : List { subject : Text, skills : List types.Markdown }
    , experience : List Col
    , projects : List Col
    , publications : List types.Publication
    , teaching : List types.Teaching
    , courses : List Col
    }
