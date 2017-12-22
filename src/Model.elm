module Model exposing (Msg(..), Model, init, User, Company)


type Msg
    = UpdateUserNameField String
    | AddUser
    | UpdateCompanyNameField String
    | AddCompany


type alias User =
    { name : String }


type alias Company =
    { name : String }


type alias Model =
    { userNameField : String
    , companyNameField : String
    , users : List User
    , companies : List Company
    }


init : ( Model, Cmd Msg )
init =
    ( { userNameField = ""
      , companyNameField = ""
      , users = []
      , companies = []
      }
    , Cmd.none
    )
