main :: IO ()
main = do
    putStrLn "ingresa numero"
    numero <- getLine
    let entr = read numero :: Int
    if even entr
        then putStrLn "Es par"
        else putStrLn "Es impar"