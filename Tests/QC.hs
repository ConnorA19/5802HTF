{-# OPTIONS_GHC -F -pgmF htfpp #-}
module Tests.HUnit (, htf_thisModulesTests) where

import Tests.MatrixAdder
import Test.Framework
import Test.Framework.TestInterface

prop_Recurse :: [Int] -> Bool
prop_Recurse n = (vectorMaker n + 1) == ((vectorMaker N) ++ (sum [1..(n+1)]))
