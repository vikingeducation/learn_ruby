class Timer
  def seconds
    @seconds || 0
  end

  def seconds=(value)
    @seconds = value
  end

  def time_string
    Time.at(seconds).utc.strftime("%H:%M:%S")
  end

end


@timer = Timer.new
@timer.seconds = 12

puts @timer.time_string