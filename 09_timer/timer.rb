class Timer
  attr_accessor :seconds
  def initialize
    @seconds = 0
  end

  def time_string
    hours, @seconds = @seconds/3600, @seconds%3600
    minutes, @seconds = @seconds/60, @seconds%60
    "#{pad(hours)}:#{pad(minutes)}:#{pad(@seconds)}"
  end

  def pad num
    num > 9 ? num : "0" + num.to_s
  end
end
