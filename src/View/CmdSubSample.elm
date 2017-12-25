module View.CmdSubSample exposing (view)

import Html exposing (Html, button, div, text)
import Html.Events exposing (onClick)
import Model.CmdSubSample exposing (Msg(..), Model)


view : Model -> Html Msg
view model =
    div []
        [ button [ onClick Roll ] [ text "Dice Roll" ]
        , div []
            [ text ("Result: " ++ toString model.rollResult) ]
        ]
