class Timer

  def seconds
    @seconds
  end

  def seconds=(new_seconds)
    @seconds = new_seconds
  end

  def initialize
    @seconds = 0
  end

  def time_string
    Time.at(seconds).utc.strftime("%T")
  end
    
end