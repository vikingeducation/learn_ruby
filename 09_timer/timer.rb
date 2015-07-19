class Timer
	attr_accessor :seconds 

	def initialize
		@seconds = 0
	end

	def time_string
		temp_seconds = @seconds

		hours = temp_seconds / 3600
		if hours > 0
			temp_seconds -= hours * 60 * 60
		end

		minutes = temp_seconds / 60
		if minutes > 0
			temp_seconds -= minutes * 60
		end

		time_array = [hours,minutes,temp_seconds]
		final_array = time_array.map do |element|
			# I saw this in dan berger's answer 
			# "%02d" % interval
			# not entirely sure what that does, can you explain?
			# https://github.com/dsberger/learn_ruby/commit/17dc10d65ff43bb58d1ae53df947d2ad12b23ede

			element = element.to_s
			if element.length < 2
				element << "0"
				element.reverse
			else
				element
			end
		end
		final_array.join(":")
	end
end