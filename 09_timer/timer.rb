class Timer

  def initialize(seconds=0)
    @seconds = seconds
    
  end

  def seconds
    @seconds
    #time_string = Time.at(@seconds).utc.strftime("%H:%M:%S")
  end

  def seconds=(seconds)
    @seconds = seconds
  end

  def time_string
    #t = seconds
    t = Time.at(@seconds).utc.strftime("%H:%M:%S")
  end

end

#timer = Timer.new(0)
#timer.time_string(0)