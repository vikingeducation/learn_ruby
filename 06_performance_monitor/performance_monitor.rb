def measure(num = 1)
	cur_time = Time.now
	all_times = []
	num.times {
		cur_time = Time.now
		yield
		after_time = Time.now
		all_times << after_time - cur_time
	}
	all_times.inject(0) { |sum, el| sum + el } / all_times.size
end