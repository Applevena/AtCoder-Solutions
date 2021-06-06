#
# Using Ruby 2.7.3
#

def solution
  n = gets.to_i
  c = 0

  for _ in 0...n
    break if c == 3

    d1, d2 = gets.split.map(&:to_i)

    if d1 == d2
      c += 1
    else
      c = 0
    end
  end

  return c == 3 ? 'Yes' : 'No'
end

puts solution
