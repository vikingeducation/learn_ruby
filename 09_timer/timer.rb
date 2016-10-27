class Timer
  def initialize
    self.seconds=(0)
  end
  def seconds=(seconds)
    @seconds = seconds
    @time_string = Time.at(seconds).utc.strftime("%H:%M:%S")
  end
  def seconds
    @seconds
  end
  def time_string
    @time_string
  end
end