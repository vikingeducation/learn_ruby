def add(num1, num2)
	num1 + num2
end

def subtract(num1, num2)
	num1 - num2
end

def sum(arr)
	sum = 0
	return sum if arr.empty? == true 
	arr.each do |i|
		sum += i
	end
	sum
end

def multiply(arr)
	sum = 1
	arr.each do |i|
		sum *= i
	end
	sum
end