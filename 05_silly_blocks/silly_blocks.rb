def reverser
	yield.split.map {|word| word.reverse}.join(" ")
	
end

def adder(num=1)
	yield + num
end

def repeater(loop=1)
	loop.times do
		yield
	end
end

