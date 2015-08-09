class Timer
	attr_accessor :seconds
	
	def initialize
		@seconds = 0
	end

	def padded(n)
		(n.to_s.length == 1) ? "0#{n}" : "#{n}"
	end

	def time_string
		seconds = padded((@seconds % 60).to_s)
		minutes = padded((@seconds / 60 % 60).to_s)
		hours = padded((@seconds / (60 * 60)).to_s)
		"#{hours}:#{minutes}:#{seconds}"
	end
end