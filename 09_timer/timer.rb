class Timer
  def initialize
    @seconds = 0
  end

  attr_reader :seconds

  def seconds=(seconds)
      @seconds = seconds
  end

  def time_string
    hours = @seconds / 3600
    mins = (@seconds % 3600) / 60
    secs = (@seconds % 3600) % 60
    format("%02d:%02d:%02d", hours, mins, secs)

  end

end
