class Timer
	attr_accessor :timer

	# def initialize(seconds)
	# end

	def seconds (seconds = 0)
		@seconds = seconds
	end

	def seconds= (seconds = 0)
		@seconds = seconds
		@minutes = 0
		@hours = 0
		# @minutes = "00"
		if @seconds > 59
			@minutes = seconds / 60
			@seconds %= 60
		end
		
		# @hours = "00"
		if @minutes > 59
			@hours = @minutes / 60
			@minutes %= 60
		end

		@seconds = padded(@seconds)
		@minutes = padded(@minutes)
		@hours = padded(@hours)
	end

	def time_string
		"#{@hours}:#{@minutes}:#{@seconds}"
	end

	def padded(num)
		num.to_s.length > 1 ? num = num.to_s : num = "0" +num.to_s
	end
end

# new_timer = Timer.new

# new_timer.seconds = 4000

# puts new_timer.time_string