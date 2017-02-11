class Timer
  attr_accessor :seconds

  def initialize
    @seconds = 0
  end

  def pre_zero(int)
    if int.to_s.length == 1
      "0#{int}"
    else
      int.to_s
    end
  end

  def time_string
    seconds_left = seconds % 60
    minutes_left = (seconds/60) % 60
    hour = (seconds/60) / 60
    "#{pre_zero(hour)}:#{pre_zero(minutes_left)}:#{pre_zero(seconds_left)}"
  end
end
