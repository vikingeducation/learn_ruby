def measure(repeats = 1)
	t1 = Time.now
	repeats.times do
		yield
	end
	t2 = Time.now
	average_time = (t2 - t1)/repeats
end