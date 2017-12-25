module Update.CmdSubSample exposing (update)

import Model.CmdSubSample exposing (Msg(..), Model)
import Random


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        Roll ->
            ( model, Random.generate OnResult (Random.int 1 6) )

        OnResult res ->
            ( { model | rollResult = res }, Cmd.none )
