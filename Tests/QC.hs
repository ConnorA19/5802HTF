{-# OPTIONS_GHC -F -pgmF htfpp #-}
module Tests.QC (htf_thisModulesTests) where

import Tests.MatrixAdder
import Test.Framework
import Test.Framework.TestInterface

prop_addition :: Int -> Bool
prop_addition n = (n + n) == (n * 2)

prop_Len :: Int -> Bool
prop_Len n = ((length (vectorMaker n)) == n) || (n <= 0)

prop_Len_1 n = (prop_Len n) ==> (prop_Len (n+1))
