main :: IO ()
main = do
    putStrLn "Ingresa el numero a"
    a <- getLine
    putStrLn "Ingresa el numero b"
    b <- getLine
    let suma = (read a :: Int) + (read b :: Int)
    putStrLn ("La suma es: " ++ show suma)
