module View.CmdSubSample exposing (view)

import Char exposing (KeyCode)
import Html exposing (..)
import Html.Events exposing (onClick)
import Model.CmdSubSample exposing (Msg(..), Model)
import Mouse exposing (Position)


view : Model -> Html Msg
view model =
    div []
        [ diceRollView model.rollResult
        , mousePositionView model.mousePosition
        , downedKeyView model.downedKey
        ]


diceRollView : Int -> Html Msg
diceRollView rollResult =
    div []
        [ button [ onClick Roll ] [ text "Dice Roll" ]
        , div []
            [ text ("Result: " ++ toString rollResult) ]
        ]


mousePositionView : Position -> Html Msg
mousePositionView { x, y } =
    div []
        [ text ("Mouse Position: (" ++ toString x ++ ", " ++ toString y ++ ")") ]


downedKeyView : Maybe KeyCode -> Html Msg
downedKeyView maybeKeyCode =
    let
        keyStr =
            maybeKeyCode
                |> Maybe.andThen
                    (\keyCode ->
                        Just
                            ("'"
                                ++ (keyCode |> Char.fromCode |> toString)
                                ++ "'"
                            )
                    )
                |> Maybe.withDefault "Nothing"
    in
        div []
            [ text (keyStr ++ " is downed.") ]
