class Timer
  def initialize()
    @seconds = 0
  end

  def seconds=(seconds)
    @seconds = seconds
  end

  def seconds()
    @seconds
  end
  
  def time_string
    h = @seconds / 3600
    if @seconds > 3600
      @seconds -= 3600
    end
    m = seconds / 60
    s = seconds % 60
    t = Time.new(2016, 3, 7, h, m, s)
    t.strftime "%H:%M:%S"
  end
end