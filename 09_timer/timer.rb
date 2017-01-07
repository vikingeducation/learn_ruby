class Timer

	def seconds=(time)
		@seconds = time
	end

	def seconds
		@seconds
	end

	def initialize
		@seconds = 0
	end

	def time_string
		hour = @seconds/3600
		minute = (@seconds - (3600*hour))/60
		second = (@seconds - (3600*hour))%60
		"#{padded(hour)}:#{padded(minute)}:#{padded(second)}"
	end

	def padded(number)
		single_digits = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
		if single_digits.include?(number) == true
			"0#{number}"
		else
			"#{number}"
		end
	end

end