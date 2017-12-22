module Main exposing (main)

import Html exposing (program, div, Html, text, input, button)
import Html.Attributes exposing (value)
import Html.Events exposing (onInput, onClick)


type Msg
    = UpdateUserNameField String
    | AddUser
    | UpdateCompanyNameField String
    | AddCompany


type alias User =
    { name : String }


type alias Company =
    { name : String }


type alias Model =
    { userNameField : String
    , companyNameField : String
    , users : List User
    , companies : List Company
    }


init : ( Model, Cmd Msg )
init =
    ( { userNameField = ""
      , companyNameField = ""
      , users = []
      , companies = []
      }
    , Cmd.none
    )


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


userView : User -> Html Msg
userView user =
    div []
        [ text "User: "
        , text user.name
        ]


companyView : Company -> Html Msg
companyView company =
    div []
        [ text "Company: "
        , text company.name
        ]


view : Model -> Html Msg
view model =
    div []
        [ div []
            [ input [ value model.userNameField, onInput UpdateUserNameField ] []
            , button [ onClick AddUser ] [ text "Add" ]
            ]
        , div []
            (model.users |> List.map userView)
        , div []
            [ input [ value model.companyNameField, onInput UpdateCompanyNameField ] []
            , button [ onClick AddCompany ] [ text "Add" ]
            ]
        , div []
            (model.companies |> List.map companyView)
        ]


main : Program Never Model Msg
main =
    program
        { init = init
        , view = view
        , update = update
        , subscriptions = (\_ -> Sub.none)
        }
