#
# Using Ruby 2.7.3
#

def solution
  n = gets.to_i
  count = 0

  count += n - 999 if n >= 10 ** 3
  count += n - 999999 if n >= 10 ** 6
  count += n - 999999999 if n >= 10 ** 9
  count += n - 999999999999 if n >= 10 ** 12
  count += 1 if n >= 10 ** 15

  return count
end

puts solution

# 回答時間 35min
