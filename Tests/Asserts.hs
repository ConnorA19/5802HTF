{-# OPTIONS_GHC -F -pgmF htfpp #-}
module Tests.Asserts (funA, htf_thisModulesTests) where

import Tests.MatrixAdder
import Test.Framework

funA :: Int -> Int
funA x = x + 1

testMask = getMask()

test_funA1 = assertEqual (funA 41) 42

test_funA2 = assertEqual (funA 2) 3
