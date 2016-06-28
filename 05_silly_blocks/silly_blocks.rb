def reverser 
	words = yield.split(' ')
	words.map! { |word| word.reverse }
	words = words.join(' ')
end

def adder 
	yield + 1
end