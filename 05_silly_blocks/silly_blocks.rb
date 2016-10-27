def reverser
	words = yield.split ' '
	words.each do |word|
		word.reverse!
	end
	words.join ' '
end

def adder(add=1)
  yield + add
end

def repeater(repeat=1)
	repeat.times do yield
	end
end