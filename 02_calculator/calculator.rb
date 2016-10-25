# add
def add(a,b)
	a + b
end

# subtact
def subtract(a,b)
	a - b
end

# sum 
def sum(arr)
	return 0 if arr.length == 0
	return arr[0] if arr.length == 1
	arr.reduce { |prev, curr| prev + curr }
end

# multiply 
def mult(*args)
	return false if args.length < 2
	args.reduce { |prev, curr| prev * curr }
end

# power 
def pow(a,b)
	return 1 if b == 0
	result = a
	(b.abs-1).times do
		result *= a
	end
	b > 0 ? result : 1.0/result
end

# factorial 
def fac(num)
	return 1 if num < 2
	num * fac(num-1)
end