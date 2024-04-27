module Main where

-- A simple main program. The program reads the contents of the
-- given input file, checks whether the content is a number, and
-- then ouputs the results of apply funA and funB to this number.

import Tests.MatrixAdder

import Test.Framework
import System.Environment (getArgs)
import System.Exit
import System.IO

isNumeric :: String -> Bool
isNumeric str = case reads str :: [(Double, String)] of
               [(_, "")] -> True
               _         -> False

main =
    do args <- getArgs
       case args of
         ["-h"] -> usage
         ["--help"] -> usage
         [file] -> doWork file
         _ -> usage
    where
      usage =
          do hPutStrLn stderr "Usage: sample [-h|--help] FILE"
             exitWith (ExitFailure 1)
      doWork file =
          do s <- readFile file
             r = reads s
             if isNumeric r
               then do putStrLn (show (vectorMaker n))
                       exitWith ExitSuccess
               else do hPutStrLn stderr "invalid input"
                       exitWith (ExitFailure 1)

