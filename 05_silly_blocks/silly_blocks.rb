# 05. Silly Blocks

def reverser
	yield.split(' ').map(&:reverse).join(' ')
end	

def adder(arg=1)
	yield + arg
end

def repeater(arg=1)
	arg.times {yield}
end