module Update.PortsSample exposing (update)

import Model.PortsSample exposing (Msg(..), Model)
import Ports.Greeting as Greeting


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        MouseMsg position ->
            ( { model | mousePosition = position }, Cmd.none )

        UpdateNameField str ->
            ( { model | nameField = str }, Cmd.none )

        FetchGreetingMsg name ->
            ( model, Greeting.fetchGreeting name )

        ReceiveGreetingMsg greeting ->
            ( { model | greeting = greeting }, Cmd.none )
