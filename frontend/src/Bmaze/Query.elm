-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Bmaze.Query exposing (..)

import Bmaze.InputObject
import Bmaze.Interface
import Bmaze.Object
import Bmaze.Scalar
import Bmaze.ScalarCodecs
import Bmaze.Union
import Graphql.Internal.Builder.Argument as Argument exposing (Argument)
import Graphql.Internal.Builder.Object as Object
import Graphql.Internal.Encode as Encode exposing (Value)
import Graphql.Operation exposing (RootMutation, RootQuery, RootSubscription)
import Graphql.OptionalArgument exposing (OptionalArgument(..))
import Graphql.SelectionSet exposing (SelectionSet)
import Json.Decode as Decode exposing (Decoder)


type alias BookRequiredArguments =
    { code : Bmaze.ScalarCodecs.Id }


{-| get book
-}
book :
    BookRequiredArguments
    -> SelectionSet decodesTo Bmaze.Object.Book
    -> SelectionSet decodesTo RootQuery
book requiredArgs____ object____ =
    Object.selectionForCompositeField "book" [ Argument.required "code" requiredArgs____.code (Bmaze.ScalarCodecs.codecs |> Bmaze.Scalar.unwrapEncoder .codecId) ] object____ identity


type alias BooksOptionalArguments =
    { title : OptionalArgument String }


{-| get all books
-}
books :
    (BooksOptionalArguments -> BooksOptionalArguments)
    -> SelectionSet decodesTo Bmaze.Object.Book
    -> SelectionSet (List decodesTo) RootQuery
books fillInOptionals____ object____ =
    let
        filledInOptionals____ =
            fillInOptionals____ { title = Absent }

        optionalArgs____ =
            [ Argument.optional "title" filledInOptionals____.title Encode.string ]
                |> List.filterMap identity
    in
    Object.selectionForCompositeField "books" optionalArgs____ object____ (identity >> Decode.list)


type alias SceneRequiredArguments =
    { code : String
    , sceneno : Int
    }


{-| get scene
-}
scene :
    SceneRequiredArguments
    -> SelectionSet decodesTo Bmaze.Object.Scene
    -> SelectionSet decodesTo RootQuery
scene requiredArgs____ object____ =
    Object.selectionForCompositeField "scene" [ Argument.required "code" requiredArgs____.code Encode.string, Argument.required "sceneno" requiredArgs____.sceneno Encode.int ] object____ identity
