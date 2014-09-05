# 06. Performance Monitor

def measure(arg=1)

	start = Time.now	
	arg.times {yield}
	stop = Time.now - start
	avg_time = stop / arg
	
end