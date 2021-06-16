#
# Using Ruby 2.7.3
#

def solution
  a, b, w = gets.split.map(&:to_i)

  max = (w.to_f * 1000 / a).floor
  min = (w.to_f * 1000 / b).ceil

  return max < min ? "UNSATISFIABLE" : "#{min} #{max}"
end

puts solution

# 回答時間 7min
