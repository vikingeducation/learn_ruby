class Timer
  attr_accessor :seconds
  def initialize
    @seconds = 0
  end
  def time_string
    "#{padded(hours)}:#{padded(minutes)}:#{padded(seconds)}"
  end
  def seconds
    seconds = @seconds % 60
  end
  def minutes
    minutes = ( @seconds - ( hours * 3600 )) / 60
  end
  def hours
    hours = @seconds / 3600
  end
  def padded(value)
    value = value.to_s
    digits = value.length
    if digits == 0
      "00"
    elsif digits == 1
      "0" + value
    else
      value
    end
  end
end