#
# Using Ruby 2.7.3
#

def solution
  n, m = gets.split.map(&:to_i)
  roots = Hash.new { |a, b| a[b] = [] }

  (1..m).each do
    a, b = gets.split.map(&:to_i)
    roots[a] << b
  end

  # bfs
  count = 0

  (1..n).each do |i|
    visited = Array.new n, false
    nexts = [i]

    while nexts.count != 0 do
      current = nexts.pop

      next if visited[current - 1]

      count += 1
      visited[current - 1] = true
      roots[current].each { |j| nexts << j }
    end
  end

  return count
end

puts solution

# 回答時間 21min
