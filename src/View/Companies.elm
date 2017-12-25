module View.Companies exposing (view)

import Html exposing (..)
import Html.Attributes exposing (value)
import Html.Events exposing (onClick, onInput)
import Model.Companies exposing (Msg(..), Model, Company)


view : Model -> Html Msg
view model =
    div []
        [ div []
            [ input
                [ value model.nameField
                , onInput UpdateNameField
                ]
                []
            , button [ onClick Add ] [ text "Add" ]
            ]
        , div []
            (model.companies |> List.map companyView)
        ]


companyView : Company -> Html Msg
companyView company =
    div []
        [ text "Company: "
        , text company.name
        ]
