class Timer
  attr_accessor :seconds
  def initialize
    @seconds = 0
  end

  def time_string
    "#{padded(hours)}:#{padded(minutes)}:#{padded(remainder_seconds)}"
  end

  def hours
    seconds / 3600
  end

  def minutes
    (seconds % 3600)/60
  end

  def remainder_seconds
    (seconds % 60)
  end

  def padded(number)
    "#{number}".rjust(2, '0')
  end
end