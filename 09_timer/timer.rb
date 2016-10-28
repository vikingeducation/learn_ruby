class Timer
	attr_accessor :seconds

	def initialize
		@seconds = 0
	end

	def time_string
		"#{padded(hours)}:#{padded(minutes)}:#{padded(seconds)}"
	end

	def hours
		hours = @seconds / 3600
	end

	def minutes
		minutes = (@seconds - hours * 3600) / 60
	end

	def seconds
		seconds = @seconds % 60
	end

	def padded(number)
		number = number.to_s
		digits = number.length
		if digits == 0
			"00"
		elsif digits == 1
			"0" + number
		else
			number
		end
	end
end