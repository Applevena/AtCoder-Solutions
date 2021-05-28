l = gets.to_i

puts (l - 11..l - 1).inject(1, :*) / (1..11).inject(1, :*)
