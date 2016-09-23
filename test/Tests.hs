module Main where

import Test.Tasty
import Test.Tasty.HUnit

import FizzBuzz

fizzBuzzSuite :: TestTree
fizzBuzzSuite = testGroup "FizzBuzz tests"
              [ testCase "1 is one!" $ fizzBuzz 1 @?= "one!" ]

main = defaultMain fizzBuzzSuite

