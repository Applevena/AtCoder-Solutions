#
# Using Ruby 2.7.3
#

def solution
  n = gets.to_i
  a = gets.split.map(&:to_i)

  count = 0

  a.each do |num|
    count += [0, num - 10].max
  end

  return count
end

puts solution

# 回答時間 2min
