# Fast Fibonacci Ruby Implementation

This repo contains a couple classic implementations of the [Fibonacci Numbers](https://en.m.wikipedia.org/wiki/Fibonacci_number) and the "fast" implementation using matrix exponentiation found on [Project Nayuki](https://www.nayuki.io/page/fast-fibonacci-algorithms). I've also included a sample benchmark test to compare the three implementations. The classic recursive method only iterates up to `n=35` due to the slow nature of that algorithm. The other two calculate the Fibonacci sequence up to `n=5,000`.

## Benchmarks

```
user     system      total        real

Traditional Fibnoacci (1-35)
6.210000   0.020000   6.230000 (  6.248121)

Traditional Fibnoacci w/ Caching (1-5000)
8.950000   0.110000   9.060000 (  9.076080)

Fast Fibnoacci (1-5000)
0.060000   0.000000   0.060000 (  0.057512)
```
