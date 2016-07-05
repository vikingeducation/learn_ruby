class Timer
	def initialize
		@seconds = 0
		@minutes = 0
		@hours = 0
	end

	def seconds=(amount)
		@seconds = amount
	end

	def seconds
		@seconds
	end

	def time_string
		until @seconds < 60
			@seconds -= 60
			@minutes += 1
		end
		until @minutes < 60
			@minutes -= 60
			@hours += 1
		end
		Time.new(1,1,1,@hours,@minutes,@seconds).strftime("%T")
	end
end