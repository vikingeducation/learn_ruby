def measure(n = 1)
	final = []
	n.times do 
		start = Time.now
		yield
		final.push Time.now - start
	end
	final.reduce(:+)/n
end