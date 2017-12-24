module Update.Users exposing (update)

import Model.Users exposing (Msg(..), Model)


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        UpdateNameField str ->
            ( { model | nameField = str }, Cmd.none )

        Add ->
            ( { model
                | users = { name = model.nameField } :: model.users
                , nameField = ""
              }
            , Cmd.none
            )
