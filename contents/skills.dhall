let prelude = (../prelude.dhall).cv

in  [ { subject = "Computer Science"
      , skills =
          prelude.helpers.rawMarkdowns
            [ "Machine Learning (clustering, classification, artificial neural networks)"
            , "Large-scale data analytics"
            , "Numerical algorithms (FEM, stochastic methods)"
            , "Digital signal processing"
            , "Functional programming"
            , "Static analysis"
            , "DSL design"
            , "Differential Privacy"
            ]
      }
    , { subject = "Languages"
      , skills =
          prelude.helpers.rawMarkdowns
            [ "Java"
            , "Haskell"
            , "Python"
            , "Matlab"
            , "R"
            , "C++"
            , "Ruby"
            , "Fortran"
            ]
      }
    , { subject = "Mathematics"
      , skills =
          prelude.helpers.rawMarkdowns
            [ "Multivariate statistics"
            , "Numerical analysis"
            , "Real/Complex analysis"
            , "Stochastic processes"
            , "Dynamical systems"
            , "Abstract algebra"
            , "Differential equations"
            , "Wavelet analysis"
            , "Applied Category Theory"
            ]
      }
    ]
