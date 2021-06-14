#
# Using Ruby 2.7.3
#

def solution
  h, w, x, y = gets.chomp.split.map(&:to_i)
  grid = Array.new(h, Array.new(0))

  for i in 0...h
    grid[i] = gets.chomp.split("")
  end

  # 探索
  x -= 1
  y -= 1
  count = -3
  add = 0

  for j in 0..y
    add += 1 if grid[x][j] == "."
    add = 0 if grid[x][j] == "#"
  end

  count += add
  add = 0

  for j in y...w
    break if grid[x][j] == "#"
    count += 1
  end

  for i in 0..x
    add += 1 if grid[i][y] == "."
    add = 0 if grid[i][y] == "#"
  end

  count += add

  for i in x...h
    break if grid[i][y] == "#"
    count += 1
  end

  return count
end

puts solution

# 回答時間 34min
