def reverser(&block)
  input = yield
  input_array = input.split(' ')
  reverse_array = []

  input_array.each do |word|
    reverse_array << word.reverse
  end
  reverse_array.join(' ')
end

def adder(num=1)
  yield + num
end

def repeater(num=1)
  num.times do
    yield
  end
end