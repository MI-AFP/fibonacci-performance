module Main where

import Control.Monad (unless)
import System.Environment (getArgs)

import Lib (run)

main :: IO ()
main = do
  args <- getArgs
  unless (length args == 3) $ errorWithoutStackTrace "Usage: fib <None|WithCriterion|WithWeigh> <Naive> <n>"
  let
    benchtype = read (args !! 0)
    strategy = read (args !! 1)
    n = args !! 2
  run benchtype strategy n
