def add(a, b)
	a + b
end

def subtract(a, b)
	a - b
end

def sum(nums)
	#puts nums
	nums.inject(0) {|sum, num| sum + num}
end