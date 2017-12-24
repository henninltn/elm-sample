module Subscriptions exposing (subscriptions)

import Model exposing (Model, Msg(..))
import Ports.Greeting as Greeting
import Ports.MyMouse as MyMouse


subscriptions : Model -> Sub Msg
subscriptions _ =
    Sub.batch
        [ MyMouse.clicks MouseMsg
        , Greeting.receiveGreeting ReceiveGreetingMsg
        ]
