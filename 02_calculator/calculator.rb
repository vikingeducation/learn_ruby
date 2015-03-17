def add(a,b)
	a+b
end

def subtract(a,b)
	a-b
end

def sum(array)
	total = 0
	array.each {|num| total += num}
	total
end

def multiply(array)
	total = 1
	array.each {|num| total *= num}
	total
end

def power(a,b)
	a**b
end

def factorial(num)
	if(num == 0)
		1
	else
		total = 1
		start = num
		while start > 1
			total *= start
			start -= 1
		end
	end
	total
end