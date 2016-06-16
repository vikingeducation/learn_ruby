class Timer
  attr_accessor :seconds

  def initialize
    @seconds = 0
  end

  def seconds=(seconds)
    @seconds = seconds
  end

  def time_string
    Time.at(@seconds).utc.strftime("%H:%M:%S")
  end
end

