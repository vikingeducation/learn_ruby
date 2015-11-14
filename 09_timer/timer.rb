class Timer

	def seconds
		@seconds = 0
	end
	def seconds=num
		@seconds = num
	end

	def time_string
		display_time = []
		#calculate times
		times = [
				   (@seconds / 3600).to_s,
				   (@seconds % 3600 / 60).to_s,
				   (@seconds % 3600 % 60).to_s,
				]

		times.each do |time|
	        display_time << "0" + time if time.length < 2
	        display_time << time unless time.length < 2
	    end
		display_time.join(":")
	end
end