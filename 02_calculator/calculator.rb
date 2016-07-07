def add (num1, num2)
	num1 + num2
end

def subtract (num1, num2)
	num1 - num2
end

def sum(array)
	return 0 if array == []

	array.reduce(:+)
end

def multiply(*numbers)
	numbers.reduce(:*)
end

def power(base, exponent)
	total = 1
	exponent.times do
		total *= base
	end
	total
end

def factorial(base)
	return 1 if base == 0 || base == 1
	
	total = 1
	current_number = base

	while current_number > 1
		total *= current_number
		current_number -= 1
	end 

	total
end