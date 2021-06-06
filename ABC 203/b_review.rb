#
# Using Ruby 2.7.3
#

def solution
  n, k = gets.split.map(&:to_i)
  count = 0

  for i in 1..n
    count += k * i * 100 + k * (k + 1) / 2
  end

  return count
end

puts solution

# 回答時間 6min
