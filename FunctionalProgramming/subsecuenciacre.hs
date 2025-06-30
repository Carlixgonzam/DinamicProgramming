import Data.List (foldl')
import qualified Data.Vector as V

busquedaBi :: V.Vector Int -> Int -> Int
busquedaBi vec x = go 0 (V.length vec - 1)
    where
        go lo hi
          | lo > hi = lo
          | otherwise =
              let mid = (lo + hi) `div` 2
              in if vec V.! mid < x
                 then go (mid + 1) hi
                 else go lo (mid - 1)
maslarga:: [Int] -> Int
maslarga xs = V.length tails
    where 
        
        tails= foldl' update V.empty xs
        update :: V.Vector Int -> Int -> V.Vector Int
        update v x
            | V.null v = V.singleton x
            | x > V.last v = v `V.snoc` x
            | otherwise =
                let idx = busquedaBi v x
                in v V.// [(idx, x)]  


main :: IO ()
main = do
  putStrLn "ingresa una lista de enteros separados por espacios"
  line <- getLine
  let nums = map read (words line) :: [Int]
  let lisLength = maslarga nums
  putStrLn $ "law longitud de la subsecuencia creciente mas larga es: " ++ show lisLength