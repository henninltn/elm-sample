module View exposing (view)

import Html exposing (Html, div)
import Model exposing (Msg(..), Model)
import View.Companies as Companies
import View.Users as Users


view : Model -> Html Msg
view model =
    div []
        [ Html.map UsersMsg (Users.view model.usersModel)
        , Html.map CompaniesMsg (Companies.view model.companiesModel)
        ]
