#
# Using Ruby 2.7.3
#

def solution
  n = gets.to_i
  a = gets.chomp.split.map(&:to_i)
  b = gets.chomp.split.map(&:to_i)

  return [b.min - a.max + 1, 0].max
end

puts solution

# 回答時間 3min
