module Update exposing (update)

import Model exposing (Msg(..), Model)


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        UpdateUserNameField str ->
            ( { model | userNameField = str }, Cmd.none )

        AddUser ->
            ( { model
                | users = { name = model.userNameField } :: model.users
                , userNameField = ""
              }
            , Cmd.none
            )

        UpdateCompanyNameField str ->
            ( { model | companyNameField = str }, Cmd.none )

        AddCompany ->
            ( { model
                | companies = { name = model.companyNameField } :: model.companies
                , companyNameField = ""
              }
            , Cmd.none
            )
