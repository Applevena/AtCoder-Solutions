#
# Using Ruby 2.7.3
#

# common
def geti
  gets.to_i
end

def getsa(separator = nil)
  gets.split(separator)
end

def getia(separator = nil)
  getsa(separator).map(&:to_i)
end

# main
first_line = getia
s = getsa('')
s.pop

result = first_line[1]

s.each do |res|
  if res == 'o'
    result += 1
  else
    result = [result - 1, 0].max
  end
end

puts result
