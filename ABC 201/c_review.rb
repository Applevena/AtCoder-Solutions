#
# Using Ruby 2.7.3
#


def solution
  s = gets.split('')

  con = []
  non = []

  for index in 0..9
    con << index if s[index] == 'o'
    non << index if s[index] == 'x'
  end

  count = 0

  for num in 0..9999
    num_s = "000#{num}"[-4..-1]
    flag = true

    con.each do |i|
      flag = false if !num_s.include? i.to_s
    end

    non.each do |i|
      flag = false if num_s.include? i.to_s
    end

    count += 1 if flag
  end

  return count
end

puts solution

# 回答時間 21min
