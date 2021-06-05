#
# Using Ruby 2.7.3
#

def solution
  n = gets.to_i
  l = (n ** 0.5).round.to_i
  c = []

  for i in 1..l
    c.push(i) if n % i == 0 && i == n / i
    c.push(i, n / i) if n % i == 0 && i != n / i
  end

  return c.sort
end

puts solution
