def reverser
	input = yield
	words = input.split(" ")
	reverse_words = words.map { |word| word.reverse }
	reverse_words.join(" ")
end

def adder(number = 1)
  yield + number
end

def repeater(number_of_times = 1)
  number_of_times.times { yield }
end