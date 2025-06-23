cuadrado:: Int -> Int
cuadrado x = x * x

main :: IO()
main = do
    putStrLn "ingresa el numero:"
    input <- getLine
    let numero = read input :: Int
    let resultado = cuadrado numero
    putStrLn("el cuadradp es" ++ show resultado)