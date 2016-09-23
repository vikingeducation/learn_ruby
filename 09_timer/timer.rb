class Timer

  def seconds(time = 0)
    @timer = time
  end

  def seconds=(time = 0)
    @timer = time
  end

  def time_string
    t = Time.new(2002, 10, 31, 0, 0, 0)
    tnew = t + @timer
    return tnew.strftime("%H:%M:%S")
  end
end