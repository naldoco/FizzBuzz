module Main where

import Test.Tasty
import Test.Tasty.HUnit

import FizzBuzz

lessThan20Answers = words ("one two three four five six seven eight nine ten " ++
                           "eleven twelve thirteen fourteen fifteen sixteen "  ++
                           "seventeen eighteen nineteen")

fizzBuzzSuite :: TestTree
fizzBuzzSuite = testGroup "FizzBuzz tests"
                [ testGroup "fizzBuzz" $
                  [ testCase "1 is one!" $ fizzBuzz 1 @?= "one!"
                  , testCase "2 is two!" $ fizzBuzz 2 @?= "two!"
                  ]
                , testGroup "lessThan20" $
                  map ( \(n, t) -> testCase (show n ++ " is " ++ t) $ lessThan20 n @?= t)
                      (zip [1..] lessThan20Answers)
                ]

main = defaultMain fizzBuzzSuite

