{-# OPTIONS_GHC -F -pgmF htfpp #-}
module Tests.HUnit (test_Asserts, htf_thisModulesTests) where

import Tests.MatrixAdder
import Test.Framework
import Test.Framework.TestInterface

vectorVal = vectorMaker 100

test_Asserts :: Assertion
test_Asserts = do
    assertEqual (head vectorVal) 1
    assertEqual (head vectorVal) 2
    assertBool ((head vectorVal) == 1)
