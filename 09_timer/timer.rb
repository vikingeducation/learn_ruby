class Timer
  attr_accessor :seconds
  
  def initialize(seconds = 0)
  @seconds = seconds
  end

  def time_string
  "#{padded(hours)}:#{padded(minutes)}:#{padded(seconds_formatted)}"
  end

  def padded(to_pad)
  to_pad = to_pad.to_s
    
  if to_pad.to_s.length == 1
    to_pad.insert(0, "0")
    to_pad
  else
    to_pad
  end

  end


  private

  def hours 
  seconds / 3600
  end

  def minutes
    if seconds/60 < 60
    seconds / 60
    else
    (seconds/60) % 60
    end
  end

  def seconds_formatted
  if seconds < 60
    seconds
  else
    seconds % 60
  end
  end

  



end