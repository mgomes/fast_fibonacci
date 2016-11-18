# Fast Doubling Fibonacci Algorithm - Ruby Implementation
#
# Copyright (c) 2016 Mauricio Gomes
#
# Based on the Nayuki Project's Fast Fibnoacci writeup:
# https://www.nayuki.io/page/fast-fibonacci-algorithms
#

def fast_fib(n)
  raise(ArgumentError, 'Input number cannot be negative.') if n < 0
  _fib(n)[0]
end

def _fib(n)
  if n == 0
    return [0, 1]
  else
    a, b = _fib(n / 2)
    c = a * (b * 2 - a)
    d = a * a + b * b

    if n % 2 == 0
      [c, d]
    else
      [d, c + d]
    end
  end
end
