#
# Using Ruby 2.7.3
#


def solution
  n = gets.to_i
  m = []

  for _ in 1..n
    input = gets.split

    m << {s: input[0], t: input[1].to_i}
  end

  m.sort_by! { |i| i[:t] }

  return m[-2][:s]
end

puts solution

# 回答時間 12min
