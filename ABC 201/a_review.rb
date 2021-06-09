#
# Using Ruby 2.7.3
#


def solution
  a = gets.split.map(&:to_i)

  a.sort!

  return "Yes" if a[2] - a[1] == a[1] - a[0]
  return 'No'
end

puts solution

# 回答時間 2min
