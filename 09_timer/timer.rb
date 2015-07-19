class Timer
  
  def initialize()
    @seconds = 0
    @time_string = ""
  end
  
  def seconds
    @seconds
  end
  
  def seconds=(number)
    @seconds = number
  end
  
  def time_string
    hours = (@seconds/3600).round
    minutes = ((@seconds-hours*3600)/60).round
    second = @seconds - hours*3600 - minutes*60
    @time_string = "%02d:%02d:%02d" % [hours,minutes,second]
  end
end