def measure
	time1 = time.now
	yield
	time2 = time.now
	elapsed_time = (time2-time1)
end