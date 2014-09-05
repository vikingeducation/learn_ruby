# 09. Timer

class Timer

	attr_accessor :seconds

	def initialize
		@seconds = 0
	end

	def time_string
		hours = seconds / 3600
		minutes = (seconds % 3600) / 60
		remaining_seconds = (seconds % 3600) % 60
		# Using string formatting
		# "%02d:%02d:%02d" % [hours, minutes, remaining_seconds]

		"#{padded(hours)}:#{padded(minutes)}:#{padded(remaining_seconds)}"
	end

	def padded(arg)
		if arg.to_s.size == 1
			"0#{arg}"
		else
			"#{arg}"
		end
	end

end