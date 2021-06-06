#
# Using Ruby 2.7.3
#

def solution
  n, k = gets.split.map(&:to_i)
  f = Hash.new(0)

  for _ in 1..n
    a, b = gets.split.map(&:to_i)
    f[a] += b
  end

  current = 0
  money = k

  for a, b in f.to_a.sort_by { |k, v| k }
    money -= a - current
    current = a

    break unless money >= 0

    money += b
  end

  return current + money
end

puts solution

# 回答時間 10min
