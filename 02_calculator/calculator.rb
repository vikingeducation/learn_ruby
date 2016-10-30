def add(num1,num2)
	num1 + num2	
end

def subtract(num1, num2)
	num1 - num2
end

def sum(array)
	array.reduce(0, :+)
end

def multiply(*nums)
	nums.reduce(:*)
end

def power(base, exp)
	base**exp
end

def factorial(num)
	return 1 if num == 0
	result = 1
	num.downto(1) { |n| result *= n }
	result
end