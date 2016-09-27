def add(x,y)
	sum = x + y
end

def subtract(x,y)
	subtract = x - y
end

def sum(array)
	sum = 0
	array.each do |x|
		sum += x
	end
	sum
end

def multiply(num1, *nums)
	product = num1
	product.each do |x|
		pruduct *= x
	end
	product
end