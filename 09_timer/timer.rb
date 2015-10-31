class Timer
  def initialize
    @seconds = 0
  end

  def seconds=(seconds)
    @seconds = seconds
  end

  def seconds
    return @seconds
  end

  def time_string
    hours = (( @seconds / 60 ) / 60)
    if hours < 10
      hours = "0#{hours}"
    end

    minutes = (( @seconds / 60 ) % 60)
    if minutes < 10
      minutes = "0#{minutes}"
    end

    seconds = (( @seconds % 60 ) % 60)
    if seconds < 10
      seconds = "0#{seconds}"
    end

    return "#{hours}:#{minutes}:#{seconds}"
  end
end