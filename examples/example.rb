require 'rubygems'
require 'give4each'

# (1..5).map { |i| i ** 2 }
(1..5).map &:**.with(2) # => [1, 4, 9, 16, 25]

# %w[c++ lisp].map { |lang| (lang + "er").upcase }
%w[c++ lisp].map &:upcase.of(:+, "er") # => ["C++ER", "LISPER"]

# %w[c++ lisp].map { |lang| lang.upcase + "er" }
%w[c++ lisp].map &:upcase.and(:+, "er") # => ["C++er", "LISPer"]

# stack = []
# (1..5).each { |item| stack.push item }
stack = []
(1..5).each &:push.to(stack)
stack # => [1, 2, 3, 4, 5]

# %w[ruby python].map { |lang| "hello %s world" % lang }
%w[ruby python].map &:%.in("hello %s world") # => ["hello ruby world", "hello python world"]