class Timer
  def seconds
    @seconds ||= 0
  end

  def seconds=(time = 0)
    # binding.pry
    @seconds = time
  end

  def padded num
    num.to_s.rjust(2, "0")
  end

  def time_string
    hour = @seconds / 3600
    min  = (@seconds - hour * 3600) / 60
    s    = @seconds - hour * 3600 - min * 60
    "#{padded hour}:#{padded min}:#{padded s}"
  end
end
