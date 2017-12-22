module Update.Users exposing (update)

import Model.Users exposing (Msg(..), Model)


update : Msg -> Model -> ( Model, Cmd Msg )
update message model =
    case message of
        UpdateNameField str ->
            ( { model | nameField = str }, Cmd.none )

        Add ->
            ( { model
                | users = { name = model.nameField } :: model.users
                , nameField = ""
              }
            , Cmd.none
            )
