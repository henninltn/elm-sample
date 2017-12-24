module Subscriptions.PortsSample exposing (subscriptions)

import Model.PortsSample as PortsSample exposing (Msg(..), Model)
import Ports.Greeting as Greeting
import Ports.MyMouse as MyMouse


subscriptions : Model -> Sub Msg
subscriptions _ =
    Sub.batch
        [ MyMouse.clicks MouseMsg
        , Greeting.receiveGreeting ReceiveGreetingMsg
        ]
