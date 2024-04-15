{-# OPTIONS_GHC -F -pgmF htfpp #-}
module Tests.Asserts (vectorVal, htf_thisModulesTests) where

import Tests.MatrixAdder
import Test.Framework

vectorVal = vectorMaker 100

test_vector1 = assertEqual (head vectorVal) 1
