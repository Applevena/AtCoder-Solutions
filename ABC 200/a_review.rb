#
# Using Ruby 2.7.3
#

def solution
  n = gets.to_i

  return n / 100 + (n % 100 == 0 ? 0 : 1)
end

puts solution

# 回答時間 2min
