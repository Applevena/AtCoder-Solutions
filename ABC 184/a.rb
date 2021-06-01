#
# Using Ruby 2.7.3
#

# common
def geti
  gets.split.map(&:to_i)
end

# main
first = geti
second = geti

puts first[0] * second[1] - first[1] * second[0]
