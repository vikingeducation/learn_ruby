class Timer
  #write your code here
  attr_accessor :hours, :minutes, :seconds, :time_string

  def initialize 
  	@seconds = 0
  	@hours = 0
  	@minutes = 0
  	@time_string = "00:00:00"
  end
  def seconds=(seconds)
  	@seconds = seconds
  	if(seconds > 3599)
  		@hours = seconds / 3600
  		@minutes = (seconds - (@hours * 3600)) / 60
  		@seconds = seconds - (@hours * 3600) - (@minutes * 60)
  	elsif(seconds > 59)
  		@seconds = seconds % 60
  		@minutes = seconds / 60
  		@hours = 0
  	else
  		@seconds = seconds
  		@hours = 0
  		@minutes = 0
  	end
  	second_string = "%0.2d" % [@seconds]
  	minute_string = "%0.2d" % [@minutes]
  	hour_string = "%0.2d" % [@hours]
  	@time_string = hour_string + ":" + minute_string + ":" + second_string
  end

end
