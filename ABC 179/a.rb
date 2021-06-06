#
# Using Ruby 2.7.3
#

def solution
  s = String.new(gets.split.first)

  return s + 's' if s[-1] != 's'
  return s + 'es' if s[-1] == 's'
end

puts solution
