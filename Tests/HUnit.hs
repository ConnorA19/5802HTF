{-# OPTIONS_GHC -F -pgmF htfpp #-}
module Tests.HUnit (htf_thisModulesTests) where

import Tests.MatrixAdder
import Test.Framework
import Test.Framework.TestInterface

vectorVal = vectorMaker 100

-- test_Asserts :: Assertion
-- test_Asserts = do
    --Should Pass
    
    
    --Should Fail
    -- assertEqual (head vectorVal) 2
    -- assertBool ((head vectorVal) == 2)
    -- assertNotEqual(head vectorVal) 1
    -- assertListsEqualAsSets vectorVal [div (x * (x)) 2 | x <- [1..100]] 
    -- assertNotEmpty []
    -- assertEmpty vectorVal
    -- assertElem 2 vectorVal

test_AssertEqual = do
    assertEqual (head vectorVal) 1

test_AssertBool = do
    assertBool ((head vectorVal) == 1)

test_AssertNotEqual = do
    assertNotEqual(head vectorVal) 2

test_AssertListsEqualAsSets = do
    assertListsEqualAsSets vectorVal [div (x * (x+1)) 2 | x <- [1..100]] 

test_assertNotEmpty = do
    assertNotEmpty vectorVal

test_AssertEmpty = do
    assertEmpty []

test_assertElem = do
    assertElem 10 vectorVal

test_assertThrowsSome = do
    assertThrowsSome (div 1 0)
-- test_AssertPretty = do
    -- assertEqualPretty (1 == 1)
