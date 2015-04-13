module Lltravel where

import Html (..)
import Html.Attributes (..)
import Html.Events (..)
import Signal

-- MODEL

type alias Model = Int

-- UPDATE

update : Model -> Model

-- VIEW

view : Model -> Html
view model =
    div []
        [ div [siteStyle] [ text "This is the L&L Travel Website" ] ]

siteStyle : Attributes
siteStyle =
    style
        [ ("font-size", "20px")
        , ("font-family", "monospace")
        , ("display", "inline-block")
        , ("width", "50px")
        , ("text-align", "center")
        ]

-- SIGNALS

main : Signal Html
main = 
    Signal.map view model

--model : Signal Model
--model =
--    Signal.foldp update 0 (Signal.subscribe actionChannel)

--actionChannel : Signal.Channel Action
--actionChannel =
--    Signal.channel Increment

