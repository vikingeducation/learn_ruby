def add(a,b)
	a + b
end

def subtract(a,b)
	a - b
end

def sum(numbers)
	if numbers == []
		0
	else
		numbers.inject(0) {|sum, a| sum + a}
	end
end

def multiply(numbers)
	numbers.inject(1) {|a,b| a*b}
end

def power(a,b)
	a ** b
end

def factorial(number)
	if number == 0
		1
	else
		(1..number).inject(:*)
	end
end