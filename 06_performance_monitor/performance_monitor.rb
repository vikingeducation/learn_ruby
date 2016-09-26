def measure(n=1)
	total = 0
	n.times do
		start_time = Time.now
		yield
		end_time = Time.now
		total += end_time - start_time
	end
	total / n
end