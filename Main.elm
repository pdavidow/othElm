module Main exposing (..)

import Html exposing (Html, div, span, header, main_, section, article, a, button, text, input, h1, h2, label, programWithFlags)
import Html.Attributes as A exposing (attribute, property, class, checked, style, type_, value, href, target, disabled)
import Tachyons exposing (classes, tachyons)
import Tachyons.Classes as T exposing (..)

--import Model exposing (Model)
------------------------------------------------

type alias Model = {}

type Msg
    = A


init : ( Model, Cmd Msg )
init =
    ( {}, Cmd.none )


view : Model -> Html Msg
view model =
    div [ classes
            []
        ]
        [ tachyons.css
        , viewHeader model
        , viewMain model
        ]


viewHeader : Model -> Html Msg
viewHeader model =
    header
        [ classes
            [ T.bg_green
            , T.fixed
            , T.w_100
            , T.h3
            , T.f2
            , T.ph3
            , T.pv2
            , T.b
            , T.pl2
            , T.pr2
            , T.z_max
            , T.tc
            ]
        ]
        [ span
            [ classes
                [ T.black
                , T.bg_light_green
                , T.hover_light_green
                , T.hover_bg_black
                ]
            ]
            [ text "Othello" ]
        , span
            [ classes
                [ T.fr
                , T.pr2
                , T.pt2
                , T.f4
                , T.grow_large
                ]
            ]
            [ a
                [ href "https://github.com/pdavidow/othElm", target "_blank" ]
                [ text "Github" ]
            ]
        ]


viewMain : Model -> Html Msg
viewMain model =
    main_
        [ classes
            [ T.pt5
            , T.pb0
            , T.w_100
            ]
        ]
        [ 
        ]


update : Msg -> Model -> (Model, Cmd Msg)
update msg model =       
    model ! [] 


subscriptions : Model -> Sub Msg
subscriptions model =
    Sub.none


main : Program Never Model Msg
main =
  Html.program
    { init = init
    , view = view
    , update = update
    , subscriptions = subscriptions
    }    