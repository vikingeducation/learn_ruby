class Timer

  def initialize
    @seconds = 0
 
  end

  def seconds
    @seconds
  end


  def seconds=(value)
    @seconds = value
  end

  def time_string
    hours = @seconds / 3600
    minutes = (@seconds - (hours * 3600)) / 60
    @seconds = @seconds - (hours * 3600) - (minutes * 60)
    padded(hours) + ":" + padded(minutes) + ":" + padded(seconds)
  end

  def padded(num)
    num < 10 ? "0#{num}" : "#{num}"
     
  end
end