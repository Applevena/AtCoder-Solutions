#
# Using Ruby 2.7.3
#

def solution
  a, b, c = gets.chomp.split.map(&:to_i)

  return a ** 2 + b ** 2 < c ** 2 ? "Yes" : "No"
end

puts solution

# 回答時間 2min
