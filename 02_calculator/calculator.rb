def add(a, b) 
	a + b
end

def subtract(a, b)
	a - b
end

def sum(arr)
	return 0 if arr.empty?
	arr.inject(0){|sum, ele| sum + ele}
end

def multiply(a, b, *nums)
	return nums.inject(a*b) {|product, ele| product * ele} unless nums.empty?
	a * b
end

def power(a, b)
	a ** b
end

def factorial(a)
	return 1 if a == 0
	a * factorial(a - 1)
end