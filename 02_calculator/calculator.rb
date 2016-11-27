def add(first_num, second_num)
	first_num + second_num
end

def subtract(first_num, second_num)
	first_num - second_num
end

def sum(array)
	return 0 if array.empty?
	array.reduce(:+)
end

def multiply(first_num, *second_num)
	total = first_num
	second_num.each do |number|
		total *= number
	end
	return total
end

def power(first_num, second_num)
	first_num ** second_num
end

def factorial(num)
	return 1 if num < 1
	num * factorial(num - 1)
end