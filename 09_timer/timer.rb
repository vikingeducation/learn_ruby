# timer.rb

require 'time'


# class for Timer created
class Timer

	# allow access to :timer and :seconds
	attr_accessor :timer
	attr_accessor :seconds


	# create instance vars for timer and seconds
	def initialize

		@timer = timer
		@seconds = seconds


	end


	# timer set to 0 seconds
	def seconds

		@timer = 0

	end



	# output for the number of seconds
	def time_string

		# converts the seconds to TIME to allow formatting using #strftime
    Time.at(@seconds).utc.strftime("%H:%M:%S")

	end


end
