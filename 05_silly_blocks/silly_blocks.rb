def reverser

	words = yield
	output = []
	
	words.split.map do |word|
		output << word.reverse
	end
	output.join(' ')
end

def adder(n=1)
	yield + n
end

def repeater(n=1)
	n.times do
		yield 
	end
end