module View exposing (view)

import Html exposing (Html, div)
import Model exposing (Msg(..), Model)
import View.CmdSubSample as CmdSubSample
import View.Companies as Companies
import View.Users as Users
import View.PortsSample as PortsSample


view : Model -> Html Msg
view { usersModel, companiesModel, portsSampleModel, cmdSubSampleModel } =
    div []
        [ Html.map UsersMsg (Users.view usersModel)
        , Html.map CompaniesMsg (Companies.view companiesModel)
        , Html.map PortsSampleMsg (PortsSample.view portsSampleModel)
        , Html.map CmdSubSampleMsg (CmdSubSample.view cmdSubSampleModel)
        ]
