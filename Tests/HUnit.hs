{-# OPTIONS_GHC -F -pgmF htfpp #-}
module Tests.HUnit (test_Asserts, htf_thisModulesTests) where

import Tests.MatrixAdder
import Test.Framework
import Test.Framework.TestInterface

vectorVal = vectorMaker 100

test_Asserts :: Assertion
test_Asserts = do
    assertEqual (head vectorVal) 1
    assertBool ((head vectorVal) == 1)

    --Should Fail
    assertEqual (head vectorVal) 1

