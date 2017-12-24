module Update exposing (update)

import Model exposing (Msg(..), Model)
import Update.Companies as Companies
import Update.Users as Users
import Update.PortsSample as PortsSample


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
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

        PortsSampleMsg subMsg ->
            let
                ( updatedPortsSampleModel, portsSampleCmd ) =
                    PortsSample.update subMsg model.portsSampleModel
            in
                ( { model | portsSampleModel = updatedPortsSampleModel }
                , Cmd.map PortsSampleMsg portsSampleCmd
                )
