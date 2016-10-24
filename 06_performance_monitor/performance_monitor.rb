# Performance Monitor

def measure(val=1)
	start_time = Time.now
	val.times { yield }
	(Time.now - start_time) / val.to_f
end