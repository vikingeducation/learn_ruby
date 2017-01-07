def add a, b
	a + b
end


def subtract a, b
	a - b
end


def sum arr
	arr.reduce(0) {|total, i| total + i}
end


def multiply arr
	arr.reduce {|total, i| total * i}
end


def power a, b
	a ** b
end


def factorial number
	result = 1
	if number > 0
		(1..number).each do |i|
			result *= i
		end
	end
	result
end