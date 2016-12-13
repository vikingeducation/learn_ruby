#write your code here
def add first_num, second_num
	result = first_num + second_num
end

def subtract first_num, second_num
	result = first_num - second_num
end

def sum array
	result = 0;
	array.length.times do |i|
		result = result + array[i]
	end
	result
end

def multiply first_num, second_num
	result = first_num * second_num
end

def multiply_arr array
	result = 1;
	array.length.times do |i|
		result = result * array[i]
	end
	result
end

def power first_num, second_num
	result = first_num
	(second_num - 1).times do
		result = result * first_num
	end
	result
end

def fact number
	result = 1
	number.times do |i|
		result = result * (i + 1)
	end
	if(number == 0)
		0
	else
		result
	end
end

