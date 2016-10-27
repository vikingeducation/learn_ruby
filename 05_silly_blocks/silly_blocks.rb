def word_reverser
  input = yield.split('')
  output = []
  while input.length > 0
    output.push(input.pop)
  end
  output.join('')
end
