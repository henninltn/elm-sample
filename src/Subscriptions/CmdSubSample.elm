module Subscriptions.CmdSubSample exposing (subscriptions)

import Keyboard
import Mouse
import Model.CmdSubSample exposing (Msg(..), Model)


subscriptions : Model -> Sub Msg
subscriptions _ =
    Sub.batch
        [ Mouse.clicks MouseMsg
        , Keyboard.downs KeyMsg
        ]
