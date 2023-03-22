module Main exposing (main)
import List exposing (..)


import Html

dropNothings : List (Maybe a) -> List a
dropNothings lst =
    let
        (result, _) =
            foldr
                (\m (acc, idx) ->
                    case m of
                        Just x ->
                            (x :: acc, idx)

                        Nothing ->
                            (acc, idx + 1)
                )
                ([], 0)
                lst
    in
    result


main =
    let
       
        _ = Debug.log "" (dropNothings [Nothing, Just 5, Nothing, Just 4, Nothing] )
    in
    -- Ignore the line below
    Html.text ""
