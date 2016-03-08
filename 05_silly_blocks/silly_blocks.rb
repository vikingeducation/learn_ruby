def reverser
	yield.split(' ').reverse.join(' ').reverse
end

def adder(options = 1)
	yield + (options)
end

def repeater(options = 1)
	(0..options-1).each do |i|
		yield
	end
end