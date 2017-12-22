module View exposing (view)

import Html exposing (Html, button, div, input, text)
import Html.Attributes exposing (value)
import Html.Events exposing (onClick, onInput)
import Model exposing (Msg(..), Model, User, Company)


userView : User -> Html Msg
userView user =
    div []
        [ text "User: "
        , text user.name
        ]


companyView : Company -> Html Msg
companyView company =
    div []
        [ text "Company: "
        , text company.name
        ]


view : Model -> Html Msg
view model =
    div []
        [ div []
            [ input [ value model.userNameField, onInput UpdateUserNameField ] []
            , button [ onClick AddUser ] [ text "Add" ]
            ]
        , div []
            (model.users |> List.map userView)
        , div []
            [ input [ value model.companyNameField, onInput UpdateCompanyNameField ] []
            , button [ onClick AddCompany ] [ text "Add" ]
            ]
        , div []
            (model.companies |> List.map companyView)
        ]
