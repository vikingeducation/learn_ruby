class Timer
  attr_accessor :seconds

  def initialize
    @seconds = 0
    @time_string = "00:00:00"
  end

  def seconds
    return @seconds
  end

  def seconds=(val)
    @seconds = val.to_i
    calc_time_string
  end

  def time_string
    return @time_string
  end

  # Whenever the seconds are set, we'll set the time_string appropriately.
  def calc_time_string
    seconds = @seconds
    minutes = 0
    hours = 0

    while seconds > 60
      minutes += (seconds / 60)
      seconds = seconds % 60
    end

    while minutes > 60
      hours += (minutes / 60)
      minutes = minutes % 60
    end

    @time_string = "%02d:%02d:%02d" % [hours.to_i, minutes.to_i, seconds.to_i]
  end

end