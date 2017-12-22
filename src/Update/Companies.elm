module Update.Companies exposing (update)

import Model.Companies exposing (Msg(..), Model)


update : Msg -> Model -> ( Model, Cmd Msg )
update message model =
    case message of
        UpdateNameField str ->
            ( { model | nameField = str }, Cmd.none )

        Add ->
            ( { model
                | companies = { name = model.nameField } :: model.companies
                , nameField = ""
              }
            , Cmd.none
            )
