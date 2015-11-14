def reverser
	result = []
	string = yield.split(" ")
	string.each do |word|
		result << word.reverse!
	end
	result.join(' ')
end

def adder(add = 1)
	yield + add
end

def repeater(num = 1)
	num.times {yield}
end