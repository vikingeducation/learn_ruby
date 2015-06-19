class Timer
  def seconds
    @seconds = 0
  end

  def seconds=(new_seconds)
    @seconds = new_seconds
  end

  def time_string
    seconds = @seconds
    minutes = seconds / 60
    seconds -= 60 * minutes
    hours = minutes / 60
    minutes -= 60 * hours
    "#{sprintf("%02d", hours)}:#{sprintf("%02d", minutes)}:#{sprintf("%02d", seconds)}"
  end
end