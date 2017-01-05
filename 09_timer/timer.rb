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
    [@seconds / 3600, @seconds / 60 % 60, @seconds % 60].map { |t| t.to_s.rjust(2, '0') }.join(':')
  end
end