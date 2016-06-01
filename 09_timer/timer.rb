class Timer
	def seconds
		0
	end

	def seconds=(num)
		@timer = num
	end

	#You could create an array with three strings,
	#representing hours, minutes, and seconds,
	#then use join.(':') to join them together
	def convert(units)
		if units < 10
			"0#{units}" 
		else
			"#{units}"
		end
	end


	def time_string
		time = ["00", "00", "00"]
		mins = 0
		hours = 0

		while @timer > 3600
			@timer -= 3600
			hours += 1
		end

		while @timer > 60
			@timer -= 60
			mins += 1
		end

		hours = convert(hours)
		mins = convert(mins)
		secs = convert(@timer)

		time[0] = hours if hours.to_i > 0
		time[1] = mins if mins.to_i > 0
		time[2] = secs
		time.join(":")
	end
end