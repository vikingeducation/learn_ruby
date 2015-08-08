def add(a, b)
	a + b
end

def subtract(a, b)
	a - b
end

def sum(array)
	array.reduce(0) {|sum, i| sum += i}
end

def multiply(*args)
	args.reduce {|product, i| product *= i}
end

def power(a, b)
	a**b
end

def factorial(n)
	(n == 0) ? 1 : (1..n).to_a.reduce {|product, i| product*= i}
end