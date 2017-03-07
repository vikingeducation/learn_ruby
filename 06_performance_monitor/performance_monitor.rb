def measure(num=1)
	start = Time.now
	num.times {yield}
	finish = Time.now
	result = (finish-start) / num
	return result
end