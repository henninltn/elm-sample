module Update exposing (update)

import Model exposing (Msg(..), Model)
import Update.Companies as Companies
import Update.Users as Users


update : Msg -> Model -> ( Model, Cmd Msg )
update message model =
    case message of
        UsersMsg subMsg ->
            let
                ( updatedUsersModel, usersCmd ) =
                    Users.update subMsg model.usersModel
            in
                ( { model | usersModel = updatedUsersModel }
                , Cmd.map UsersMsg usersCmd
                )

        CompaniesMsg subMsg ->
            let
                ( updatedCompaniesModel, companiesCmd ) =
                    Companies.update subMsg model.companiesModel
            in
                ( { model | companiesModel = updatedCompaniesModel }
                , Cmd.map CompaniesMsg companiesCmd
                )
