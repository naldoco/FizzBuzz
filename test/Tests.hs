module Main where

import Test.Tasty
import Test.Tasty.HUnit

import FizzBuzz

fizzBuzzSuite :: TestTree
fizzBuzzSuite = testGroup "FizzBuzz tests"
                [ testGroup "fizzBuzz" $
                  [ testCase "1 is one!" $ fizzBuzz 1 @?= "one!"
                  , testCase "2 is two!" $ fizzBuzz 2 @?= "two!"
                  ]
                , testGroup "lessThan20" $
                  [ testCase "1 is one"  $ lessThan20 1 @?= "one"
                  , testCase "2 is two"  $ lessThan20 2 @?= "two"
                  ]
                ]

main = defaultMain fizzBuzzSuite
