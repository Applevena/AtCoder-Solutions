#
# Using Ruby 2.7.3
#

def solution
  r, x, y = gets.chomp.split.map(&:to_i)

  x2 = x ** 2
  y2 = y ** 2
  r2 = r ** 2

  if x2 + y2 < r2
    return 2
  end

  if x2 + y2 == r2
    return 1
  end

  return (((x2 + y2).to_f / r2) ** 0.5).ceil
end

puts solution

# 回答時間 13min
