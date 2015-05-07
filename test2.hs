-- IO learn

doublestr :: String -> String
doublestr x = x ++ "[" ++ x ++ "]"

main = do
    putStrLn "hi, heskell"
    instr <- getLine
    let  x2 = doublestr instr
    putStrLn $ "Result" ++ x2
