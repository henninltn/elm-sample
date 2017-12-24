module Model.PortsSample exposing (Msg(..), Model, init)

import Ports.MyMouse exposing (Position)


type Msg
    = MouseMsg Position
    | UpdateNameField String
    | FetchGreetingMsg String
    | ReceiveGreetingMsg String


type alias Model =
    { mousePosition : Position
    , nameField : String
    , greeting : String
    }


init : Model
init =
    { mousePosition = { x = 0, y = 0 }
    , nameField = ""
    , greeting = ""
    }
