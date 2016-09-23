module FizzBuzz where
fizzBuzz :: Int -> String
fizzBuzz n
  | n `mod` 3 == 0 && n `mod` 5 == 0 = "fizzbuzz!"
  | n `mod` 3 == 0                   = "fizz!"
  | n `mod` 5 == 0                   = "buzz!"
  | otherwise                        = number n ++ "!"

lessThan20 :: Int -> String
lessThan20 n
  | n > 0 && n < 20 =
    let lessThan20Answers =
          words ("one two three four five six seven eight nine ten " ++
                 "eleven twelve thirteen fourteen fifteen sixteen "  ++
                 "seventeen eighteen nineteen")
    in lessThan20Answers !! (n-1)

tens :: Int -> String
tens n
  | n >= 2 && n <= 9 =
    tensAnswers !! (n-2)
    where
      tensAnswers = words "twenty thirty forty fifty sixty seventy eighty ninety"

number :: Int -> String
number n
  | 1 <= n && n < 20           = lessThan20 n
  | n `mod` 10 == 0 && n < 100 = tens (n `div` 10)
  | n < 100                    = tens (n `div` 10) ++ " " ++ lessThan20 (n `mod` 10)
  | n == 100                   = "one hundred"
