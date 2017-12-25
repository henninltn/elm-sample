module View.PortsSample exposing (view)

import Html exposing (..)
import Html.Attributes exposing (value)
import Html.Events exposing (onClick, onInput)
import Model.PortsSample exposing (Msg(..), Model)
import Ports.MyMouse exposing (Position)


view : Model -> Html Msg
view model =
    div []
        [ mousePositionView model.mousePosition
        , greetingView model.nameField model.greeting
        ]


mousePositionView : Position -> Html Msg
mousePositionView { x, y } =
    div []
        [ text
            ("MyMouse Position: (" ++ (toString x) ++ ", " ++ (toString y) ++ ")")
        ]


greetingView : String -> String -> Html Msg
greetingView nameField greeting =
    div []
        [ label []
            [ text "Name: " ]
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
