def add(num1, num2)
	num1 + num2
end

def subtract(num1, num2)
	num1 - num2
end

def sum(arr)
	result = 0
	arr.each {|idx| result +=idx}
	result
end

def multiply(arr)
	result = 1
	arr.each {|idx| result *=idx}
	result
end

def power(num, power)
	num**power
end

def factorial(num)
	result = 1
	(1..num).each do |idx|
		result *= idx
	end
	result
end