#
# Using Ruby 2.7.3
#

def solution
  x, y = gets.split.map(&:to_i)

  return 3 - x - y if x != y
  return x if x == y
end

puts solution

# 回答時間 2min
