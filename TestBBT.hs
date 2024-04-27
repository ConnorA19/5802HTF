{-# OPTIONS_GHC -F -pgmF htfpp #-}
module Main where

-- The main test program.

import Test.Framework
import Test.Framework.BlackBoxTest
import {-@ HTF_TESTS @-} Tests.BBT
defaultBBTArg = BBTArgs { bbtArgs_stdinSuffix    = ".in"
                         , bbtArgs_stdoutSuffix   = ".out"
                         , bbtArgs_stderrSuffix   = ".err"
                         , bbtArgs_dynArgsName    = "BBTArgs"
                         , bbtArgs_stdoutDiff     = defaultDiff
                         , bbtArgs_stderrDiff     = defaultDiff
                         , bbtArgs_verbose        = True}
main :: IO ()
main =
    -- do bbts <- blackBoxTests "bbt-dir" "../scripts/run-sample" ".num" defaultBBTArgs
       -- htfMain (htf_importedTests ++ [makeTestSuite "bbts" bbts])
    -- do bbts <- blackBoxTests "bbt-dir" "./scripts/runBBT" ".num" defaultBBTArgs
       -- htfMain (htf_importedTests ++ [makeTestSuite "bbts" bbts])
     do bbts <- blackBoxTests "bbt-dir" "./dist-newstyle/build/x86_64-linux/ghc-9.4.8/HTF-Test-Talk-0.1.0.0/t/Main/build/Main/Main" ".num" defaultBBTArg
        -- htfMain (htf_importedTests ++ [makeTestSuite "bbts" bbts])
        htfMain (makeTestSuite "bbts" bbts)


-- ./dist-newstyle/build/x86_64-linux/ghc-9.4.8/HTF-Test-Talk-0.1.0.0/t/Main/build/Main/Main

