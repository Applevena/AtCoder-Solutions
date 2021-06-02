#
# Using Ruby 2.7.3
#

def solution
  sx, sy, gx, gy = gets.split.map(&:to_i)

  return -1 * (sx * -1 * gy - gx * sy).to_f / (sy + gy).to_f
end

puts solution
