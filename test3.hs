
-- learn func interact
-- import qualified Data.Text as T

hasWord::String -> String -> Bool
hasWord w l = filter(elem w).words l

main = do interact (unlines. filter (elem 'a').lines)
