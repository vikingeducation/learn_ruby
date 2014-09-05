# 02. Calculator

def add(a, b)
	a + b
end

def subtract(a, b)
	a - b
end

def sum(arg)	
	return 0 if arg.empty?
	arg.inject {|memo, x| memo += x}
end

def multiply(arg)
	arg.inject {|memo, x| memo *= x}
end

def power(base, exp)
	base ** exp
end

def factorial(arg)
	result = 1
	(1..arg).each {|num| result *= num}
	result
end