class Timer
  #initialize the class
  def initialize
    @seconds = 0
    @time_string_array = %w(00 00 00) #Hours, minutes, and seconds will be set into this variable
    @time_string = "" #This string will be combined from time_string_array
    
    #Minutes and hours are extracted from the seconds
    @minutes = "" #60 seconds per minute
    @hours = "" #3600 seconds per hour, 60 minutes per hour
  end

  #Getter and setter methods for seconds
  def seconds
    @seconds
  end

  def seconds=(set_seconds)
    @seconds = set_seconds
    set_time_string_array
  end

  #Getter and setter methods for time_string_array
  def time_string_array
    @time_string_array
  end
  def set_time_string_array
    @hours = (seconds/3600).to_s.rjust(2, "0")
    @minutes = ((seconds%3600)/60).to_s.rjust(2, "0")
    @seconds = (@seconds%3600%60).to_s.rjust(2, "0")
    time_string_array[0] = @hours
    time_string_array[1] = @minutes
    time_string_array[2] = @seconds
  end

  def time_string
    @time_string = time_string_array.join(":")
  end

end

puts "Working"
mytimer = Timer.new
mytimer.seconds = 0
puts mytimer.time_string
mytimer.seconds = 12
puts mytimer.time_string
mytimer.seconds = 66
puts mytimer.time_string 
mytimer.seconds = 4000
puts mytimer.time_string