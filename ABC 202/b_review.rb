#
# Using Ruby 2.7.3
#

def solution
  s = gets.split('')
  s.pop

  num = s.reverse.map do |i|
    next '9' if i == '6'
    next '6' if i == '9'
    next i
  end

  return num.join
end

puts solution

# 回答時間 10min
