import Html exposing (Html, button, div, text)
import Html.App exposing (beginnerProgram)
import Html.Events exposing (onClick)

main =
  beginnerProgram { model = model, view = view, update = update }

-- Model
type alias Model = Int

model: Model
model =
  0

-- Update

type Msg = Increment | Decrement

update: Msg -> Model -> Model
update msg model = 
  case msg of
    Increment -> model + 1
    Decrement -> model - 1

-- View
view: Model -> Html Msg
view model =
  div [] [
    button [onClick Decrement] [text "-"],
    div [] [text (toString model)],
    button [onClick Increment] [text "+"]
  ]
