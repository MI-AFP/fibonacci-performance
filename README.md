# fibonacci-performance

Example project for benchmarking performance of various Fibonacci numbers implementations

## Usage

```console
% stack build
% stack exec fib -- <benchmark> <strategy> <n>
```

### Benchmarks

- `None` = no benchmark in Haskell, can be used with `time` util
- `WithCriterion` = using [criterion](http://hackage.haskell.org/package/criterion) (default settings)
- `WithWeight` = using [weight](hackage.haskell.org/package/weigh) (default settings)

### Strategies

- `Naive` = intentionally stupid recursion
