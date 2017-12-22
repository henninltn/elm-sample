module Model exposing (Msg(..), Model, init)

import Model.Companies as Companies
import Model.Users as Users


type Msg
    = UsersMsg Users.Msg
    | CompaniesMsg Companies.Msg


type alias Model =
    { usersModel : Users.Model
    , companiesModel : Companies.Model
    }


init : Model
init =
    { usersModel = Users.init
    , companiesModel = Companies.init
    }
