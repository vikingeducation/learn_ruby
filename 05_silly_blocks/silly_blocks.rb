def reverser
	yield.split(" ").map(&:reverse).join(" ")
end

def adder(num = 1)
	num + yield
end

def repeater(num =1)
	num.times {yield}
end