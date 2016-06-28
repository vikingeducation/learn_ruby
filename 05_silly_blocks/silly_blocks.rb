def reverser 
	words = yield.split(' ')
	words.map! { |word| word.reverse }
	words = words.join(' ')
end

def adder(num = 1) 
	yield + num
end

def repeater(n = 1) 
	n.times {yield}
end