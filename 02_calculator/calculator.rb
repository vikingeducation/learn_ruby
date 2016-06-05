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

def multiply(a, b)
	a * b
end