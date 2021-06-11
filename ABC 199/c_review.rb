#
# Using Ruby 2.7.3
#

def solution
  n = gets.to_i
  s = gets.chomp.split("")
  q = gets.to_i

  rev = false

  for _ in 1..q
    t, a, b = gets.chomp.split.map(&:to_i)
    a -= 1
    b -= 1

    if rev
      a = a < n ? n + a : a - n
      b = b < n ? n + b : b - n
    end

    case t
    when 1
      s[a], s[b] = s[b], s[a]
    when 2
      rev = !rev
    end
  end

  if rev
    s[0...n], s[n...2 * n] = s[n...2 * n], s[0...n]
  end

  return s.join
end

puts solution

# 回答時間 20min
