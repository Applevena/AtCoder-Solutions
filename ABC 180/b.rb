#
# Using Ruby 2.7.3
#

def solution
  _ = gets.to_i
  x = gets.split.map(&:to_i)

  m = 0
  y = 0
  t = 0

  for p in x
    m += p.abs
    y += p ** 2
    t = [t, p.abs].max
  end

  return [m, y ** 0.5, t]
end

puts solution
