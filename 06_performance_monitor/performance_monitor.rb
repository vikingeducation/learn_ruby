def measure(times_to_run=1)

	start_time = Time.now
	
	times_to_run.times { yield }
	
	end_time = Time.now

	elapsed_time = end_time - start_time
	average_time = elapsed_time / times_to_run

	average_time

end



measure(4) { |e| puts e }