#
# Using Ruby 2.7.3
#

def solution
  n, k = gets.chomp.split.map(&:to_i)

  num = n

  for _ in 1..k
    if num % 200 == 0
      num /= 200
    else
      num = num * 1000 + 200
    end
  end

  return num
end

puts solution

# 回答時間 3min
