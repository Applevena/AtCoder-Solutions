#
# Using Ruby 2.7.3
#

def solution
  m, h = gets.split.map(&:to_i)

  return h % m == 0 ? "Yes" : "No"
end

puts solution

# 回答時間 1min
