module Model.CmdSubSample exposing (Msg(..), Model, init)


type Msg
    = Roll
    | OnResult Int


type alias Model =
    { rollResult : Int }


init : Model
init =
    { rollResult = 0 }
