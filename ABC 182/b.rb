#
# Using Ruby 2.7.3
#

def solution
  n = gets.to_i
  a = gets.split.map(&:to_i)

  result = 0
  gcd = 0

  for i in 2..1000
    count = 0

    for num in a
      count += 1 if num % i == 0
    end

    if count >= gcd
      result = i
      gcd = count
    end
  end

  return result
end

puts solution
