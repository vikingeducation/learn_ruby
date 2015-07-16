def add(num1, num2)
	num1 + num2
end

def subtract(num1, num2)
	num1 - num2
end

def sum(arr_to_sum)
	arr_to_sum.inject(0) {|sum, value| sum += value}
end

def multiply(*num)
	num.inject(1) {|result, value| result *= value}
end

def power(base, power)
	base**power
end

def factorial(num)
	multiple = 1
	factorial = 1
	while multiple <= num
		factorial *= multiple
		multiple += 1
	end
	return factorial
end