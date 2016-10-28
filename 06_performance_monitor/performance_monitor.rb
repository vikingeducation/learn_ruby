def measure(n=1)
	start = Time.now
	n.times do
		yield
	end
	(Time.now - start) / n
end