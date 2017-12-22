module Model.Companies exposing (Msg(..), Model, init, Company)


type Msg
    = UpdateNameField String
    | Add


type alias Company =
    { name : String }


type alias Model =
    { nameField : String
    , companies : List Company
    }


init : Model
init =
    { nameField = ""
    , companies = []
    }
