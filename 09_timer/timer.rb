class Timer
  
  def initialize 
    @seconds = 0
    @minutes = 0
    @hours   = 0
  end
  
  def seconds
    @seconds
  end
  
  def seconds=(seconds)
    @seconds = seconds
  end
  
  def seconds_to_minutes_hours
    
    while @seconds >= 60
      if (@seconds - 3600 > 0)
        @hours += 1
        @seconds -= 3600
        
      elsif (@seconds - 60 > 0)
        @minutes += 1
        @seconds -= 60
      end
    end
    
  end
  
  def time_string
    
    seconds_to_minutes_hours
    
    #INT TO STRING CONVERSIONS
    @sec_str = @seconds.to_s
    @min_str = @minutes.to_s
    @hour_str = @hours.to_s
    
    @sec_str = '0' + @sec_str if @seconds < 10
    @min_str = '0' + @min_str if @minutes < 10
    @hour_str = '0' + @hour_str if @hours < 10
    
    
    "#{@hour_str}:#{@min_str}:#{@sec_str}"
    
  end
  
end #CLASS END