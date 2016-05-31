def measure(n = 1)
	start = Time.now if n == 1 
	n.times do 
		yield
	end
	Time.now - start if n == 1
end