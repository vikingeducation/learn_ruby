class Timer
	attr_accessor :hours, :minutes, :seconds

	def initialize
		@hours = 0
		@minutes = 0
		@seconds = 0

	end

	def seconds=(num)
		while num >= 60 do
			@minutes +=1
			num -= 60
		end
		while @minutes >= 60 do
			@hours += 1
			@minutes -= 60
		end
		@seconds = num
	end

	def time_string
		string = ""
		string << "0" if @hours < 10
		string << @hours.to_s
		string << ":"
		string << "0" if @minutes < 10
		string << @minutes.to_s
		string << ":"
		string << "0" if @seconds < 10
		string << @seconds.to_s
		string
	end
end