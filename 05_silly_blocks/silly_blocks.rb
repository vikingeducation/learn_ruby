def reverser(&code_block)
	arr = []
	words = code_block.call
	words.split.each { |word| arr << word.reverse }
	return arr.join(' ')
end

def adder(num=1, &code_block)
	result = yield + num
end

def repeater(times = 1, &code_block)
	times.times { code_block.call }
end