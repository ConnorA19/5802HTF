{-# OPTIONS_GHC -F -pgmF htfpp #-}
module Tests.Asserts (asserts, htf_thisModulesTests) where

import Tests.MatrixAdder
import Test.Framework

vector = vectorMaker 100

asserts :: Int
asserts = 1

