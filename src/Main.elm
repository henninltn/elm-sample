module Main exposing (main)

import Html exposing (program)
import Model exposing (Msg, Model, init)
import Ports.Console as Console
import Subscriptions exposing (subscriptions)
import Update exposing (update)
import View exposing (view)


main : Program Never Model Msg
main =
    program
        { init = ( init, Console.log "Hellow, world!" )
        , view = view
        , update = update
        , subscriptions = subscriptions
        }
