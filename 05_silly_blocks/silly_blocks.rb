def reverser(&block)
	thing = []
	block.call.split(" ").each do |word|
		thing.push(word.reverse)
	end
	return thing.join(" ")
end

def adder(number = 1, &block)
	block.call + number
end

def repeater(number = 1, &block)
	number.times do 
		block.call
	end
end