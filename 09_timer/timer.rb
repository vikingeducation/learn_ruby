class Timer
	def initialize
		@seconds=0
	end

    def seconds=(init_seconds)
    	@seconds = init_seconds
    end
    	
	def seconds
		@seconds
	end

	def	time_string
		secs = @seconds % 60
		in_mins = @seconds / 60
		hrs  = in_mins/60
		mins = in_mins%60

		hrs  = hrs < 10 ? "0#{hrs.to_s}" : hrs.to_s	
		mins = mins < 10 ? "0#{mins.to_s}" : mins.to_s
		secs = secs < 10 ? "0#{secs.to_s}" : secs.to_s
		str = "#{hrs}:#{mins}:#{secs}"
	end		
end		
