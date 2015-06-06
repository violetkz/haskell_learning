import System.IO
import System.Exit
import System.Environment(getArgs)
import Control.Monad(when)

-- the Linux command 'nl' implementation with haskell

main = do
    -- read arguments
    args <- getArgs
    -- check the arguments number
    when (length args/= 1) $ do 
        putStrLn "please input a filename"
        exitFailure
    
    -- read file
    content <- readFile (args!!0)
    
    -- make the lines with prefix line NO.
    let aLines = lines content
        nLines = zipWith (\n line -> show n ++ " " ++ line)
                         [0..] aLines

    -- print it
    mapM putStrLn nLines
