class Timer

  attr_accessor :seconds 

  def initialize
    @seconds = 0
  end

  def padded(n)
    if n < 9
      "0" + n.to_s
    else
      n.to_s
    end
  end

  def time_string
    hours = @seconds/3600
    minutes = (@seconds - hours*3600)/60 
    sec = @seconds - hours*3600 - minutes*60

    pad_hrs = padded(hours)
    pad_min = padded(minutes)
    pad_sec = padded(sec)

    return "#{pad_hrs}:#{pad_min}:#{pad_sec}"

  end

end