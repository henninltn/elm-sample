port module Ports.Greeting exposing (fetchGreeting, receiveGreeting)


port fetchGreeting : String -> Cmd msg


port receiveGreeting : (String -> msg) -> Sub msg
