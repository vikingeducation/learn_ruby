def word_reverser
  input = yield.split('')
  output = []
  while input.length > 0
    output.push(input.pop)
  end
  output.join('')
end

def reverser
  words = yield.split(' ')
  output = words.map { |word| word_reverser { word } }
  output.join(' ')
end

def adder(addend=1)
  yield + addend
end

def repeater(multiplicand=1)
  multiplicand.times { yield }
end
