module Model exposing (Msg(..), Model, init)

import Model.CmdSubSample as CmdSubSample
import Model.Companies as Companies
import Model.PortsSample as PortsSample
import Model.Users as Users


type Msg
    = UsersMsg Users.Msg
    | CompaniesMsg Companies.Msg
    | PortsSampleMsg PortsSample.Msg
    | CmdSubSampleMsg CmdSubSample.Msg


type alias Model =
    { usersModel : Users.Model
    , companiesModel : Companies.Model
    , portsSampleModel : PortsSample.Model
    , cmdSubSampleModel : CmdSubSample.Model
    }


init : Model
init =
    { usersModel = Users.init
    , companiesModel = Companies.init
    , portsSampleModel = PortsSample.init
    , cmdSubSampleModel = CmdSubSample.init
    }
