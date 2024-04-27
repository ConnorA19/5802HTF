{-# OPTIONS_GHC -F -pgmF htfpp #-}
module Tests.HUnitPretty (htf_thisModulesTests) where

import Tests.MatrixAdder
import Test.Framework
import Test.Framework.TestInterface

vectorVal = vectorMaker 100

test_AssertEqualPretty = do
    assertEqualPretty (2 :: Int) (2 :: Int)

