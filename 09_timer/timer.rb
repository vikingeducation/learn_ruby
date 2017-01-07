class Timer
  attr_accessor :seconds
  def initialize
    @seconds = 0
  end

  def time_string
    hours = @seconds / (60*60)
    reminder = @seconds  % (60*60)
    sprintf("%02d:%02d:%02d", hours, reminder/60, @seconds%60)
  end
end