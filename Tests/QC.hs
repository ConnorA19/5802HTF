{-# OPTIONS_GHC -F -pgmF htfpp #-}
module Tests.HUnit (htf_thisModulesTests) where

import Tests.MatrixAdder
import Test.Framework
import Test.Framework.TestInterface

prop_Recurse :: Int -> Bool
prop_Recurse n = (vectorMaker n + 1) == ((vectorMaker N) ++ (sum [1..(n+1)]))

prop_Len :: Int -> Bool
prop_Len n = (length (vectorMaker n)) == n

prop_Len_1 n = (prop_Len n) ==> (prop_Len (n+1))
