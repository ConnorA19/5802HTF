{-# OPTIONS_GHC -F -pgmF htfpp #-}
module Main where

-- The main test program.

import Test.Framework
import Test.Framework.BlackBoxTest
import {-@ HTF_TESTS @-} Tests.HUnit

main = putStrLn "Hello World"
    -- do bbts <- blackBoxTests "bbt-dir" "../scripts/run-sample" ".num" defaultBBTArgs
       -- htfMain (htf_importedTests ++ [makeTestSuite "bbts" bbts])
