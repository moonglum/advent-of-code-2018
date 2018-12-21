import Data.List
import Data.Function

main :: IO ()
main = interact $ showResult . longest . map commonCharacters . combinationsOfTwo . lines

longest :: [[a]] -> [a]
longest = head . sortBy (flip compare `on` length)

combinationsOfTwo :: Ord t => [t] -> [(t, t)]
combinationsOfTwo xs = [(i, j) | i <- xs, j <- xs, i < j]

commonCharacters :: ([Char], [Char]) -> [Char]
commonCharacters (a, b) = _commonCharacters a b

_commonCharacters :: [Char] -> [Char] -> [Char]
_commonCharacters (x:as) (y:bs)
  | x == y = x : (_commonCharacters as bs)
  | otherwise = _commonCharacters as bs
_commonCharacters [] [] = []

showResult :: [Char] -> [Char]
showResult result = "The answer is " ++ result ++ "\n"
