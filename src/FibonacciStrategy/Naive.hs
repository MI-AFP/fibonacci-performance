module FibonacciStrategy.Naive (fibonacci) where

-- | Naive recursive algorithm for n-th Fibonacci number
fibonacci :: Int -> Int
fibonacci 0 = 0
fibonacci 1 = 1
fibonacci n = fibonacci (n-1) + fibonacci (n-2)
