#
# Using Ruby 2.7.3
#

def solution
  a, b = gets.split.map(&:to_i)

  return 2 * a + 100 - b
end

puts solution
