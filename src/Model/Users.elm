module Model.Users exposing (Msg(..), Model, init, User)


type Msg
    = UpdateNameField String
    | Add


type alias User =
    { name : String }


type alias Model =
    { nameField : String
    , users : List User
    }


init : Model
init =
    { nameField = ""
    , users = []
    }
