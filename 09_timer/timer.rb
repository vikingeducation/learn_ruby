# Timer

class Timer

	# read & write access
	attr_accessor :seconds

	# constructor
	def initialize
		@seconds = 0
	end

	# display seconds & string
	def time_string
		# initialize 
		seconds_copy = @seconds
		time = [0,0,0] # [hours, mins, secs]

		# reduce seconds_copy iteratively to get hour/min/sec count
		while seconds_copy > 3600
			time[0] += 1
			seconds_copy -= 3600
		end
		while seconds_copy > 60
			time[1] += 1
			seconds_copy -= 60
		end
		time[2] = seconds_copy 

		# use hash to build string 
		time_str = ""
		time.each_with_index do |value, location| # hour value, then minute value, then second value
			time_str += padded(value)
			time_str += ":" unless location == time.length - 1
		end
		time_str
	end

	# pads single-digit numbers for time_string
	def padded(num)
		num < 10 ? "0" + num.to_s : num.to_s
	end

end

t = Timer.new
puts t.seconds