class Timer
	attr_accessor :seconds

	def initialize
		@seconds = 0
	end

	def pad(string)
		if string.to_s.length == 1
			string = "0#{string}" 
		else
			string
		end
	end

	def time_string
		second_string = pad(seconds % 60).to_s
		minute_string = pad(seconds % 3600 / 60).to_s
		hour_string = pad(seconds / 3600).to_s

		hour_string + ":" + minute_string + ":" + second_string
	end
end