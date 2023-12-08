isEven :: (Integral a) => [a] -> [a] -> [a]
isEven [] b = reverse b
isEven a b =
  if even (head a)
    then isEven (tail a) (head a : b)
    else isEven (tail a) b

isEvenShorter :: (Integral a) => [a] -> [a]
isEvenShorter = filter even

main :: IO ()
main = do
  let listWithValues = [1 .. 10]
      result = isEven listWithValues []
  putStrLn $ "Even nums: " ++ show result

  putStrLn $ "Shorter way: " ++ show (isEvenShorter listWithValues)

---------------------------------------------------------------------------------------------
