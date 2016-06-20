class Timer
attr_accessor :seconds

  def initialize
    @seconds=0
  end

  def padded(time)
    if time<9
      "0"+time.to_s
    else
      time.to_s
    end
  end

  def time_string
    hours=@seconds/3600
    minutes=(@seconds%3600)/60
    seconds=(@seconds%3600)%60
    padded(hours)+":"+padded(minutes)+":"+padded(seconds)
  end

end