{-# OPTIONS_GHC -F -pgmF htfpp #-}
module Main where

-- The main test program.

import Test.Framework
import Test.Framework.BlackBoxTest
import {-@ HTF_TESTS @-} Tests.BBT

main :: IO ()
main =
    -- do bbts <- blackBoxTests "bbt-dir" "../scripts/run-sample" ".num" defaultBBTArgs
       -- htfMain (htf_importedTests ++ [makeTestSuite "bbts" bbts])
    -- do bbts <- blackBoxTests "bbt-dir" "./scripts/runBBT" ".num" defaultBBTArgs
       -- htfMain (htf_importedTests ++ [makeTestSuite "bbts" bbts])
     do bbts <- blackBoxTests "bbt-dir" "./dist-newstyle/build/x86_64-linux/ghc-9.4.8/HTF-Test-Talk-0.1.0.0/t/Main/build/Main/Main" ".num" defaultBBTArgs
        htfMain (htf_importedTests ++ [makeTestSuite "bbts" bbts])


-- ./dist-newstyle/build/x86_64-linux/ghc-9.4.8/HTF-Test-Talk-0.1.0.0/t/Main/build/Main/Main

