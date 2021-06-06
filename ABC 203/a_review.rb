#
# Using Ruby 2.7.3
#

def solution
  a, b, c = gets.split.map(&:to_i)

  return a if b == c
  return b if a == c
  return c if a == b
  return 0
end

puts solution

# 回答時間 3min
