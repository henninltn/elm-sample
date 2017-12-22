module View.Companies exposing (view)

import Html exposing (Html, button, div, input, text)
import Html.Attributes exposing (value)
import Html.Events exposing (onClick, onInput)
import Model.Companies exposing (Msg(..), Model, Company)


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
