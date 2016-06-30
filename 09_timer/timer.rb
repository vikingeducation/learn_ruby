class Timer
  attr_accessor :seconds

  def initialize(seconds=0)
    @seconds = seconds
  end

  def seconds()
    @seconds 
  end

  def time_string()
    sec = @seconds.to_i
    hr = sec / 3600 
    sec = sec - hr * 3600
    min = sec / 60 
    sec = sec - min * 60

    return padded(hr) + ":" + padded(min) + ":" + padded(sec)
  end

  def padded(number)
    return number < 10 ? '0' + number.to_s : number.to_s
  end
end