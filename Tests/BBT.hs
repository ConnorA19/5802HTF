{-# OPTIONS_GHC -F -pgmF htfpp #-}
module Tests.BBT (vectorVal, htf_thisModulesTests) where

import Tests.MatrixAdder
import Test.Framework

vectorVal = vectorMaker 100
