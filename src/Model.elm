module Model exposing (Msg(..), Model, init)

import Model.Companies as Companies
import Model.Users as Users
import Ports.MyMouse exposing (Position)


type Msg
    = UsersMsg Users.Msg
    | CompaniesMsg Companies.Msg
    | MouseMsg Position
    | UpdateNameField String
    | FetchGreetingMsg String
    | ReceiveGreetingMsg String


type alias Model =
    { usersModel : Users.Model
    , companiesModel : Companies.Model
    , mousePosition : Position
    , nameField : String
    , greeting : String
    }


init : Model
init =
    { usersModel = Users.init
    , companiesModel = Companies.init
    , mousePosition = { x = 0, y = 0 }
    , nameField = ""
    , greeting = ""
    }
