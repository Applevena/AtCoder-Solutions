#
# Using Ruby 2.7.3
#

def solution
  n = gets.to_i
  points = Array.new(n, [0, 0])

  for i in 0...n
    points[i] = gets.split.map(&:to_i)
  end

  result = "No"

  for i in 0...(n - 2)
    for j in (i + 1)...(n - 1)
      for k in (j + 1)...n
        x1, y1 = points[i]
        x2, y2 = points[j]
        x3, y3 = points[k]

        x2 -= x1
        x3 -= x1
        y2 -= y1
        y3 -= y1

        if x2 * y3 == x3 * y2
          result = "Yes"
        end
      end
    end
  end

  return result
end

puts solution
