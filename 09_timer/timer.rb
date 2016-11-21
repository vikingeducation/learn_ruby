class Timer
  attr_accessor :seconds

  def initialize
    @seconds = 0
  end

  def time_string
    hrs = @seconds / 3600
    mins = @seconds % 3600 / 60
    secs = @seconds % 3600 % 60
    "#{padded(hrs) + ':' + padded(mins) + ':' + padded(secs)}"
  end

  def padded(num)
    num.to_s.rjust(2, "0")
  end
end
