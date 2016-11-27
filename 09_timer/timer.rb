class Timer
  def initialize
    @seconds = 0
  end

  def seconds
    @seconds
  end

  def seconds=(time)
    @seconds = time
  end

  def padding(time)
    if time < 10
      "0" + time.to_s
    else
      time.to_s
    end
  end

  def time_string
    hours = @seconds / 3600
    minutes = (@seconds - (hours * 3600)) / 60
    seconds = (@seconds - (hours * 3600) - (minutes * 60))
    padding(hours) + ":" + padding(minutes) + ":" + padding(seconds)
  end
end