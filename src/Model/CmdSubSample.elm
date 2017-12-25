module Model.CmdSubSample exposing (Msg(..), Model, init)

import Keyboard exposing (KeyCode)
import Mouse exposing (Position)


type Msg
    = Roll
    | OnResult Int
    | MouseMsg Position
    | KeyMsg KeyCode


type alias Model =
    { rollResult : Int
    , mousePosition : Position
    , downedKey : Maybe KeyCode
    }


init : Model
init =
    { rollResult = 0
    , mousePosition = { x = 0, y = 0 }
    , downedKey = Nothing
    }
