def measure(number = 1, &block)
	time = Time.now
	number.times do
		block.call
	end
	time2 = Time.now
	return (time2 - time) / number
end