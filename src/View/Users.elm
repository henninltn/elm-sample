module View.Users exposing (view)

import Html exposing (..)
import Html.Attributes exposing (value)
import Html.Events exposing (onClick, onInput)
import Model.Users exposing (Msg(..), Model, User)


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
            (model.users |> List.map userView)
        ]


userView : User -> Html Msg
userView user =
    div []
        [ text "User: "
        , text user.name
        ]
