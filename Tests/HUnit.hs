{-# OPTIONS_GHC -F -pgmF htfpp #-}
module Tests.HUnit (test_Asserts, htf_thisModulesTests) where

import Tests.MatrixAdder
import Test.Framework
import Test.Framework.TestInterface

vectorVal = vectorMaker 100

test_Asserts :: Assertion
test_Asserts = do
    --Should Pass
    assertEqual (head vectorVal) 1
    assertBool ((head vectorVal) == 1)
    assertNotEqual(head vectorVal) 2
    assertListsEqualAsSets vectorVal [div (x * (x+1)) 2 | x <- [1..100]] 
    assertNotEmpty vectorVal
    assertEmpty []
    assertElem 10 vectorVal
    -- assertThrows (div 1 0) (Exception "divide by zero")

    --Should Fail
    assertEqual (head vectorVal) 2
    assertBool ((head vectorVal) == 2)
    assertNotEqual(head vectorVal) 1
    assertListsEqualAsSets vectorVal [div (x * (x)) 2 | x <- [1..100]] 
    assertNotEmpty []
    assertEmpty vectorVal
    assertElem 2 vectorVal
