def reverser
	str = yield
	result = []
	str.split(" ").map! {|word| word.reverse!}.join(" ")
end

def adder add_number = 1
	number = yield
	number += add_number
end

def repeater number_of_time = 1
	number_of_time.times {yield}
end