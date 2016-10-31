class Timer
  def initialize
    @seconds = 0
  end
  def seconds=(seconds=0)
    @seconds = seconds
  end
  def seconds
    @seconds
  end
  def time_string
    minutes = @seconds / 60
    seconds = @seconds % 60
    hours = minutes / 60
    minutes = minutes % 60
    "#{format_time_division(hours)}:#{format_time_division(minutes)}:#{format_time_division(seconds)}"
  end
  def format_time_division(number)
    number.to_s.rjust(2, '0')
  end
end
