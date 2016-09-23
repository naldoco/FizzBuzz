module FizzBuzz where
fizzBuzz :: Int -> String
fizzBuzz 1 = "one!"
fizzBuzz _ = "two!"

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
