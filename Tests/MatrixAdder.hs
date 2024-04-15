{-# OPTIONS_GHC -F -pgmF htfpp #-}
module Tests.MatrixAdder (vectorMaker, htf_thisModulesTests) where

import Test.Framework

vectorMaker :: Int -> [Int]
vectorMaker n = 
    map sum [[1..x] | x <- [1..n]]



