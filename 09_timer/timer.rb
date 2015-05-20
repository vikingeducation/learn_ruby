class Timer
	attr_accessor :seconds
	def initialize
		@seconds = 0
		#@time_string = "00:00:00"
	end

	def time_string
		counter = @seconds

		hours = (counter / (60*60)).to_s.rjust(2, '0')
		counter = counter % (60*60)

		mins = (counter / 60).to_s.rjust(2, '0')
		secs = (counter % 60).to_s.rjust(2, '0')

		hours + ':' + mins + ':' + secs
	end

end