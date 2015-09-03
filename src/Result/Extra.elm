module Result.Extra (withDefault) where
{-| Convenience functions for working with Results

# Defaults
@docs withDefault

-}


{-| Returns a `Result`'s contents if the `Result` is an `Ok`,
or the given default value if the `Result` is an `Err`.

This is basically the same as running `Result.toMaybe` and then `Maybe.withDefault`.

    0 == Result.withDefault 0 (String.toInt "this is not a valid integer!")
-}
withDefault : a -> Result x a -> a
withDefault default result =
    case result of
        Ok value ->
            value

        Err _ ->
            default
