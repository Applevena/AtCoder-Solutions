#
# Using Ruby 2.7.3
#

def solution
  n = gets.to_i
  a = gets.chomp.split.map(&:to_i)

  rem = Hash.new 0

  a.each do |i|
    rem[i % 200] += 1
  end

  count = 0

  (0..199).each do |i|
    j = rem[i]
    next unless j >= 2

    count += j * (j - 1) / 2
  end

  return count
end

puts solution

# 回答時間 7min
