def measure(cycles = 1)
	# to comput the average we need the run times
	run_times = []

	cycles.times do 
		start_time = Time.now
		yield # actually run the code 
		end_time = Time.now
		run_times << end_time - start_time
	end

	# we need to return the average so we reduce the run_times array
	# then divide by the length
	run_times.reduce{|a,b| a + b}.to_f / run_times.length
end