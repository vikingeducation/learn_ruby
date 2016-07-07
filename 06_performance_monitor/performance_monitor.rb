def measure(times=1)
	speeds = []
	
	times.times do
		start = Time.now
		yield
		finish = Time.now
		speeds << finish - start
	end

	speeds.reduce(:+) / times
end 