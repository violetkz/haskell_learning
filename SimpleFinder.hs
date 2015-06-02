-- file: ch09/SimpleFinder.hs
import RecursiveContents (getRecursiveContents)
import System.FilePath (takeExtension)

simpleFind :: (FilePath -> Bool) -> FilePath -> IO [FilePath]

simpleFind p path = do
  names <- getRecursiveContents path
  return (filter p names)


--main = do
--	files <- simpleFind (\p -> takeExtension p == ".c", ".")
