class Timer 
  attr_accessor :seconds
  
  def seconds 
    @seconds = 0
  end

  def time_string
    seconds = @seconds
    minutes = seconds / 60
    seconds = seconds - minutes * 60
    hours = minutes / 60
    minutes = minutes - hours * 60

  

  "#{sprintf("%02d", hours)}:#{sprintf("%02d", minutes)}:#{sprintf("%02d", seconds)}"
  end 
end