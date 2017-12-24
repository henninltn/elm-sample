module Update.Companies exposing (update)

import Model.Companies exposing (Msg(..), Model)


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        UpdateNameField str ->
            ( { model | nameField = str }, Cmd.none )

        Add ->
            ( { model
                | companies = { name = model.nameField } :: model.companies
                , nameField = ""
              }
            , Cmd.none
            )
