esVocal:: Char -> Bool
esVocal c= c `elem` "aeiouAEIOU"
contarVoca:: String -> Int
contarVoca texto = length(filter esVocal texto)
main :: IO ()
main = do
  putStrLn "Ingresa una cadena de texto"
  entrada <- getLine
  let total = contarVoca entrada
  putStrLn ("Nun de vocales: " ++ show total)