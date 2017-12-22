module Main exposing (main)

import Html exposing (program)
import Model exposing (Msg, Model, init)
import Subscriptions exposing (subscriptions)
import Update exposing (update)
import View exposing (view)


main : Program Never Model Msg
main =
    program
        { init = ( init, Cmd.none )
        , view = view
        , update = update
        , subscriptions = subscriptions
        }
