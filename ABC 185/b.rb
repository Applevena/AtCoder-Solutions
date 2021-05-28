def geti
  gets.split.map { |i| i.to_i }
end

def solution
  first_line = geti

  battery = first_line[0]
  current = 0

  for _ in 0...first_line[1] do
    input = geti

    battery -= input[0] - current

    if battery <= 0
      break
    end

    battery = [battery + input[1] - input[0], first_line[0]].min

    current = input[1]
  end

  battery -= first_line[2] - current

  if battery > 0
    puts "Yes"
  else
    puts "No"
  end
end

solution
