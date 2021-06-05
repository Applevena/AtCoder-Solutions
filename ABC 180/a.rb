#
# Using Ruby 2.7.3
#

def solution
  n, a, b = gets.split.map(&:to_i)

  return n - a + b
end

puts solution
