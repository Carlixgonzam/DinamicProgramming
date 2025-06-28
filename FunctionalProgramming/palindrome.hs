palin :: Eq a => [a] -> Bool
palin xs = esPalin' 0 (length xs - 1) 
  where
    esPalin' i j
      | i >= j = True                  
      | xs !! i == xs !! j = esPalin' (i + 1) (j - 1)
      | otherwise = False
main :: IO ()
main = mainInteractivo
mainInteractivo :: IO ()
mainInteractivo = do
  putStrLn "Verificador de Palindromos"
  putStrLn "Ingresa una palabra o frase (o 'quit' para salir):"
  input <- getLine
  if input == "quit"
    then putStrLn "¡Adiós!"
    else do
      let resultado = palin input
      if resultado
        then putStrLn $ "✓ \"" ++ input ++ "\" SÍ es un palíndromo"
        else putStrLn $ "✗ \"" ++ input ++ "\" NO es un palíndromo"
      putStrLn ""
      mainInteractivo

