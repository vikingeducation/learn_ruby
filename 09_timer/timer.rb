class Timer
  attr_accessor :seconds

  def initialize
    @seconds = 0
  end

  def time_string
    @hours = 0
    @minutes = 0

    while @seconds >= 3600
      @hours += 1
      @seconds -= 3600
    end

    while @seconds >= 60
      @minutes += 1
      @seconds -= 60
    end
    return "#{"%02d" % @hours}:#{"%02d" % @minutes}:#{"%02d" % @seconds}"
  end

end