def measure(n = 1)
	t = Time.now
	n.times { yield }

	(Time.now - t)/n
end