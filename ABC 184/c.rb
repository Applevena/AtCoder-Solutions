#
# Using Ruby 2.7.3
#

def solution
  r1, c1 = gets.split.map(&:to_i)
  r2, c2 = gets.split.map(&:to_i)

  return 0 if r1 == r2 && c1 == c2

  return 1 if r1 + c1 == r2 + c2 || r1 - c1 == r2 - c2 || (r1 - r2).abs + (c1 - c2).abs <= 3

  if (r1 + r2 + c1 + c2).even? || (r1 - r2).abs + (c1 - c2).abs <= 6 || (r1 - r2 + c1 - c2).abs <= 3 || (r1 - r2 + c2 - c1).abs <= 3
    return 2
  end

  3
end

puts solution
