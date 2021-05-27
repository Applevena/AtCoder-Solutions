n = gets.to_i

count = 0

for i in 1..n do
  i_ten = i
  i_eight = i
  invalid = false

  while i_ten != 0 do
    if i_ten % 10 == 7
      invalid = true
      count += 1
      break
    end

    i_ten /= 10
  end

  next if invalid

  while i_eight != 0 do
    if i_eight % 8 == 7
      invalid = true
      count += 1
      break
    end

    i_eight /= 8
  end
end

puts n - count
