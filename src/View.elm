module View exposing (view)

import Html exposing (Html, button, div, input, label, li, text, ul)
import Html.Attributes exposing (value)
import Html.Events exposing (onClick, onInput)
import Model exposing (Msg(..), Model)
import Ports.MyMouse exposing (Position)
import View.Companies as Companies
import View.Users as Users


view : Model -> Html Msg
view model =
    div []
        [ Html.map UsersMsg (Users.view model.usersModel)
        , Html.map CompaniesMsg (Companies.view model.companiesModel)
        , mousePositionView model.mousePosition
        , greetingView model.nameField model.greeting
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
