#
# Using Ruby 2.7.3
#

def solution
  n = gets.to_i

  sum = 0

  for _ in 0...n
    a, b = gets.split.map(&:to_i)

    sum += (b - a + 1) * (a + b) / 2
  end

  return sum
end

puts solution
