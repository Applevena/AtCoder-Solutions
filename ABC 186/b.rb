first_line = gets.split.map! { |i| i.to_i }

sum = 0
min = 100

for _ in 1..first_line[0] do
  input = gets.split.map! { |i| i.to_i }
  sum += input.inject(:+)
  new_min = input.min

  min = new_min if new_min < min
end

puts sum - min * first_line[0] * first_line[1]
