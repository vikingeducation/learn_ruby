def add(a, b)
	a + b
end

def subtract(a, b)
	a - b
end

def sum arr
	arr.inject (0) {|a, b| a + b}
end

def multiply (*nums)
	nums.reduce(:*)
end

def power(a, b)
	a ** b
end

def factorial (num)
	num.downto(1).reduce(1) {|tracker, each| each * tracker}
end