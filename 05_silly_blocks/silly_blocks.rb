def reverser()
	yield .reverse if block_given?
end

def adder(num = 1)
	yield .+(num)
end

def repeater(num = 1, &repeat)
	num.times do
		repeat.call
	end
end