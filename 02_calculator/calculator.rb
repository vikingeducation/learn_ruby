def add(a, b)
	a+b
end

def subtract(a,b)
	a - b
end

def sum (a)
	total = 0
	a.each {|n| total += n}
	total
end

def multiply (a, *b)
	multiples = b
	if multiples.is_a? Array
		product = a
		multiples.each {|n| product *= n}
		return product
	end
	a*b
end

def power (a, b)
	a**b
end

def factorial (n)
	return 1 if n==0
	product = 1
	(1..n).each {|x| product *= x}
	product
end