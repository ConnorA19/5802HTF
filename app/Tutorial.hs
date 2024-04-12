{-# OPTIONS_GHC -F -pgmF htfpp #-}
module MyModule (
    -- some more exports here

    htf_thisModulesTests -- all test cases are automatically collected in htf_thisModulesTests

) where

import Test.Framework

-- Each top-level definition whose name starts with test_ defines a unit test.
test_nonEmpty :: Assertion
test_nonEmpty = do
  assertEqual [1] (reverse [1])
  assertEqual [3,2,1] (reverse [1,2,3])


-- Each top-level definition whose name starts with prop_ defines a quickcheck property.
prop_reverse :: [Int] -> Bool
prop_reverse xs = xs == (reverse (reverse xs))
