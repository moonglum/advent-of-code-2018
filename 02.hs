import Data.List

main :: IO ()
main = interact $ showResult . createChecksums . lines

createChecksums :: [[Char]] -> (Int, Int)
createChecksums (x:xs) = (a + c, b + d)
  where
    (a, b) = createChecksum x
    (c, d) = createChecksums xs
createChecksums [] = (0, 0)

createChecksum :: [Char] -> (Int, Int)
createChecksum str = (twice, thrice)
  where
    twice = if elem 2 occurrences
               then 1
               else 0
    thrice = if elem 3 occurrences
               then 1
               else 0
    occurrences = findNumberOfOccurrences str

findNumberOfOccurrences :: [Char] -> [Int]
findNumberOfOccurrences = map length . group . sort

showResult :: (Int, Int) -> [Char]
showResult (a, b) = "The checksum is " ++ (show (a * b)) ++ "\n"
