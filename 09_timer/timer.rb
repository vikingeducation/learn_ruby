class Timer 
	attr_accessor :seconds

	def seconds
		@seconds = 0
	end

	def seconds= (val)
		@seconds = val
	end

	def time_string
			mins = @seconds / 60
			hours = mins / 60
			secs = @seconds - (mins * 60) #works bc integer division
			secs = 0 if secs < 0
			mins = mins - (hours * 60) 
			secs = "0#{secs}" if secs < 10
			mins = "0#{mins}" if mins < 10
			hours = "0#{hours}" if hours < 10
			"#{hours}:#{mins}:#{secs}"
	end
end


