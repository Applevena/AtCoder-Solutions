#
# Using Ruby 2.7.3
#

def solution
  n, k = gets.split.map(&:to_i)
  t = Array.new(n, Array.new(n, 0))

  for i in 0...n
    t[i] = gets.split.map(&:to_i)
  end

  permutations = (1...n).to_a.permutation.to_a
  result = 0

  # O((n-1)!)
  for permutation in permutations
    sum = 0
    current = 0

    for n in permutation
      sum += t[current][n]
      current = n
    end

    result += 1 if sum + t[current][0] == k
  end

  return result
end

puts solution
