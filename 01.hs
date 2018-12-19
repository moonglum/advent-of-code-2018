import qualified Data.Set as Set

main :: IO ()
main = interact $ showResult . findDuplicateFrequency . map parseInt . lines

findDuplicateFrequency :: [Int] -> Int
findDuplicateFrequency = _findDuplicateFrequency 0 Set.empty . cycle

_findDuplicateFrequency :: Int -> Set.Set Int -> [Int] -> Int
_findDuplicateFrequency current_frequency known_frequencies (x:xs)
  | Set.member new_frequency known_frequencies = new_frequency
  | otherwise                                  = _findDuplicateFrequency new_frequency (Set.insert new_frequency known_frequencies) xs
  where
    new_frequency = x + current_frequency

-- can't read `+12` so we need to strip `+` before reading
parseInt :: [Char] -> Int
parseInt ('+' : str) = read str
parseInt str = read str

showResult :: Show a => a -> [Char]
showResult int = "The first frequency that appears twice is " ++ (show int) ++ "\n"
