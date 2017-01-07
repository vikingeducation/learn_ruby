def measure(num_times = 1)
	time_start = Time.now
	num_times.times{yield}
	return time_elapsed = Time.now - time_start if num_times == 1
	time_avg = (Time.now - time_start)/num_times
end