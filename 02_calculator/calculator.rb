def add(x, y)
	x + y
end

def subtract(x, y)
	x - y
end

def sum(array)
	if array.length == 0
		0
	else
		array.inject{|result, n| result + n}
	end
end

def multiply(array)
	array.inject{|result, n| result * n}
end

def power(x, y)
	x ** y
end

def factorial(number)
	if number == 0
		return 1
	else
		(1..number).inject{|result, n| result * n}
	end
end