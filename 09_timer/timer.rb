class Timer
	attr_accessor :seconds

	def initialize
		@seconds = 0
	end

	def time_string

		hours = (@seconds / 3600.0).floor
		minutes = ((@seconds - (hours*3600)) / 60.0).floor
		seconds = @seconds % 60

		hours = hours.to_s
		minutes = minutes.to_s
		seconds = seconds.to_s

		if hours.length != 2
			hours = "0#{hours}"
		end
		if minutes.length != 2
			minutes = "0#{minutes}"
		end
		if seconds.length != 2
			seconds = "0#{seconds}"
		end

		return "#{hours}:#{minutes}:#{seconds}"
	end
end