module Lib where

import Criterion.Main (defaultMain, bench, whnfAppIO)
import Weigh (mainWith, io)

import qualified FibonacciStrategy.Naive as Naive

data BenchmarkType = None | WithCriterion | WithWeigh
               deriving (Show, Read)

data Strategy = Naive
              deriving (Show, Read)

run :: BenchmarkType -> Strategy -> String -> IO ()
run benchtype strategy n = case benchtype of
  None ->doFibonacci n
  WithCriterion -> defaultMain [bench "fibonacci" (whnfAppIO doFibonacci n)]
  WithWeigh -> mainWith $ io "fibonacci" doFibonacci n
  where doFibonacci = computeAndPrint strategy

computeAndPrint strategy n = do
  let result = fibonacci strategy (read n)
  putStrLn $ "Result: " ++ show result

fibonacci :: Strategy -> Int -> Int
fibonacci Naive = Naive.fibonacci
