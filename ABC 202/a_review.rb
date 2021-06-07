#
# Using Ruby 2.7.3
#

def solution
  a, b, c = gets.split.map(&:to_i)

  return 21 - a - b - c
end

puts solution

# 回答時間 1min
