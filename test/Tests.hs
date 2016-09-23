module Main where

import Test.Tasty
import Test.Tasty.HUnit

import FizzBuzz

lessThan20Answers = words ("one two three four five six seven eight nine ten " ++
                           "eleven twelve thirteen fourteen fifteen sixteen "  ++
                           "seventeen eighteen nineteen")
tensAnswers = words ("twenty thirty forty fifty sixty seventy eighty ninety")

fizzBuzzSuite :: TestTree
fizzBuzzSuite = testGroup "FizzBuzz tests"
                [ testGroup "fizzBuzz  -- Parcial test" $
                  [ testCase   "1 is one!"        $ fizzBuzz   1 @?= "one!"
                  , testCase   "2 is two!"        $ fizzBuzz   2 @?= "two!"
                  , testCase   "3 is fizz!"       $ fizzBuzz   3 @?= "fizz!"
                  , testCase   "5 is buzz!"       $ fizzBuzz   5 @?= "buzz!"
                  , testCase  "10 is buzz!"       $ fizzBuzz  10 @?= "buzz!"
                  , testCase  "11 is eleven!"     $ fizzBuzz  11 @?= "eleven!"
                  , testCase  "15 is fizzbuzz!"   $ fizzBuzz  15 @?= "fizzbuzz!"
                  , testCase  "19 is nineteen!"   $ fizzBuzz  19 @?= "nineteen!"
                  , testCase  "25 is buzz!"       $ fizzBuzz  25 @?= "buzz!"
                  , testCase  "50 is buzz!"       $ fizzBuzz  50 @?= "buzz!"
                  , testCase  "60 is fizzbuzz!"   $ fizzBuzz  60 @?= "fizzbuzz!"
                  , testCase  "90 is fizzbuzz!"   $ fizzBuzz  90 @?= "fizzbuzz!"
                  , testCase  "91 is ninety one!" $ fizzBuzz  91 @?= "ninety one!"
                  , testCase  "99 is fizz!"       $ fizzBuzz  99 @?= "fizz!"
                  , testCase "100 is buzz!"       $ fizzBuzz 100 @?= "buzz!"
                  ]
                , testGroup "lessThan20" $
                  map ( \(n, t) -> testCase (show n ++ " is " ++ t) $ lessThan20 n @?= t)
                      (zip [1..] lessThan20Answers)
                , testGroup "tens" $
                  map ( \(n, t) -> testCase (show n ++ " is " ++ t) $ tens n @?= t)
                      (zip [2..] tensAnswers)
                , testGroup "number  -- Parcial test" $
                  [ testCase   "1 is one"         $ number   1 @?= "one"
                  , testCase   "5 is five"        $ number   5 @?= "five"
                  , testCase  "10 is ten"         $ number  10 @?= "ten"
                  , testCase  "11 is eleven"      $ number  11 @?= "eleven"
                  , testCase  "19 is nineteen"    $ number  19 @?= "nineteen"
                  , testCase  "25 is twenty five" $ number  25 @?= "twenty five"
                  , testCase  "50 is fifty"       $ number  50 @?= "fifty"
                  , testCase  "59 is fifty nine"  $ number  59 @?= "fifty nine"
                  , testCase  "90 is ninety"      $ number  90 @?= "ninety"
                  , testCase  "91 is ninety one"  $ number  91 @?= "ninety one"
                  , testCase  "99 is ninety nine" $ number  99 @?= "ninety nine"
                  , testCase "100 is one hundred" $ number 100 @?= "one hundred"
                  ]
                ]

main = defaultMain fizzBuzzSuite
