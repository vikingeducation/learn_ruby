class Timer
  def initialize
    @seconds = 0
  end

  def seconds=(seconds)
    @seconds = seconds
  end

  def seconds
    @seconds
  end

  def time_string
    hours   = padded(@seconds / 3600)
    minutes = padded((@seconds % 3600) / 60)
    seconds = padded((@seconds % 3600) % 60)
    "#{hours}:#{minutes}:#{seconds}"
  end

  def padded(str_to_pad)
    if str_to_pad.to_s.length == 2
      str_to_pad.to_s
    else
      "0" + str_to_pad.to_s
    end
  end
end
