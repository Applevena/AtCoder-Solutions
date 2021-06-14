#
# Using Ruby 2.7.3
#

def solution
  n = gets.to_i
  a = gets.chomp.split.map(&:to_i)

  result = 1000000000000

  for i in 0...(1 << (n - 1))
    or_num = 0
    ors = []

    for j in 0...n
      if i & (1 << j) > 0
        or_num |= a[j]
      else
        ors << (or_num | a[j])
        or_num = 0
      end
    end

    result = [result, ors.inject(0, :^)].min
  end

  return result
end

puts solution

# 回答時間 23min
