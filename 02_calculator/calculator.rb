def add(x,y)

	(x + y)

end

def subtract(x,y)

  (x - y)

end

def sum(arr)

	arr.inject(0) {|sum, x| sum + x}

end

def multiply(numbers)

 numbers.inject(1) {|sum, number| sum + number}

end

def power (x, y)

	x ** y

end

def factiorial(x)

	1 if x == 0 || x == 1
	result = 1
	number.downto(1) { |n| result *= n}
	result

end