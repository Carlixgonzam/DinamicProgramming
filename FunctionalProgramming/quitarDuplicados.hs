import qualified Data.Set as Set
quitarDuplicados :: Ord a => [a] -> [a]
quitarDuplicados xs = quitarDuplicados' xs Set.empty []
  where
    quitarDuplicados' [] _ acc =reverse acc
    quitarDuplicados' (y:ys) vistos acc
      | Set.member y vistos = quitarDuplicados' ys vistos acc
      | otherwise = quitarDuplicados' ys (Set.insert y vistos) (y:acc)

main :: IO ()
main = do
  putStrLn "=== Quitar Duplicados ==="
  putStrLn "Escribe un texto (o 'quit' para salir):"
  
  input <- getLine
  if input == "quit"
    then putStrLn "¡Adiós!"
    else do
      let resultado = quitarDuplicados input
      putStrLn $ "Sin duplicados: " ++ resultado
      putStrLn ""
      main