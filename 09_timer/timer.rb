class Timer
  attr_accessor :seconds

  def initialize(seconds = 0)
    @seconds = seconds
  end

  def time_string
    hours = padded((@seconds/3600).floor)
    minutes = padded((@seconds/60)%60)
    seconds = padded(@seconds%60)

    hours.to_s + ":" + minutes.to_s + ":" + seconds.to_s
  end

  def padded(num)
    if num < 10
      "0" + num.to_s
    else
      num.to_s
    end
  end

end