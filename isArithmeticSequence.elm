module Main exposing (main)
import List exposing (..)


import Html


isArithmeticSequence : Int -> List Int -> Bool
isArithmeticSequence d lst =
    let
        (_, result) =
            foldr
                (\current (prev, acc) ->
                    if prev == Nothing then
                        (Just current, acc)
                    else
                        let
                            diff =
                                current - Maybe.withDefault 0 prev
                        in
                        if diff == d then
                            (Just current, acc)
                        else
                            (Nothing, False)
                )
                (Nothing, True)
                lst
    in
    result


main =
    let
       
        _ = Debug.log "" (isArithmeticSequence 3 [])
        _ = Debug.log "" (isArithmeticSequence 3 [])
        _ = Debug.log "" (isArithmeticSequence 3 [])
        _ = Debug.log "" (isArithmeticSequence 3 [])
        
    in
    -- Ignore the line below
    Html.text ""
