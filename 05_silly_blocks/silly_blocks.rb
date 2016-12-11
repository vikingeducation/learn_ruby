def reverser
	str = yield
	str_arr = str.split(" ")
	str_arr.each do |string|
		string.reverse!
	end
	new_arr = []
	str_arr.size.times do |index|
		new_arr << str_arr[index]
		new_arr << " "
	end
	new_arr.join.strip
end

def adder (num = 1)
	value = yield
	value += num
end

def repeater (num = 1)
	num.times {yield}
end