def measure (repetitions = 1)
	start_time = Time.now
	repetitions.times { yield }
	end_time = Time.now
	elapsed_time = end_time - start_time
	average_time = elapsed_time / repetitions
end