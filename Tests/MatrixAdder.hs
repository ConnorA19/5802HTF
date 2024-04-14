{-# OPTIONS_GHC -F -pgmF htfpp #-}
module Tests.MatrixAdder (vectorMaker, htf_thisModulesTests) where

import Test.Framework

vectorMaker : Int -> [[Int]]
vectorMaker n = 
    matrix = [[1..x] | x <- [1..n]]
    -- vector = map (sum)


