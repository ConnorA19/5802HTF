{-# OPTIONS_GHC -F -pgmF htfpp #-}
module Tests.TestHistory (vectorVal, htf_thisModulesTests) where

import Tests.MatrixAdder
import Test.Framework

vectorVal = vectorMaker 100

