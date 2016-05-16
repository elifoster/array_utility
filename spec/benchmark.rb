require 'benchmark'
if ARGV.include?('--gem')
  require 'array_utility'
else
  require_relative '../lib/array_utility'
end

TIMES = 1_000_000

using ArrayUtility

Benchmark.bm do |x|
  x.report('next') do
    TIMES.times do
      [1, 2, 3].next(1)
    end
  end

  x.report('prepend_capped') do
    TIMES.times do
      [1, 2].prepend_capped(4, 3)
    end
  end

  x.report('before') do
    TIMES.times do
      [1, 2, 3].before(3)
    end
  end
end
