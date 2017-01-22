def reverser
  sentence = yield
  reverse_array = sentence.split.map do |word|
    word.reverse
  end
  reverse_array.join(" ")
end

def adder(number = 1)
  yield + number
end

def repeater(repetitions = 1)
  repetitions.times { yield }
end