def measure(n=1)
	benchmarks = []
	n.times do
		before = Time.now
		yield
		benchmarks << Time.now - before
	end
	benchmarks.reduce(:+) / n
end