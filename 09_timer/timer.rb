require 'timer'
require 'time'

class Timer

	attr_accessor :timer
	attr_accessor :seconds


	def initialize

		@timer = timer
		@seconds = seconds


	end



	def seconds
		@timer = 0
	end




	def time_string

    Time.at(@seconds).utc.strftime("%H:%M:%S")


	end


end
