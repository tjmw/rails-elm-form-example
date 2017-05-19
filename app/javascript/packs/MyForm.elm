module MyForm exposing (..)

import Html exposing (Html, form, input, label, text)
import Html.Attributes exposing (action, for, id, method, name, type_)

-- MODEL

type alias Model =
  {
  }

-- INIT

init : (Model, Cmd Message)
init =
  (Model, Cmd.none)

-- VIEW

view : Model -> Html Message
view model =
  form [ action "/users", method "post"]
      [ label [ for "name" ] [ text "name" ]
      , input [ type_ "text", name "name", id "name" ] []
      , input [ type_ "submit" ] []
      ]


-- MESSAGE

type Message
  = None

-- UPDATE

update : Message -> Model -> (Model, Cmd Message)
update message model =
  (model, Cmd.none)

-- SUBSCRIPTIONS

subscriptions : Model -> Sub Message
subscriptions model =
  Sub.none

-- MAIN

main : Program Never Model Message
main =
  Html.program
    {
      init = init,
      view = view,
      update = update,
      subscriptions = subscriptions
    }
