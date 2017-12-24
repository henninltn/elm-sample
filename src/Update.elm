module Update exposing (update)

import Model exposing (Msg(..), Model)
import Update.Companies as Companies
import Update.Users as Users
import Ports.Greeting as Greeting


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

        MouseMsg position ->
            ( { model | mousePosition = position }, Cmd.none )

        UpdateNameField str ->
            ( { model | nameField = str }, Cmd.none )

        FetchGreetingMsg name ->
            ( model, Greeting.fetchGreeting name )

        ReceiveGreetingMsg greeting ->
            ( { model | greeting = greeting }, Cmd.none )
