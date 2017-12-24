module View.PortsSample exposing (view)

import Html exposing (Html, button, div, input, label, li, text, ul)
import Html.Attributes exposing (value)
import Html.Events exposing (onClick, onInput)
import Model.PortsSample exposing (Msg(..), Model)
import Ports.MyMouse exposing (Position)


view : Model -> Html Msg
view { mousePosition, nameField, greeting } =
    div []
        [ mousePositionView mousePosition
        , greetingView nameField greeting
        ]


mousePositionView : Position -> Html Msg
mousePositionView { x, y } =
    div []
        [ text
            ("mouse position: (" ++ (toString x) ++ ", " ++ (toString y) ++ ")")
        ]


greetingView : String -> String -> Html Msg
greetingView nameField greeting =
    div []
        [ label []
            [ text "name: " ]
        , input
            [ value nameField
            , onInput UpdateNameField
            ]
            []
        , button
            [ onClick (FetchGreetingMsg nameField) ]
            [ text "FetchGreeting" ]
        , div []
            [ text greeting ]
        ]
