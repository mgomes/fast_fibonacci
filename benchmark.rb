require 'benchmark'
require './fast_fibonacci.rb'
require './traditional_fibonacci.rb'

Benchmark.bm do |x|

  puts "\nTraditional Fibnoacci (1-35)"
  x.report { for i in 1..35; traditional_fib(i); end }

  puts "\nTraditional Fibnoacci w/ Caching (1-5000)"
  x.report { for i in 1..5_000; traditional_fib_w_caching(i); end }

  puts "\nFast Fibnoacci (1-5000)"
  x.report { for i in 1..5_000; fast_fib(i); end }

end
