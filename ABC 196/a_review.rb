#
# Using Ruby 2.7.3
#

def solution
  a, b = gets.chomp.split.map(&:to_i)
  c, d = gets.chomp.split.map(&:to_i)

  return b - c
end

puts solution

# 回答時間 2min
