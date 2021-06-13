#
# Using Ruby 2.7.3
#

def solution
  n = gets.chomp
  i = n.to_i

  c = 0

  while i > 0
    break if i % 10 != 0

    c += 1
    i /= 10
  end

  m = "0" * c + n

  return m.reverse == m ? "Yes" : "No"
end

puts solution

# 回答時間 6min
