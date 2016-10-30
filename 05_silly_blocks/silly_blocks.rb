def reverser
  split_string = yield.split(' ')
  split_string.map do |word|
    word.reverse!
  end
  result = split_string.join(' ')
  result
end

def adder(num = 1)
  result = yield + num
  result
end

def repeater(num = 1)
  num.times do |i|
    yield
  end
end