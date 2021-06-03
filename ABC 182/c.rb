#
# Using Ruby 2.7.3
#

def solution
  n = gets.split("")
  n.pop

  result = -1

  for i in 0...(1 << n.length)
    t = []

    for j in 0...n.length
      t.push(i & (1 << j) > 0 ? 1 : 0)
    end

    nums = []
    count = 0

    t.each_with_index do |value, index|
      nums.push(n[index]) if value == 1
      count += 1 if value == 0
    end

    next if nums.empty?

    num = nums.join.to_i

    if num % 3 == 0
      result = result == -1 ? count : [result, count].min
    end
  end

  return result
end

puts solution
