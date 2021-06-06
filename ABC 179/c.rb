#
# Using Ruby 2.7.3
#

def solution
  n = gets.to_i
  count = 0

  for a in 1...n
    count += ((n - 1) / a).to_i
  end

  return count
end

puts solution
