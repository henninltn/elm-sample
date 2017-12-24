port module Ports.MyMouse exposing (Position, clicks)


type alias Position =
    { x : Int
    , y : Int
    }


port clicks : (Position -> msg) -> Sub msg
