def add(a, b)
	a+b
end

def subtract(a, b)
	a-b
end

def sum(array)
	array.inject(0){|sum,x| sum + x }
end

def multiply(array)
	product = 1
	array.each {|n| product *= n}
	product
end

def power(a, b)
	a**b
end

def factorial(a)
	if a == 0
		1
	else
		a * factorial(a-1)
	end
end

