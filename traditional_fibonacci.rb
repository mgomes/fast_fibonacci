# Really bad
def traditional_fib(n)
  raise(ArgumentError, 'Input number cannot be negative.') if n < 0

  if [0, 1].include?(n)
    return n
  else
    return traditional_fib(n-1) + traditional_fib(n-2)
  end
end

def traditional_fib_w_caching(n, cache = {})
  if [0, 1].include?(n)
    return n
  else
    cache[n] ||= traditional_fib_w_caching(n-1, cache) + traditional_fib_w_caching(n-2, cache)
  end
end
