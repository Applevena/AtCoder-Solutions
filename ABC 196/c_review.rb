#
# Using Ruby 2.7.3
#

def solution
  n = gets.to_i
  count = 0

  for i in 1..(n ** 0.5)
    num = "#{i}#{i}".to_i

    break if num > n

    count += 1
  end

  return count
end

puts solution

# 回答時間 3min
