# def reverser(&block)
#   block.each do |b|
#     call.reverse
#   end
# end

# def reverser
#   yield.reverse
# end

# def reverser(&block)
#   block.call.reverse
# end


def reverser
  arr = yield.split(" ")
  return_string = ""
  arr.each do |word|
    return_string += word.reverse + " "
  end
  return_string.strip
end

def adder(increase=1)
  yield + increase
end

def repeater(multiplier = 1)
  multiplier.times do
    yield
  end
end