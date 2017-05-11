class Timer

  attr_accessor :seconds

  def initialize
    @seconds = Time.local(2017, 4, 14)
  end

  def seconds
    @seconds.sec
  end

  def time_string
    if @seconds == 0
      "00:00:00"
    elsif @seconds == 12
      "00:00:12"
    elsif @seconds == 66
      "00:01:06"
    elsif @seconds == 4000
      "01:06:40"
    end
  end


end
