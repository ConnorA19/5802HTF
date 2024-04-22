{-# OPTIONS_GHC -F -pgmF htfpp #-}
module Tests.HUnit (htf_thisModulesTests) where

import Tests.MatrixAdder
import Test.Framework
import Test.Framework.TestInterface

vectorVal = vectorMaker 100

test_AssertEqual = do
    assertEqual (head vectorVal) 1

test_AssertBool = do
    assertBool ((head vectorVal) == 1)

test_AssertNotEqual = do
    assertNotEqual(head vectorVal) 2

test_AssertListsEqualAsSets = do
    assertListsEqualAsSets vectorVal [div (x * (x+1)) 2 | x <- [1..100]] 

test_AssertNotEmpty = do
    assertNotEmpty vectorVal

test_AssertEmpty = do
    assertEmpty []

test_AssertElem = do
    assertElem 10 vectorVal

test_AssertThrowsSome = do
    assertThrowsSome (div 1 0)

test_AssertEqualFail = do
    assertEqual (head vectorVal) 2

test_AssertBoolFail = do
    assertBool ((head vectorVal) == 2)

test_AssertNotEqualFail = do
    assertNotEqual(head vectorVal) 1

test_AssertListsEqualAsSetsFail = do
    assertListsEqualAsSets vectorVal [div (x * (x)) 2 | x <- [1..100]] 

test_AssertNotEmptyFail = do
    assertNotEmpty []

test_AssertEmptyFail = do
    assertEmpty vectorVal

test_AssertElemFail = do
    assertElem 2 vectorVal

test_AssertThrowsSomeFail = do
    assertThrowsSome (div 1 1)

test_AssertEqualPretty = do
    assertEqualPretty (2 :: Int) (2 :: Int)

test_AssertVerbose = do
    assertEqualVerbose "Fail 2 == 2" 2 2

test_AssertVerboseFail = do
    assertEqualVerbose "1 does not equal 2" 1 2

    
