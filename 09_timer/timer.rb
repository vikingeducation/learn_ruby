class Timer
	attr_accessor :seconds 

	def initialize(seconds=0)
		@seconds = seconds
	end

	def time_string
		hours = 0
		minutes = 0
		temp_seconds = @seconds # I really only need this if there are hours involved
		final_seconds = 0
		final = ""

		# this means there are only seconds no minutes
		if @seconds/60.0 <= 1
			final_seconds = @seconds

		# now there are seconds in the order of hours
		elsif @seconds/60.0 > 60
			hours = ((@seconds/60.0)/60.0).floor
			temp_seconds -= hours * 60 * 60 # remove the hour seconds

			# there are also minutes here. subtract the seconds from the hours
			# then see if there are minutes again.
			if(temp_seconds/60.0) > 1
				minutes = (temp_seconds/60.0).floor
				final_seconds = temp_seconds%60
			else
				final_seconds = temp_seconds
			end

		# here there are seconds in the order of minutes
		elsif @seconds/60.0 > 1
			minutes = (@seconds/60.0).floor
			final_seconds = @seconds%60
		end

		# cleaning things up. if the element is only one digit then add a 0 
		# to the end and reverse it. Otherwise just add it to final string
		[hours,minutes,final_seconds].each do |element|
			element = element.to_s
			if element.length < 2
				element << "0"
				final << element.reverse + ":"
			else
				final << element + ":"
			end
		end
		final.chomp(":")
	end
end