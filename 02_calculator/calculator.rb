def add (num1,num2)
	return num1 + num2
end

def subtract(num1,num2)
	return num1 -num2
end

def sum(num)
	holder = 0
	if num.length == 0
		return holder
	else
		num.each do |number|
			holder += number
		end
		return holder
	end
end

def multiply(num)
	holder = 1
	if num.length == 0
		return 0
	else
		num.each do |number|
			holder *= number
		end
		return holder
	end
end

def power(num1,num2)
	return num1**num2
end

def factorial(num)
	holder = num
	unless num == 0
		until num <= 2
			holder *= num-1
			num -= 1
		end
		return holder
	end
	else return 1
end