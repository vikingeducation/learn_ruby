class Timer
	attr_accessor :seconds
	def initialize
		@seconds = 0
	end

	def time_string
		hrs = @seconds/ 3600
		mins = @seconds % 3600 / 60
		secs = @seconds % 3600 % 60
		seconds = secs.to_s.rjust(2, "0")
		minutes = mins.to_s.rjust(2, "0")
		hours = hrs.to_s.rjust(2, "0")
		"#{hours}:#{minutes}:#{seconds}"
	end


end
