#
# Using Ruby 2.7.3
#

def solution
  n = gets.to_i
  a = gets.split.map(&:to_i)
  b = gets.split.map(&:to_i)
  c = gets.split.map(&:to_i)

  a_hash = Hash.new(0)
  b_hash = Hash.new { |a,b| a[b] = Array.new }
  c_hash = Hash.new(0)

  a.each { |i| a_hash[i] += 1 }
  b.each_with_index { |v, i| b_hash[v] << (i + 1) }
  c.each { |i| c_hash[i] += 1 }

  count = 0

  for i in 1..n
    sum = 0

    for j in b_hash[i]
      sum += c_hash[j]
    end

    count += a_hash[i] * sum
  end

  return count
end

puts solution

# 回答時間 39min
