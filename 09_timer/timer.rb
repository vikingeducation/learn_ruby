class Timer

	def seconds
		@count = 0
	end

	def seconds= seconds
		@count = seconds
	end

	def time_string
		t = Time.at(@count).utc
		t.strftime("%H:%M:%S")
	end

end